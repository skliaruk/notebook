import 'package:dio/dio.dart';
import 'package:dio/dio.dart' as dio;

import '../../../../core/error/exceptions.dart';
import '../models/note_model.dart';

abstract class NoteRemoteDataSource {
  Future<NoteModel> createNote({String? title, String? content});

  Future<Response> deleteNote(int noteId);

  Future<NoteModel> updateNote(String title, String content);

  Future<NoteModel> getNote(int noteId);
}

class NoteRemoteDataSourceImpl implements NoteRemoteDataSource {
  final dio.Dio? client;

  NoteRemoteDataSourceImpl({required this.client});
  @override
  Future<NoteModel> createNote({String? title, String? content}) async {
    final response = await client!.post<Map<String, dynamic>>(
      'URL TO UPDATE',
      data: {'title': title, 'body': content},
    );
    return NoteModel.fromJson(response.data!);
  }

  @override
  Future<Response> deleteNote(int noteId) {
    // TODO: implement deleteNote
    throw UnimplementedError();
  }

  @override
  Future<NoteModel> getNote(int noteId) async {
    final response = await client!.get<Map<String, dynamic>>(
      'http://jsonplaceholder.typicode.com/posts/$noteId',
    );

    if (response.statusCode == 200) {
      return NoteModel.fromJson(response.data!);
    } else {
      throw ServerException('Error');
    }
  }

  @override
  Future<NoteModel> updateNote(String title, String content) {
    // TODO: implement updateNote
    throw UnimplementedError();
  }
}
