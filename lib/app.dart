import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notebook_stable/core/network/network_info.dart';
import 'package:notebook_stable/features/auth/domain/bloc/auth_bloc.dart';
import 'package:notebook_stable/features/auth/domain/repositories/auth_repo.dart';
import 'package:notebook_stable/features/auth/presentation/screens/auth_page.dart';
import 'package:notebook_stable/features/note/data/datasources/note_local_datasource.dart';
import 'package:notebook_stable/features/note/data/datasources/note_remote_datasource.dart';
import 'package:notebook_stable/features/note/data/repositories/note_repo_impl.dart';
import 'package:notebook_stable/features/note/domain/usecases/get_notebook.dart';
import 'package:notebook_stable/features/note/presentation/pages/show_note_page.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class App extends StatelessWidget {
  const App({
    required this.authenticationRepository,
    Key? key,
  }) : super(key: key);

  final AuthRepo authenticationRepository;

  @override
  Widget build(BuildContext context) => RepositoryProvider.value(
        value: authenticationRepository,
        child: BlocProvider(
          create: (_) => AuthBlocBLoC(
            authRepo: authenticationRepository,
          ),
          child: AppView(),
        ),
      );
}

class AppView extends StatefulWidget {
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState? get _navigator => _navigatorKey.currentState;

  @override
  Widget build(BuildContext context) => MaterialApp(
        navigatorKey: _navigatorKey,
        builder: (context, child) => BlocListener<AuthBlocBLoC, AuthBlocState>(
          listener: (context, state) {
            if (state is AuthenticatedAuthBlocState) {
              _navigator!.pushAndRemoveUntil<void>(
                MaterialPageRoute(
                    builder: (_) => MultiProvider(
                          providers: [
                            Provider<Dio>(create: (_) => Dio()),
                            ProxyProvider<Dio, NoteRemoteDataSourceImpl>(
                                update: (_, dio, __) =>
                                    NoteRemoteDataSourceImpl(client: dio)),
                            Provider<NoteLocalDataSourceImpl>(
                                create: (_) => NoteLocalDataSourceImpl(
                                    sharedPreferences:
                                        context.read<SharedPreferences?>())),
                            Provider<DataConnectionChecker>(
                              create: (_) => DataConnectionChecker(),
                            ),
                            ProxyProvider<DataConnectionChecker,
                                    NetworkInfoImpl>(
                                update: (_, checker, __) =>
                                    NetworkInfoImpl(checker)),
                            ProxyProvider3<
                                    NetworkInfoImpl,
                                    NoteRemoteDataSourceImpl,
                                    NoteLocalDataSourceImpl,
                                    NoteRepoImpl>(
                                update: (_, network, remote, local, __) =>
                                    NoteRepoImpl(
                                        uid: state.user!.uid,
                                        localDataSource: local,
                                        networkInfo: network,
                                        remoteDataSource: remote)),
                            ProxyProvider<NoteRepoImpl, GetNotebook>(
                                update: (_, noteRepo, __) =>
                                    GetNotebook(noteRepo))
                          ],
                          child: const ShowNotePage(),
                        )),
                (route) => false,
              );
            } else if (state is UnauthenticatedAuthBlocState) {
              _navigator!.pushAndRemoveUntil<void>(
                AuthPage.route(),
                (route) => false,
              );
            }
          },
          child: child,
        ),
        //TODO change with Splashscreen
        onGenerateRoute: (_) => AuthPage.route(),
      );
}
