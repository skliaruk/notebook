import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notebook_stable/app.dart';
import 'package:notebook_stable/features/auth/data/repositories/auth_repo_impl.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final sharedPreferences = await SharedPreferences.getInstance();
  runApp(MyApp(
    sharedPreferences: sharedPreferences,
  ));
}

class MyApp extends StatelessWidget {
  final SharedPreferences? sharedPreferences;

  //TODO init Firebase
  const MyApp({Key? key, this.sharedPreferences}) : super(key: key);

  @override
  Widget build(BuildContext context) => Provider<SharedPreferences?>(
        create: (_) => sharedPreferences,
        child: MaterialApp(
          title: 'Notebook',
          home: App(
            authenticationRepository: Auth(),
          ),
        ),
      );
}
