import 'package:cloud_firestore/cloud_firestore.dart';

abstract class Database {
  Future<void> createNote(Map<String, dynamic> noteData);
}

class FirestoreDatabase implements Database {
  final String uid;

  FirestoreDatabase({required this.uid});

  @override
  Future<void> createNote(Map<String, dynamic> noteData) async {
    final path = '/users/$uid/notes/bac';
    final documentReference = FirebaseFirestore.instance.doc(path);
    await documentReference.set(noteData);
  }
}
