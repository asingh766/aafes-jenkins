import 'package:collection/collection.dart';

enum PSIAlignment {
  bottom,
  left,
  right,
}

enum PasswordValidationResult {
  Invalid,
  Valid,
  NoMatch,
}

enum Auth2Factor {
  Phone,
  Email,
}

enum SelectedAmountType {
  MinimumPaymentDue,
  LastStatementBalance,
  OtherAmount,
}

enum ApplyNowStatus {
  Approved,
  Declined,
  Pending,
  Queued,
  InProcess,
  NoValue,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (PSIAlignment):
      return PSIAlignment.values.deserialize(value) as T?;
    case (PasswordValidationResult):
      return PasswordValidationResult.values.deserialize(value) as T?;
    case (Auth2Factor):
      return Auth2Factor.values.deserialize(value) as T?;
    case (SelectedAmountType):
      return SelectedAmountType.values.deserialize(value) as T?;
    case (ApplyNowStatus):
      return ApplyNowStatus.values.deserialize(value) as T?;
    default:
      return null;
  }
}
