import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../domain/blocs/note_bloc.dart';
import '../../domain/usecases/get_note.dart';

class ShowNotePage extends StatelessWidget {
  const ShowNotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Note'),
        centerTitle: true,
      ),
      body: BlocProvider<NoteBlocBLoC>(
        create: (context) => NoteBlocBLoC(getNote: context.read<GetNote>()),
        child: Column(
          children: [
            BlocBuilder<NoteBlocBLoC, NoteBlocState>(builder: (context, state) {
              if (state is LoadingNoteBlocState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is LoadedNoteBlocState) {
                return Column(
                  children: [
                    Text(state.note!.title!),
                    Text(state.note!.body!),
                  ],
                );
              }
              return Container();
            }),
            const Button()
          ],
        ),
      ));
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
