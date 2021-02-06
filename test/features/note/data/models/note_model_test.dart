import 'dart:convert';
import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:notebook_stable/features/note/data/models/note_model.dart';
import 'package:notebook_stable/features/note/domain/entities/note.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tNoteModel = NoteModel(title: 'Title', body: 'Content');

  test('should be a subclass on Note entity', () async {
    expect(tNoteModel, isA<Note>());
  });

  group('fromJson', () {
    test('should return a valid model', () async {
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('note.json')) as Map<String, dynamic>;

      final result = NoteModel.fromJson(jsonMap);

      expect(result, tNoteModel);
    });
  });

  group('toJson', () {
    test('should return a JSON map containing a proper data', () async {
      final result = tNoteModel.toJson();
      final expectedMap = {"title": "Title", "body": "Content"};
      expect(result, expectedMap);
    });
  });
}
