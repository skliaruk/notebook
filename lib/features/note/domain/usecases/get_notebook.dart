import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/note.dart';
import '../repositories/note_repo.dart';

class GetNotebook implements UseCase<Stream<List<Note>>, String> {
  final NoteRepo? noteRepo;

  GetNotebook(this.noteRepo);

  Either<Failure, Stream<List<Note>>> get() => noteRepo!.getNotes();

  @override
  Future<Either<Failure, Stream<List<Note>>>> call(String params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
