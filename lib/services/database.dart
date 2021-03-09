import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:notebook_stable/features/note/data/models/note_model.dart';
import 'package:notebook_stable/services/api_path.dart';

abstract class Database {
  Future<void> createNote(NoteModel noteData);
}

class FirestoreDatabase implements Database {
  final String uid;

  FirestoreDatabase({required this.uid});

  @override
  Future<void> createNote(NoteModel noteData) => _setData(
        path: APIPath.note(uid, 'note'),
        data: noteData.toJson(),
      );

  Future<void> _setData(
      {required String path, required Map<String, dynamic> data}) async {
    final reference = FirebaseFirestore.instance.doc(path);
    await reference.set(data);
  }
}
