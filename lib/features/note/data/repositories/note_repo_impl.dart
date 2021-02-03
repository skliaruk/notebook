import 'package:dio/src/response.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import '../../../../core/platform/network_info.dart';
import '../datasources/note_local_datasource.dart';
import '../datasources/note_remote_datasource.dart';

import '../../domain/entities/note.dart';
import '../../../../core/error/failures.dart';
import '../../domain/repositories/note_repo.dart';

class NoteRepoImpl implements NoteRepo {
  final NoteRemoteDatasource remoteDataSource;
  final NoteLocalDatasource localDataSource;
  final NetworkInfo networkInfo;

  NoteRepoImpl(
      {@required this.remoteDataSource,
      @required this.localDataSource,
      @required this.networkInfo});

  @override
  Future<Either<Failure, Note>> createNote({String title, String content}) {
    // TODO: implement createNote
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Response>> deleteNote(int noteId) {
    // TODO: implement deleteNote
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Note>> getNote(int noteId) {
    // TODO: implement getNote
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Note>> updateNote(String title, String content) {
    // TODO: implement updateNote
    throw UnimplementedError();
  }
}
