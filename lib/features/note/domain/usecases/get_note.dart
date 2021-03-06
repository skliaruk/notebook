import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/note.dart';
import '../repositories/note_repo.dart';

class GetNote implements UseCase<Note, int> {
  final NoteRepo? noteRepo;

  GetNote(this.noteRepo);

  @override
  Future<Either<Failure, Note>> call(int noteId) async =>
      await noteRepo!.getNote(noteId);
}
