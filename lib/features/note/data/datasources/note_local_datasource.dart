import 'dart:convert';

import '../../../../core/error/exceptions.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:meta/meta.dart';

import '../models/note_model.dart';

abstract class NoteLocalDataSource {
  Future<NoteModel> getLastNote();
  Future<void> cacheNote(NoteModel noteModel);
}

const CACHED_NOTE = 'CACHED_NOTE';

class NoteLocalDataSourceImpl implements NoteLocalDataSource {
  final SharedPreferences? sharedPreferences;

  NoteLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<NoteModel> getLastNote() {
    final jsonString = sharedPreferences!.getString(CACHED_NOTE);
    if (jsonString != null) {
      return Future.value(
          NoteModel.fromJson(json.decode(jsonString) as Map<String, dynamic>));
    } else {
      throw CacheException('No data');
    }
  }

  @override
  Future<void> cacheNote(NoteModel noteModel) {
    return sharedPreferences!.setString(
      CACHED_NOTE,
      json.encode(noteModel.toJson()),
    );
  }
}
