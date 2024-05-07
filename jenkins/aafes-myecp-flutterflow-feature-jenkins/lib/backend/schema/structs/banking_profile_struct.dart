// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BankingProfileStruct extends BaseStruct {
  BankingProfileStruct({
    int? profileNumber,
    String? profileName,
    String? accountName,
    String? routingNumber,
    String? bankAccountNumber,
    String? accountTypeCode,
    String? accountNumber,
    String? bankAccountNoLast4,
  })  : _profileNumber = profileNumber,
        _profileName = profileName,
        _accountName = accountName,
        _routingNumber = routingNumber,
        _bankAccountNumber = bankAccountNumber,
        _accountTypeCode = accountTypeCode,
        _accountNumber = accountNumber,
        _bankAccountNoLast4 = bankAccountNoLast4;

  // "ProfileNumber" field.
  int? _profileNumber;
  int get profileNumber => _profileNumber ?? 0;
  set profileNumber(int? val) => _profileNumber = val;
  void incrementProfileNumber(int amount) =>
      _profileNumber = profileNumber + amount;
  bool hasProfileNumber() => _profileNumber != null;

  // "ProfileName" field.
  String? _profileName;
  String get profileName => _profileName ?? '';
  set profileName(String? val) => _profileName = val;
  bool hasProfileName() => _profileName != null;

  // "AccountName" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  set accountName(String? val) => _accountName = val;
  bool hasAccountName() => _accountName != null;

  // "RoutingNumber" field.
  String? _routingNumber;
  String get routingNumber => _routingNumber ?? '';
  set routingNumber(String? val) => _routingNumber = val;
  bool hasRoutingNumber() => _routingNumber != null;

  // "BankAccountNumber" field.
  String? _bankAccountNumber;
  String get bankAccountNumber => _bankAccountNumber ?? '';
  set bankAccountNumber(String? val) => _bankAccountNumber = val;
  bool hasBankAccountNumber() => _bankAccountNumber != null;

  // "AccountTypeCode" field.
  String? _accountTypeCode;
  String get accountTypeCode => _accountTypeCode ?? '';
  set accountTypeCode(String? val) => _accountTypeCode = val;
  bool hasAccountTypeCode() => _accountTypeCode != null;

  // "AccountNumber" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;
  bool hasAccountNumber() => _accountNumber != null;

  // "BankAccountNoLast4" field.
  String? _bankAccountNoLast4;
  String get bankAccountNoLast4 => _bankAccountNoLast4 ?? '';
  set bankAccountNoLast4(String? val) => _bankAccountNoLast4 = val;
  bool hasBankAccountNoLast4() => _bankAccountNoLast4 != null;

  static BankingProfileStruct fromMap(Map<String, dynamic> data) =>
      BankingProfileStruct(
        profileNumber: castToType<int>(data['ProfileNumber']),
        profileName: data['ProfileName'] as String?,
        accountName: data['AccountName'] as String?,
        routingNumber: data['RoutingNumber'] as String?,
        bankAccountNumber: data['BankAccountNumber'] as String?,
        accountTypeCode: data['AccountTypeCode'] as String?,
        accountNumber: data['AccountNumber'] as String?,
        bankAccountNoLast4: data['BankAccountNoLast4'] as String?,
      );

  static BankingProfileStruct? maybeFromMap(dynamic data) => data is Map
      ? BankingProfileStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ProfileNumber': _profileNumber,
        'ProfileName': _profileName,
        'AccountName': _accountName,
        'RoutingNumber': _routingNumber,
        'BankAccountNumber': _bankAccountNumber,
        'AccountTypeCode': _accountTypeCode,
        'AccountNumber': _accountNumber,
        'BankAccountNoLast4': _bankAccountNoLast4,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ProfileNumber': serializeParam(
          _profileNumber,
          ParamType.int,
        ),
        'ProfileName': serializeParam(
          _profileName,
          ParamType.String,
        ),
        'AccountName': serializeParam(
          _accountName,
          ParamType.String,
        ),
        'RoutingNumber': serializeParam(
          _routingNumber,
          ParamType.String,
        ),
        'BankAccountNumber': serializeParam(
          _bankAccountNumber,
          ParamType.String,
        ),
        'AccountTypeCode': serializeParam(
          _accountTypeCode,
          ParamType.String,
        ),
        'AccountNumber': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'BankAccountNoLast4': serializeParam(
          _bankAccountNoLast4,
          ParamType.String,
        ),
      }.withoutNulls;

  static BankingProfileStruct fromSerializableMap(Map<String, dynamic> data) =>
      BankingProfileStruct(
        profileNumber: deserializeParam(
          data['ProfileNumber'],
          ParamType.int,
          false,
        ),
        profileName: deserializeParam(
          data['ProfileName'],
          ParamType.String,
          false,
        ),
        accountName: deserializeParam(
          data['AccountName'],
          ParamType.String,
          false,
        ),
        routingNumber: deserializeParam(
          data['RoutingNumber'],
          ParamType.String,
          false,
        ),
        bankAccountNumber: deserializeParam(
          data['BankAccountNumber'],
          ParamType.String,
          false,
        ),
        accountTypeCode: deserializeParam(
          data['AccountTypeCode'],
          ParamType.String,
          false,
        ),
        accountNumber: deserializeParam(
          data['AccountNumber'],
          ParamType.String,
          false,
        ),
        bankAccountNoLast4: deserializeParam(
          data['BankAccountNoLast4'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BankingProfileStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BankingProfileStruct &&
        profileNumber == other.profileNumber &&
        profileName == other.profileName &&
        accountName == other.accountName &&
        routingNumber == other.routingNumber &&
        bankAccountNumber == other.bankAccountNumber &&
        accountTypeCode == other.accountTypeCode &&
        accountNumber == other.accountNumber &&
        bankAccountNoLast4 == other.bankAccountNoLast4;
  }

  @override
  int get hashCode => const ListEquality().hash([
        profileNumber,
        profileName,
        accountName,
        routingNumber,
        bankAccountNumber,
        accountTypeCode,
        accountNumber,
        bankAccountNoLast4
      ]);
}

BankingProfileStruct createBankingProfileStruct({
  int? profileNumber,
  String? profileName,
  String? accountName,
  String? routingNumber,
  String? bankAccountNumber,
  String? accountTypeCode,
  String? accountNumber,
  String? bankAccountNoLast4,
}) =>
    BankingProfileStruct(
      profileNumber: profileNumber,
      profileName: profileName,
      accountName: accountName,
      routingNumber: routingNumber,
      bankAccountNumber: bankAccountNumber,
      accountTypeCode: accountTypeCode,
      accountNumber: accountNumber,
      bankAccountNoLast4: bankAccountNoLast4,
    );
