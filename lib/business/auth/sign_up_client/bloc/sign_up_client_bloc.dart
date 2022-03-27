import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:patronaje_mobile_app/domain/handlers/failures/auth_failure.dart';
import 'package:patronaje_mobile_app/domain/utils/forms/form_inputs.dart';
import 'package:patronaje_mobile_app/persistence/remote/interfaces/i_auth_facade.dart';

part 'sign_up_client_event.dart';
part 'sign_up_client_state.dart';
part 'sign_up_client_bloc.freezed.dart';

@injectable
class SignUpClientBloc extends Bloc<SignUpClientEvent, SignUpClientState> {
  final IAuthFacade _authFacade;

  SignUpClientBloc(this._authFacade) : super(SignUpClientState.initial()) {
    on<NewClient>((event, emit) async {
      emit(SignUpClientState.initial());
    });
    on<EmailChanged>((event, emit) async {
      emit(SignUpClientState.emailChanged(
        emailAddress: EmailAddress(event.email),
      ));
    });
    on<NameChanged>((event, emit) {
      emit(SignUpClientState.nameChanged(
        name: NamesUser(event.name),
      ));
    });
  }

  /*SignUpClientBloc() : super(_Initial()) {
    on<SignUpClientEvent>((event, emit) {
      // TODO: implement event handler
    });
  }*/

  SignUpClientState get initialState => SignUpClientState.initial();

  /*Stream<SignUpClientState> mapEvenToState(
    SignUpClientEvent event,
  ) async* {
    yield* event.map(
      nameChanged: (e) async* {
        yield state.copyWith(
          name: NamesUser(e.name),
          authFailureOrSuccessOption: none(),
        );
      },
      lastNameChanged: (e) async* {
        yield state.copyWith(
          lastName: NamesUser(e.lastName),
          authFailureOrSuccessOption: none(),
        );
      },
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
      phoneChanged: (e) async* {
        yield state.copyWith(
          phone: Phone(e.phone),
          authFailureOrSuccessOption: none(),
        );
      },
      heightChanged: (e) async* {
        yield state.copyWith(
          height: Height(e.height),
          authFailureOrSuccessOption: none(),
        );
      },
      signUpButtonPressed: (e) async* {
        Either<AuthFailure, Unit>? failureOrSuccess;

        final isNameValid = state.name.isValid();
        final isLastNameValid = state.name.isValid();
        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();
        final isPhoneValid = state.phone.isValid();
        final isHeightValid = state.height.isValid();

        if (isEmailValid &&
            isPasswordValid &&
            isNameValid &&
            isLastNameValid &&
            isPhoneValid &&
            isHeightValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _authFacade.signUp(
              name: state.name,
              lastName: state.lastName,
              emailAddress: state.emailAddress,
              password: state.password,
              phone: state.phone,
              height: state.height);
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }*/
}
