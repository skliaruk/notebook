import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:notebook_stable/core/error/exceptions.dart';
import 'package:notebook_stable/features/note/data/datasources/note_local_datasource.dart';
import 'package:notebook_stable/features/note/data/models/note_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:matcher/matcher.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  NoteLocalDataSourceImpl dataSource;
  MockSharedPreferences mockSharedPreferences;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    dataSource =
        NoteLocalDataSourceImpl(sharedPreferences: mockSharedPreferences);
  });

  group('getLastNote', () {
    final tNoteModel = NoteModel.fromJson(
        json.decode(fixture('note_cached.json')) as Map<String, dynamic>);
    test(
        'should return NoteModel from SharedPreferences when there is one in the cache',
        () async {
      when(mockSharedPreferences.getString(any))
          .thenReturn(fixture('note_cached.json'));

      final result = await dataSource.getLastNote();

      verify(mockSharedPreferences.getString(CACHED_NOTE));
      expect(result, equals(tNoteModel));
    });

    test(
        'should return CacheException from SharedPreferences when nothing is cached',
        () async {
      when(mockSharedPreferences.getString(any)).thenReturn(null);

      final call = dataSource.getLastNote;

      expect(() => call(), throwsA(TypeMatcher<CacheException>()));
    });
  });

  group('cacheNote', () {
    final NoteModel tNoteModel =
        NoteModel(title: 'Title', body: 'Content text');
    test('should call SharedPreferences to cache the data', () async {
      dataSource.cacheNote(tNoteModel);
      final expectedJsonString = json.encode(tNoteModel.toJson());
      verify(mockSharedPreferences.setString(CACHED_NOTE, expectedJsonString));
    });
  });
}
