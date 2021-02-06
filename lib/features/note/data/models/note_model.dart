import '../../domain/entities/note.dart';
import 'package:meta/meta.dart';

class NoteModel extends Note {
  NoteModel({
    @required String title,
    @required String body,
  }) : super(title: title, body: body);

  factory NoteModel.fromJson(Map<String, dynamic> json) =>
      NoteModel(title: json['title'] as String, body: json['body'] as String);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'title': title, 'body': body};
  }
}
