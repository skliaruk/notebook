import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:matcher/matcher.dart';
import 'package:dio/dio.dart' as dio;
import 'package:notebook_stable/core/error/exceptions.dart';
import 'package:notebook_stable/features/note/data/datasources/note_remote_datasource.dart';
import 'package:notebook_stable/features/note/data/models/note_model.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockDioClient extends Mock implements dio.Dio {}

void main() {
  NoteRemoteDataSourceImpl dataSource;
  MockDioClient mockDioClient;

  void setUpMockDioClientSuccess200() {
    when(mockDioClient.get(any)).thenAnswer(
        (_) async => dio.Response(data: fixture('note.json'), statusCode: 200));
  }

  void setUpMockDioClientFailure404() {
    when(mockDioClient.get(any))
        .thenAnswer((_) async => dio.Response(data: 'Error', statusCode: 404));
  }

  setUp(() {
    mockDioClient = MockDioClient();
    dataSource = NoteRemoteDataSourceImpl(client: mockDioClient);
  });

  group('getNote', () {
    final tNoteId = 1;
    final tNoteModel = NoteModel.fromJson(json.decode(fixture('note.json')));
    test('should perform a GET request on a URL with number being the endpoint',
        () async {
      setUpMockDioClientSuccess200();

      dataSource.getNote(tNoteId);

      verify(mockDioClient.get(any));
    });

    test('should return NoteModel when response code is 200', () async {
      setUpMockDioClientSuccess200();

      final result = await dataSource.getNote(tNoteId);

      expect(result, equals(tNoteModel));
    });

    test('should throw ServerException when response code is not 200',
        () async {
      setUpMockDioClientFailure404();

      final call = dataSource.getNote;

      expect(() => call(tNoteId), throwsA(TypeMatcher<ServerException>()));
    });
  });
}
