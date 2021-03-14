import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notebook_stable/features/note/domain/blocs/notebook_bloc.dart';
import 'package:notebook_stable/features/note/domain/usecases/get_notebook.dart';
import 'package:notebook_stable/features/note/presentation/pages/add_new_note_page.dart';
import 'package:provider/provider.dart';

import '../../domain/blocs/note_bloc.dart';

class ShowNotePage extends StatelessWidget {
  const ShowNotePage({Key? key}) : super(key: key);

  static Route route() =>
      MaterialPageRoute<void>(builder: (_) => const ShowNotePage());

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Note'),
          centerTitle: true,
        ),
        body: BlocProvider<NotebookBLoC>(
          create: (context) =>
              NotebookBLoC(notebookUseCase: context.read<GetNotebook>()),
          child: Column(
            children: [
              BlocBuilder<NotebookBLoC, NotebookState>(
                  builder: (context, state) {
                if (state is LoadingNotebookState) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is LoadedNotebookState) {
                  final notes = state.notes
                      .map((note) => Text('${note.title} ${note.content}'))
                      .toList();
                  return Column(
                      mainAxisSize: MainAxisSize.min, children: notes);
                }

                return Container();
              }),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => AddNotePage.route(context),
          child: const Icon(Icons.add),
        ),
      );
}

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: () {
          BlocProvider.of<NoteBlocBLoC>(context)
              .add(const ReadNoteBlocEvent(1));
        },
        child: const Text('Get'),
      );
}
