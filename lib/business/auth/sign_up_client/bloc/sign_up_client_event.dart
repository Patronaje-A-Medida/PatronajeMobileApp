part of 'sign_up_client_bloc.dart';

@freezed
class SignUpClientEvent with _$SignUpClientEvent {
  //const factory SignUpClientEvent.started() = _Started;
  const factory SignUpClientEvent.start() = NewClient;
  const factory SignUpClientEvent.nameChanged(String name) = NameChanged;
  const factory SignUpClientEvent.lastNameChanged(String lastName) =
      LastNameChanged;
  const factory SignUpClientEvent.emailChanged(String email) = EmailChanged;
  const factory SignUpClientEvent.passwordChanged(String password) =
      PasswordChanged;
  const factory SignUpClientEvent.phoneChanged(String phone) = PhoneChanged;
  const factory SignUpClientEvent.heightChanged(double height) = HeightChanged;
  const factory SignUpClientEvent.signUpButtonPressed() = SignUpButtonPressed;
}
