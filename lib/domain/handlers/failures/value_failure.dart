import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required String failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.shortPassword({
    required String failedValue,
  }) = ShortPassword<T>;

  const factory ValueFailure.invalidNamesUser({
    required String failedValue,
  }) = NamesUser<T>;

  const factory ValueFailure.invalidPhone({
    required String failedValue,
  }) = Phone<T>;

  const factory ValueFailure.invalidHeight({
    required double failedValue,
  }) = Height<T>;
}
