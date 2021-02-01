import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notebook_bloc.freezed.dart';

@freezed
abstract class NotebookEvent with _$NotebookEvent {
  const NotebookEvent._();

  const factory NotebookEvent.getList() = GetListNotebookEvent;
}

@freezed
abstract class NotebookState with _$NotebookState {
  const NotebookState._();

  const factory NotebookState.initial() = InitialNotebookState;

  const factory NotebookState.loaded() = LoadedNotebookState;

  const factory NotebookState.loading() = LoadingNotebookState;
}

class NotebookBLoC extends Bloc<NotebookEvent, NotebookState> {
  NotebookBLoC() : super(const InitialNotebookState());

  @override
  Stream<NotebookState> mapEventToState(NotebookEvent event) =>
      event.when<Stream<NotebookState>>(
        getList: _getList,
      );

  Stream<NotebookState> _getList() async* {
    // ...
  }
}
