import 'package:dio/dio.dart';
import 'package:notebook_stable/features/note/data/models/note_model.dart';

abstract class NoteRemoteDatasource {
  Future<NoteModel> createNote({String title, String content});

  Future<Response> deleteNote(int noteId);

  Future<NoteModel> updateNote(String title, String content);

  Future<NoteModel> getNote(int noteId);
}