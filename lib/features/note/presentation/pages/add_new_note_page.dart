import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notebook_stable/features/note/data/models/note_model.dart';
import 'package:notebook_stable/features/note/domain/blocs/note_bloc.dart';

class AddNotePage extends StatelessWidget {
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late String _noteTitle;
  late String _noteContent;

  static Future<void> route(BuildContext context) async {
    await Navigator.of(context).push(
      MaterialPageRoute<AddNotePage>(
        builder: (context) => AddNotePage(),
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('New Note'),
          centerTitle: true,
        ),
        body: _buildContents(),
        backgroundColor: Colors.grey[200],
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              context.read<NoteBlocBLoC>().add(
                    CreateNoteBlocEvent(
                      NoteModel(title: _noteTitle, content: _noteContent),
                    ),
                  );
            }
          },
          child: const Icon(Icons.add),
        ),
      );

  Widget _buildContents() => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(hintText: 'Note title'),
                      onChanged: (value) => _noteTitle = value,
                      validator: (val) =>
                          val!.trim().isEmpty ? 'Field is required' : null,
                    ),
                    TextFormField(
                      validator: (val) =>
                          val!.trim().isEmpty ? 'Field is required' : null,
                      decoration:
                          const InputDecoration(hintText: 'Note content'),
                      onChanged: (value) => _noteContent = value,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
