import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:notebook_stable/core/error/failures.dart';
import 'package:notebook_stable/core/usecases/usecase.dart';
import 'package:notebook_stable/features/note/domain/entities/note.dart';
import 'package:notebook_stable/features/note/domain/repositories/note_repo.dart';

class GetNote implements UseCase<Note, int> {
  final NoteRepo noteRepo;

  GetNote(this.noteRepo);

  @override
  Future<Either<Failure, Note>> call(@required int noteId) async {
    return await noteRepo.getNote(noteId);
  }
}
