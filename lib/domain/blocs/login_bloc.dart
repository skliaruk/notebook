import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_bloc.freezed.dart';

@freezed
abstract class LoginBlocEvent with _$LoginBlocEvent {
  const LoginBlocEvent._();

  const factory LoginBlocEvent.username() = UsernameChangedLoginBlocEvent;

  const factory LoginBlocEvent.password() = PasswordChangedLoginBlocEvent;

  const factory LoginBlocEvent.submit() = SubmitLoginBlocEvent;
}

@freezed
abstract class LoginBlocState with _$LoginBlocState {
  const LoginBlocState._();

  const factory LoginBlocState.initial() = InitialLoginBlocState;
}

class LoginBlocBLoC extends Bloc<LoginBlocEvent, LoginBlocState> {
  LoginBlocBLoC() : super(const InitialLoginBlocState());

  @override
  Stream<LoginBlocState> mapEventToState(LoginBlocEvent event) =>
      event.when<Stream<LoginBlocState>>(
        username: _changeUsername,
        password: _changePassword,
        submit: _submit,
      );

  Stream<LoginBlocState> _changeUsername() async* {
    // ...
  }

  Stream<LoginBlocState> _changePassword() async* {
    // ...
  }

  Stream<LoginBlocState> _submit() async* {
    // ...
  }
}
