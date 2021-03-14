import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dio/src/response.dart';
import 'package:notebook_stable/features/note/data/models/note_model.dart';
import 'package:notebook_stable/services/api_path.dart';

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
  final String uid;

  NoteRepoImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
    required this.uid,
  });

  @override
  Future<Either<Failure, void>> createNote({required Note note}) async {
    try {
      return Right(await _setData(
        path: APIPath.note(uid, 'note'),
        data: (note as NoteModel).toJson(),
      ));
    } on FirebaseException {
      return Left(ServerFailure());
    }
  }

  Future<void> _setData(
      {required String path, required Map<String, dynamic> data}) async {
    final reference = FirebaseFirestore.instance.doc(path);
    await reference.set(data);
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

  @override
  Either<Failure, Stream<List<Note>>> getNotes() {
    try {
      final path = APIPath.notes(uid);
      final reference = FirebaseFirestore.instance.collection(path);
      final snapshots = reference.snapshots();

      final result = snapshots.map((snapshot) => snapshot.docs.map((e) {
            final data = e.data();
            return NoteModel.fromJson(data!);
          }).toList());
      return Right(result);
    } on FirebaseException {
      return Left(ServerFailure());
    }
  }
}
