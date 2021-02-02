import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';




 class Note extends Equatable {
  final String title;
  final String content;

   Note({@required this.title,@required this.content});

  @override
  
  List<Object> get props => [title, content];
}
