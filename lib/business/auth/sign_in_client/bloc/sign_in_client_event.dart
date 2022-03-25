part of 'sign_in_client_bloc.dart';

@freezed
abstract class SignInClientEvent with _$SignInClientEvent {
  //const factory SignInClientEvent.started() = _Started;

  const factory SignInClientEvent.emailChanged(String email) = EmailChanged;

  const factory SignInClientEvent.passwordChanged(String password) =
      PasswordChanged;

  const factory SignInClientEvent.signUpButtonPressed() = SignUpButtonPressed;

  const factory SignInClientEvent.signInButtonPressed() = SignInButtonPressed;
}
