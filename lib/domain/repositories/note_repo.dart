import 'package:dio/dio.dart';
import 'package:notebook_stable/data/models/note.dart';

abstract class NoteRepo {
  Future<Note> createNote({String title, String content});

  Future<Response> deleteNote(int noteId);

  Future<Note> updateNote(String title, String content);

  Future<Note> getNote(int noteId);
}
