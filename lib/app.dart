import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notebook_stable/features/auth/domain/bloc/auth_bloc.dart';
import 'package:notebook_stable/features/auth/domain/repositories/auth_repo.dart';
import 'package:notebook_stable/features/auth/presentation/screens/auth_page.dart';
import 'package:notebook_stable/features/note/presentation/pages/show_note_page.dart';

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
                ShowNotePage.route(),
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
