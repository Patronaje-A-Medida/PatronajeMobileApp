part of 'sign_up_client_bloc.dart';

@freezed
class SignUpClientState with _$SignUpClientState {
  const factory SignUpClientState({
    required NamesUser name,
    required NamesUser lastName,
    required EmailAddress emailAddress,
    required Password password,
    required Phone phone,
    required Height height,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignUpClientState;

  //const factory SignUpClientState.initial() = _Initial;

  factory SignUpClientState.initial() => SignUpClientState(
        name: NamesUser(''),
        lastName: NamesUser(''),
        emailAddress: EmailAddress(''),
        password: Password(''),
        phone: Phone(''),
        height: Height(1),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );

  /*const factory SignUpClientState.formChanged({
    required NamesUser name,
    required EmailAddress emailAddress,
  }) = _FormChanged;*/

  const factory SignUpClientState.nameChanged({
    required NamesUser name,
  }) = _NameChanged;

  /*const factory SignUpClientState.lastNameChanged({
    required NamesUser lastName,
  }) = _LastNameChanged;*/

  const factory SignUpClientState.emailChanged({
    required EmailAddress emailAddress,
  }) = _EmailChanged;

  /*const factory SignUpClientState.passwordChanged({
    required Password password,
  }) = _PasswordChanged;

  const factory SignUpClientState.phoneChanged({
    required Phone phone,
  }) = _PhoneChanged;

  const factory SignUpClientState.heightChanged({
    required Height height,
  }) = _HeightChanged;*/
}
