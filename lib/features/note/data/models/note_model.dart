import 'package:notebook_stable/features/note/domain/entities/note.dart';
import 'package:meta/meta.dart';

class NoteModel extends Note{
  NoteModel({
    @required String title,
    @required String content,
  }) : super(title: title, content: content);

  factory NoteModel.fromJson(Map<String, dynamic> json) => NoteModel(title: json['title'], content: json['content']);

  Map<String, dynamic> toJson(){
    return {
      'title': title,
      'content': content
    };
  }
}