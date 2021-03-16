import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notebook_stable/features/note/domain/repositories/note_repo.dart';

import '../../../../core/error/failures.dart';
import '../entities/note.dart';

part 'note_bloc.freezed.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHE_FAILURE_MESSAGE = 'Cache Failure';

@freezed
class NoteBlocEvent with _$NoteBlocEvent {
  const NoteBlocEvent._();

  const factory NoteBlocEvent.create(Note note) = CreateNoteBlocEvent;

  const factory NoteBlocEvent.read(int noteId) = ReadNoteBlocEvent;

  const factory NoteBlocEvent.update() = UpdateNoteBlocEvent;

  const factory NoteBlocEvent.delete() = DeleteNoteBlocEvent;
}

@freezed
class NoteBlocState with _$NoteBlocState {
  const NoteBlocState._();

  const factory NoteBlocState.initial() = InitialNoteBlocState;

  const factory NoteBlocState.loaded({Note? note}) = LoadedNoteBlocState;

  const factory NoteBlocState.updated({Note? note}) = UpdatedNoteBlocState;

  const factory NoteBlocState.created() = CreatedNoteBlocState;

  const factory NoteBlocState.deleted() = DeletedNoteBlocState;

  const factory NoteBlocState.loading() = LoadingNoteBlocState;

  const factory NoteBlocState.error({String? message}) = ErrorNoteBlocState;
}

class NoteBlocBLoC extends Bloc<NoteBlocEvent, NoteBlocState> {
  final NoteRepo noteRepo;

  NoteBlocBLoC({required this.noteRepo}) : super(const InitialNoteBlocState());

  @override
  Stream<NoteBlocState> mapEventToState(NoteBlocEvent event) =>
      event.when<Stream<NoteBlocState>>(
        create: _create,
        read: _read,
        update: _update,
        delete: _delete,
      );

  Stream<NoteBlocState> _create(Note note) async* {
    final failureOrCreated = await noteRepo.createNote(note: note);
    yield failureOrCreated.fold(
        (failure) =>
            NoteBlocState.error(message: _mapFailureToMessage(failure)),
        (r) => const NoteBlocState.created());
  }

  Stream<NoteBlocState> _read(int noteId) async* {
    yield const NoteBlocState.loading();
    final failureOrNote = await noteRepo.getNote(noteId);

    yield failureOrNote.fold(
        (failure) =>
            NoteBlocState.error(message: _mapFailureToMessage(failure)),
        (note) => NoteBlocState.loaded(note: note));
  }

  Stream<NoteBlocState> _update() async* {
    // ...
  }

  Stream<NoteBlocState> _delete() async* {
    // ...
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case CacheFailure:
        return CACHE_FAILURE_MESSAGE;
      default:
        return 'Unexpected error';
    }
  }
}
