import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_bloc.freezed.dart';

@freezed
abstract class NoteBlocEvent with _$NoteBlocEvent {
  const NoteBlocEvent._();

  const factory NoteBlocEvent.create() = CreateNoteBlocEvent;

  const factory NoteBlocEvent.read() = ReadNoteBlocEvent;

  const factory NoteBlocEvent.update() = UpdateNoteBlocEvent;

  const factory NoteBlocEvent.delete() = DeleteNoteBlocEvent;
}

@freezed
abstract class NoteBlocState with _$NoteBlocState {
  const NoteBlocState._();

  const factory NoteBlocState.initial() = InitialNoteBlocState;

  const factory NoteBlocState.updated() = UpdatedNoteBlocState;

  const factory NoteBlocState.created() = CreatedNoteBlocState;

  const factory NoteBlocState.deleted() = DeletedNoteBlocState;
}

class NoteBlocBLoC extends Bloc<NoteBlocEvent, NoteBlocState> {
  NoteBlocBLoC() : super(const InitialNoteBlocState());

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

  Stream<NoteBlocState> _read() async* {
    // ...
  }

  Stream<NoteBlocState> _update() async* {
    // ...
  }

  Stream<NoteBlocState> _delete() async* {
    // ...
  }
}
