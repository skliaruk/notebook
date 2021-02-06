import 'package:dio/dio.dart';

import '../../data/models/user.dart';

abstract class AuthRepo {
  Future<User> login({String username, String password});

  Future<Response> logout();
}
