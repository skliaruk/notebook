import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notebook_stable/features/auth/domain/cubit/login_cubit.dart';
import 'package:notebook_stable/features/auth/domain/repositories/auth_repo.dart';
import 'package:notebook_stable/features/auth/presentation/screens/auth_form.dart';

class AuthPage extends StatelessWidget {
  static Route route() => MaterialPageRoute<void>(builder: (_) => AuthPage());

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: BlocProvider(
            create: (_) => LoginCubit(context.read<AuthRepo>()),
            child: AuthForm(),
          ),
        ),
      );
}
