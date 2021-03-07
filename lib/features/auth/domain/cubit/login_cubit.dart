import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notebook_stable/features/auth/domain/repositories/auth_repo.dart';

part 'login_cubit.freezed.dart';

enum LoginStatus { inProgress, pure, fail, success }

@freezed
abstract class LoginState with _$LoginState {
  const LoginState._();

  const factory LoginState.initial({required LoginStatus status}) =
      InitialLoginState;
}

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authRepo)
      : super(const LoginState.initial(status: LoginStatus.pure));

  final AuthRepo _authRepo;

  Future<void> logInWithGoogle() async {
    emit(state.copyWith(status: LoginStatus.inProgress));
    try {
      await _authRepo.signInWithGoogle();
      emit(state.copyWith(status: LoginStatus.success));
    } on Exception {
      emit(state.copyWith(status: LoginStatus.fail));
    } on NoSuchMethodError {
      emit(state.copyWith(status: LoginStatus.pure));
    }
  }
}
