part of 'sign_in_client_bloc.dart';

@freezed
abstract class SignInClientState with _$SignInClientState {
  const factory SignInClientState({
    required EmailAddress emailAddress,
    required Password password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInClientState;

  factory SignInClientState.initial() => SignInClientState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
