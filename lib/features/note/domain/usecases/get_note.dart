import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:notebook_stable/core/error/failures.dart';
import 'package:notebook_stable/domain/repositories/note_repo.dart';
import 'package:notebook_stable/features/note/domain/entities/note.dart';

class GetNote {
  final NoteRepo noteRepo;

  GetNote(this.noteRepo);

  Future<Either<Failure, Note>> execute({@required int noteId}) async {
    return await noteRepo.getNote(noteId);
  }
}
