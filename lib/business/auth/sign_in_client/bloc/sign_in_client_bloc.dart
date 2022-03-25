import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:patronaje_mobile_app/domain/handlers/failures/auth_failure.dart';
import 'package:patronaje_mobile_app/domain/utils/forms/form_inputs.dart';
import 'package:patronaje_mobile_app/persistence/remote/interfaces/i_auth_facade.dart';

part 'sign_in_client_event.dart';
part 'sign_in_client_state.dart';
part 'sign_in_client_bloc.freezed.dart';

@injectable
class SignInClientBloc extends Bloc<SignInClientEvent, SignInClientState> {
  final IAuthFacade _authFacade;

  SignInClientBloc(SignInClientState initialState, this._authFacade)
      : super(initialState);

  /*SignInClientBloc() : super(SignInClientState.initial()) {
    on<SignInClientEvent>((event, emit) {
      // TODO: implement event handler
    });
  }*/

  @override
  SignInClientState get initialState => SignInClientState.initial();

  @override
  Stream<SignInClientState> mapEventToState(
    SignInClientEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.email),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.password),
          authFailureOrSuccessOption: none(),
        );
      },
      signUpButtonPressed: (e) async* {
        // creo que no va
        Either<AuthFailure, Unit>? failureOrSuccess;

        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();

        if (isEmailValid && isPasswordValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _authFacade.signUp(
            emailAddress: state.emailAddress,
            password: state.password,
          );
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      signInButtonPressed: (e) async* {
        Either<AuthFailure, Unit>? failureOrSuccess;

        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();

        if (isEmailValid && isPasswordValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _authFacade.signIn(
            emailAddress: state.emailAddress,
            password: state.password,
          );
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
