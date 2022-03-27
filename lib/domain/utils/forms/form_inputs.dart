import 'package:dartz/dartz.dart';
import 'package:patronaje_mobile_app/domain/handlers/failures/value_failure.dart';
import 'package:patronaje_mobile_app/domain/utils/forms/value_object.dart';
import 'package:patronaje_mobile_app/domain/utils/validators/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(validatePassword(input));
  }

  const Password._(this.value);
}

class NamesUser extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory NamesUser(String input) {
    return NamesUser._(validateNamesUser(input));
  }

  const NamesUser._(this.value);
}

class Phone extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Phone(String input) {
    return Phone._(validatePhone(input));
  }

  const Phone._(this.value);
}

class Height extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory Height(double input) {
    return Height._(validateHeight(input));
  }

  const Height._(this.value);
}
