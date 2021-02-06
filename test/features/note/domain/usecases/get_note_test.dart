import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:notebook_stable/features/note/domain/entities/note.dart';
import 'package:notebook_stable/features/note/domain/repositories/note_repo.dart';
import 'package:notebook_stable/features/note/domain/usecases/get_note.dart';

class MockNoteRepository extends Mock implements NoteRepo {}

void main() {
  MockNoteRepository mockNoteRepository;
  GetNote usecase;

  setUp(() {
    mockNoteRepository = MockNoteRepository();
    usecase = GetNote(mockNoteRepository);
  });

  final tNoteId = 1;
  final tNote = Note(title: 'Test', body: 'Test text');

  test('should get note from the repository', () async {
    when(mockNoteRepository.getNote(any)).thenAnswer((_) async => Right(tNote));

    final result = await usecase(tNoteId);

    expect(result, Right<dynamic, Note>(tNote));
    verify(mockNoteRepository.getNote(tNoteId));
    verifyNoMoreInteractions(mockNoteRepository);
  });
}
