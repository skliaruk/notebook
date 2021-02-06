import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:notebook_stable/core/error/failures.dart';
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
    final note = Note(title: 'Title', body: 'Content');

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

    test('should emit [Loading, Error] when getting data fails', () async {
      when(getNote(any)).thenAnswer((_) async => Left(ServerFailure()));

      final expected = [
        NoteBlocState.loading(),
        NoteBlocState.error(message: SERVER_FAILURE_MESSAGE),
      ];
      expectLater(bloc, emitsInOrder(expected));
      bloc.add(NoteBlocEvent.read(tNoteId));
    });

    test(
        'should emit [Loading, Error] with a proper message for the error when getting data fails',
        () async {
      when(getNote(any)).thenAnswer((_) async => Left(CacheFailure()));

      final expected = [
        NoteBlocState.loading(),
        NoteBlocState.error(message: CACHE_FAILURE_MESSAGE),
      ];
      expectLater(bloc, emitsInOrder(expected));
      bloc.add(NoteBlocEvent.read(tNoteId));
    });
  });

  
}
