import 'package:dartz/dartz.dart';
import 'package:dio/src/response.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/note.dart';
import '../../domain/repositories/note_repo.dart';
import '../datasources/note_local_datasource.dart';
import '../datasources/note_remote_datasource.dart';

class NoteRepoImpl implements NoteRepo {
  final NoteRemoteDataSource? remoteDataSource;
  final NoteLocalDataSource? localDataSource;
  final NetworkInfo? networkInfo;

  NoteRepoImpl(
      {required this.remoteDataSource,
      required this.localDataSource,
      required this.networkInfo});

  @override
  Future<Either<Failure, Note>> createNote({String? title, String? content}) {
    // TODO: implement createNote
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Response>> deleteNote(int noteId) {
    // TODO: implement deleteNote
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Note>> getNote(int noteId) async {
    if (await networkInfo!.isConnected) {
      try {
        final remoteNote = await remoteDataSource!.getNote(noteId);
        localDataSource!.cacheNote(remoteNote);
        return Right(remoteNote);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localNote = await localDataSource!.getLastNote();
        return Right(localNote);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, Note>> updateNote(String title, String content) {
    // TODO: implement updateNote
    throw UnimplementedError();
  }
}
