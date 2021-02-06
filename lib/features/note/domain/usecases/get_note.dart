import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/note.dart';
import '../repositories/note_repo.dart';

class GetNote implements UseCase<Note, int> {
  final NoteRepo noteRepo;

  GetNote(this.noteRepo);

  @override
  Future<Either<Failure, Note>> call(@required  noteId) async {
    return await noteRepo.getNote(noteId);
  }
}
