import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/network/network_info.dart';
import 'features/note/data/datasources/note_local_datasource.dart';
import 'features/note/data/datasources/note_remote_datasource.dart';
import 'features/note/data/repositories/note_repo_impl.dart';
import 'features/note/domain/usecases/get_note.dart';
import 'features/note/presentation/pages/show_note_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  runApp(MyApp(
    sharedPreferences: sharedPreferences,
  ));
}

class MyApp extends StatelessWidget {
  final SharedPreferences sharedPreferences;

  const MyApp({Key key, this.sharedPreferences}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => Dio()),
        Provider<SharedPreferences>(create: (_) => sharedPreferences),
        ProxyProvider<Dio, NoteRemoteDataSourceImpl>(
            update: (_, dio, __) => NoteRemoteDataSourceImpl(client: dio)),
        ProxyProvider<SharedPreferences, NoteLocalDataSourceImpl>(
            update: (_, sp, __) =>
                NoteLocalDataSourceImpl(sharedPreferences: sp)),
        Provider(
          create: (_) => DataConnectionChecker(),
        ),
        ProxyProvider<DataConnectionChecker, NetworkInfoImpl>(
            update: (_, checker, __) => NetworkInfoImpl(checker)),
        ProxyProvider3<NetworkInfoImpl, NoteRemoteDataSourceImpl,
                NoteLocalDataSourceImpl, NoteRepoImpl>(
            update: (_, network, remote, local, __) => NoteRepoImpl(
                localDataSource: local,
                networkInfo: network,
                remoteDataSource: remote)),
        ProxyProvider<NoteRepoImpl, GetNote>(
            update: (_, noteRepo, __) => GetNote(noteRepo))
      ],
      child: MaterialApp(title: 'Notebook', home: ShowNotePage()),
    );
  }
}
