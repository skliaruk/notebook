import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notebook_stable/features/note/domain/entities/note.dart';
import 'package:notebook_stable/features/note/domain/usecases/get_notebook.dart';

part 'notebook_bloc.freezed.dart';

@freezed
abstract class NotebookEvent with _$NotebookEvent {
  const NotebookEvent._();

  const factory NotebookEvent.hasData(List<Note> notes) = HasDataNotebookEvent;
}

@freezed
abstract class NotebookState with _$NotebookState {
  const NotebookState._();

  const factory NotebookState.loaded(List<Note> notes) = LoadedNotebookState;

  const factory NotebookState.loading() = LoadingNotebookState;
}

class NotebookBLoC extends Bloc<NotebookEvent, NotebookState> {
  final GetNotebook notebookUseCase;

  NotebookBLoC({required this.notebookUseCase})
      : super(const LoadingNotebookState()) {
    notebookUseCase.get().fold((l) => null,
        (r) => r.listen((data) => add(HasDataNotebookEvent(data))));
  }

  @override
  Stream<NotebookState> mapEventToState(NotebookEvent event) =>
      event.when<Stream<NotebookState>>(
        hasData: (_) => _getList(event),
      );

  Stream<NotebookState> _getList(NotebookEvent event) async* {
    yield LoadedNotebookState(event.notes);
  }
}
