import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notebook_stable/features/note/domain/entities/note.dart';
import 'package:notebook_stable/features/note/domain/usecases/get_note.dart';

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

  const factory NoteBlocState.initial() = InitialNoteBlocState;

  const factory NoteBlocState.loaded({Note note}) = LoadedNoteBlocState;

  const factory NoteBlocState.updated({Note note}) = UpdatedNoteBlocState;

  const factory NoteBlocState.created({Note note}) = CreatedNoteBlocState;

  const factory NoteBlocState.deleted() = DeletedNoteBlocState;

  const factory NoteBlocState.loading() = LoadingNoteBlocState;

  const factory NoteBlocState.error({String message}) = ErrorNoteBlocState;
}

class NoteBlocBLoC extends Bloc<NoteBlocEvent, NoteBlocState> {
  final GetNote getNote;

  NoteBlocBLoC({@required this.getNote})
      : assert(getNote != null),
        super(InitialNoteBlocState());

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
    yield NoteBlocState.loading();
    final failureOrNote = await getNote(noteId);
    
    yield failureOrNote.fold((failure) => throw UnimplementedError(),
        (note) => NoteBlocState.loaded(note: note));
  }

  Stream<NoteBlocState> _update() async* {
    // ...
  }

  Stream<NoteBlocState> _delete() async* {
    // ...
  }
}
