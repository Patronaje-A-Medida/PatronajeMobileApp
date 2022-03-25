import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:patronaje_mobile_app/domain/handlers/errors/errors.dart';
import 'package:patronaje_mobile_app/domain/handlers/failures/value_failure.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // return value.fold((f) => throw UnexpectedValueError(f), (r) => r); -> es lo mismo pero de forma "clasica"
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
