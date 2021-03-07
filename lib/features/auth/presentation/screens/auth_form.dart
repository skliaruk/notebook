import 'package:flutter/material.dart';
import 'package:notebook_stable/features/auth/domain/cubit/login_cubit.dart';
import 'package:provider/provider.dart';

class AuthForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Align(
        alignment: const Alignment(0, -1 / 3),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [_GoogleLoginButton()],
          ),
        ),
      );
}

class _GoogleLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton.icon(
      key: const Key('loginForm_googleLogin_raisedButton'),
      label: const Text(
        'SIGN IN WITH GOOGLE',
        style: TextStyle(color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        primary: theme.accentColor,
      ),
      icon: const Icon(Icons.ac_unit, color: Colors.white),
      onPressed: () => context.read<LoginCubit>().logInWithGoogle(),
    );
  }
}
