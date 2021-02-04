import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:notebook_stable/features/note/domain/blocs/note_bloc.dart';
import 'package:notebook_stable/features/note/domain/entities/note.dart';
import 'package:notebook_stable/features/note/domain/usecases/get_note.dart';

class MockGetNote extends Mock implements GetNote {}

class MockNoteBloc extends MockBloc<Note> implements NoteBlocBLoC {}

void main() {
  NoteBlocBLoC bloc;
  MockGetNote getNote;

  setUp(() {
    getNote = MockGetNote();
    bloc = NoteBlocBLoC(getNote: getNote);
  });

  group('getNote', () {
    final tNoteId = 1;
    final note = Note(title: 'Title', content: 'Content');

    test('should get data from use case', () async {
      when(getNote(any)).thenAnswer((_) async => Right(note));

      bloc.add(ReadNoteBlocEvent(tNoteId));
      await untilCalled(getNote(any));

      verify(getNote(tNoteId));
    });

    test('should emit [Loading, Read] when data is gotten successfully',
        () async {
      when(getNote(any)).thenAnswer((_) async => Right(note));

      final expected = [
        NoteBlocState.loading(),
        NoteBlocState.loaded(note: note),
      ];
      expectLater(bloc, emitsInOrder(expected));
      bloc.add(NoteBlocEvent.read(tNoteId));
    });
  });
}
