part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool isLoading,
    LoginCredentials? loginCredentials,
  }) = _LoginState;
  factory LoginState.initial() {
    return const LoginState(
      isLoading: false,
    );
  }
}
