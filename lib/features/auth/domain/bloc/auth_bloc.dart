import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notebook_stable/features/auth/domain/repositories/auth_repo.dart';

part 'auth_bloc.freezed.dart';

enum AuthenticationStatus { authenticated, unauthenticated, unknown }

@freezed
abstract class AuthBlocEvent with _$AuthBlocEvent {
  const AuthBlocEvent._();

  const factory AuthBlocEvent.userChanged(User? user) =
      UserChangedAuthBlocEvent;

  const factory AuthBlocEvent.signOut() = SignOutAuthBlocEvent;
}

@freezed
abstract class AuthBlocState with _$AuthBlocState {
  const AuthBlocState._();

  const factory AuthBlocState.initial(AuthenticationStatus status, User? user) =
      InitialAuthBlocState;

  const factory AuthBlocState.authenticated(
      AuthenticationStatus status, User? user) = AuthenticatedAuthBlocState;

  const factory AuthBlocState.unauthenticated() = UnauthenticatedAuthBlocState;

  const factory AuthBlocState.unknown() = UnknownAuthBlocState;
}

class AuthBlocBLoC extends Bloc<AuthBlocEvent, AuthBlocState> {
  AuthBlocBLoC({required this.authRepo})
      : super(const AuthBlocState.unknown()) {
    _userSubscription = authRepo.currentUser.listen(
      (user) => add(AuthBlocEvent.userChanged(user)),
    );
  }

  final AuthRepo authRepo;
  late StreamSubscription<User?> _userSubscription;

  @override
  Stream<AuthBlocState> mapEventToState(AuthBlocEvent event) =>
      event.when<Stream<AuthBlocState>>(
        userChanged: _userChanged,
        signOut: _signOut,
      );

  Stream<AuthBlocState> _userChanged(User? user) async* {
    if (user != null) {
      yield AuthBlocState.authenticated(
          AuthenticationStatus.authenticated, user);
    } else {
      yield const AuthBlocState.unauthenticated();
    }
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }

  Stream<AuthBlocState> _signOut() async* {
    authRepo.signOut();
  }
}
