import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';

@freezed
abstract class AuthBlocEvent with _$AuthBlocEvent {
  const AuthBlocEvent._();

  const factory AuthBlocEvent.login() = LoginAuthBlocEvent;

  const factory AuthBlocEvent.register() = RegisterAuthBlocEvent;
}

@freezed
abstract class AuthBlocState with _$AuthBlocState {
  const AuthBlocState._();

  const factory AuthBlocState.initial() = InitialAuthBlocState;

  const factory AuthBlocState.authenticated() = AuthenticatedAuthBlocState;

  const factory AuthBlocState.notAuthenticated() =
      NotAuthenticatedAuthBlocState;
}

class AuthBlocBLoC extends Bloc<AuthBlocEvent, AuthBlocState> {
  AuthBlocBLoC() : super(const InitialAuthBlocState());

  @override
  Stream<AuthBlocState> mapEventToState(AuthBlocEvent event) =>
      event.when<Stream<AuthBlocState>>(
        login: _login,
        register: _register,
      );

  Stream<AuthBlocState> _login() async* {
    // ...
  }

  Stream<AuthBlocState> _register() async* {
    // ...
  }
}
