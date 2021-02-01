import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notebook_stable/domain/repositories/note_repo.dart';
import 'package:notebook_stable/features/note/domain/entities/note.dart';

part 'note_bloc.freezed.dart';

@freezed
abstract class NoteBlocEvent with _$NoteBlocEvent {
  const NoteBlocEvent._();

  const factory NoteBlocEvent.create() = CreateNoteBlocEvent;

  const factory NoteBlocEvent.read(int noteId) = ReadNoteBlocEvent;

  const factory NoteBlocEvent.update() = UpdateNoteBlocEvent;

  const factory NoteBlocEvent.delete() = DeleteNoteBlocEvent;
}

@freezed
abstract class NoteBlocState with _$NoteBlocState {
  const NoteBlocState._();

  const factory NoteBlocState.initial(Note note) = InitialNoteBlocState;

  const factory NoteBlocState.updated(Note note) = UpdatedNoteBlocState;

  const factory NoteBlocState.created(Note note) = CreatedNoteBlocState;

  const factory NoteBlocState.deleted() = DeletedNoteBlocState;
}

class NoteBlocBLoC extends Bloc<NoteBlocEvent, NoteBlocState> {
  final NoteRepo noteRepo;
  NoteBlocBLoC(this.noteRepo) : super(InitialNoteBlocState(Note()));

  @override
  Stream<NoteBlocState> mapEventToState(NoteBlocEvent event) =>
      event.when<Stream<NoteBlocState>>(
        create: _create,
        read: _read,
        update: _update,
        delete: _delete,
      );

  Stream<NoteBlocState> _create() async* {
    // ...
  }

  Stream<NoteBlocState> _read(int noteId) async* {
    // ...
  }

  Stream<NoteBlocState> _update() async* {
    // ...
  }

  Stream<NoteBlocState> _delete() async* {
    // ...
  }
}
