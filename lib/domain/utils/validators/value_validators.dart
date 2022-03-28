/*import 'package:dartz/dartz.dart';
import 'package:patronaje_mobile_app/domain/handlers/failures/value_failure.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  // agregar regex
  if (input.length >= 8) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateNamesUser(String input) {
  if (input.length >= 2) {
    return right(input);
  } else {
    return left(ValueFailure.invalidNamesUser(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePhone(String input) {
  if (input.length == 9) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhone(failedValue: input));
  }
}

Either<ValueFailure<double>, double> validateHeight(double input) {
  if (input >= 0.5 && input <= 3.0) {
    return right(input);
  } else {
    return left(ValueFailure.invalidHeight(failedValue: input));
  }
}
*/