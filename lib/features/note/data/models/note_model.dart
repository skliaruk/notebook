import '../../domain/entities/note.dart';

class NoteModel extends Note {
  const NoteModel({
    required String? title,
    required String? content,
  }) : super(title: title, content: content);

  factory NoteModel.fromJson(Map<String, dynamic> json) => NoteModel(
      title: json['title'] as String?, content: json['content'] as String?);

  Map<String, dynamic> toJson() =>
      <String, dynamic>{'title': title, 'content': content};
}
