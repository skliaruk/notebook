import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:notebook_stable/core/error/exceptions.dart';
import 'package:notebook_stable/core/error/failures.dart';
import 'package:notebook_stable/core/network/network_info.dart';
import 'package:notebook_stable/features/note/data/datasources/note_local_datasource.dart';
import 'package:notebook_stable/features/note/data/datasources/note_remote_datasource.dart';
import 'package:notebook_stable/features/note/data/models/note_model.dart';
import 'package:notebook_stable/features/note/data/repositories/note_repo_impl.dart';
import 'package:notebook_stable/features/note/domain/entities/note.dart';

class MockRemoteDatasource extends Mock implements NoteRemoteDataSource {}

class MockLocalDatasource extends Mock implements NoteLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  NoteRepoImpl repoImpl;
  MockRemoteDatasource mockRemoteDatasource;
  MockLocalDatasource mockLocalDatasource;
  MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDatasource = MockRemoteDatasource();
    mockLocalDatasource = MockLocalDatasource();
    mockNetworkInfo = MockNetworkInfo();
    repoImpl = NoteRepoImpl(
      remoteDataSource: mockRemoteDatasource,
      localDataSource: mockLocalDatasource,
      networkInfo: mockNetworkInfo,
    );
  });

  void runTestsOnline(Function body) {
    group('device is online', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      });

      body();
    });
  }

  void runTestsOffline(Function body) {
    group('device is offline', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
      });

      body();
    });
  }

  group('getNote', () {
    final tNoteId = 1;
    final tNoteModel = NoteModel(title: 'Title', body: 'Content');
    final Note tNote = tNoteModel;
    test('should check if device is online', () async {
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);

      repoImpl.getNote(1);
      verify(mockNetworkInfo.isConnected);
    });

    runTestsOnline(() {
      test(
          'should remote data when the call to remote datasource is successful',
          () async {
        when(mockRemoteDatasource.getNote(any))
            .thenAnswer((_) async => tNoteModel);

        final result = await repoImpl.getNote(tNoteId);

        verify(mockRemoteDatasource.getNote(tNoteId));
        expect(result, equals(Right<dynamic, Note>(tNote)));
      });

      test(
          'should cache the data locally when the call to remote datasource is successful',
          () async {
        when(mockRemoteDatasource.getNote(any))
            .thenAnswer((_) async => tNoteModel);

        await repoImpl.getNote(tNoteId);

        verify(mockRemoteDatasource.getNote(tNoteId));
        verify(mockLocalDatasource.cacheNote(tNoteModel));
      });

      test(
          'should return server failure when the call to remote datasource is unsuccessful',
          () async {
        when(mockRemoteDatasource.getNote(any))
            .thenThrow(ServerException('Unsuccessful'));

        final result = await repoImpl.getNote(tNoteId);

        verify(mockRemoteDatasource.getNote(tNoteId));
        verifyZeroInteractions(mockLocalDatasource);
        expect(result, equals(Left<Failure, dynamic>(ServerFailure())));
      });
    });

    runTestsOffline(() {
      test(
          'should return last locally cached data when the cached data is present',
          () async {
        when(mockLocalDatasource.getLastNote())
            .thenAnswer((realInvocation) async => tNoteModel);

        final result = await repoImpl.getNote(tNoteId);

        verifyZeroInteractions(mockRemoteDatasource);
        verify(mockLocalDatasource.getLastNote());
        expect(result, equals(Right<dynamic,Note>(tNote)));
      });

      test(
          'should return CacheFailure cached data when is no cached data present',
          () async {
        when(mockLocalDatasource.getLastNote())
            .thenThrow(CacheException('No data'));

        final result = await repoImpl.getNote(tNoteId);

        verifyZeroInteractions(mockRemoteDatasource);
        verify(mockLocalDatasource.getLastNote());
        expect(result, equals(Left<Failure,dynamic>(CacheFailure())));
      });
    });
  });
}
