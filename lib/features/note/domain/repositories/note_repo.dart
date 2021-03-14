import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/error/failures.dart';
import '../entities/note.dart';

abstract class NoteRepo {
  Future<Either<Failure, void>> createNote({required Note note});

  Future<Either<Failure, Response>> deleteNote(int noteId);

  Future<Either<Failure, Note>> updateNote(String title, String content);

  Future<Either<Failure, Note>> getNote(int noteId);

  Either<Failure, Stream<List<Note>>> getNotes();
}
