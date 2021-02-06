import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Note extends Equatable {
  final String title;
  final String body;

  Note({@required this.title, @required this.body});

  @override
  List<Object> get props => [title, body];
}
