import '../../features/note/domain/entities/note.dart';

abstract class NotebookRepo {
  Future<List<Note>> getAllNotes();
}
