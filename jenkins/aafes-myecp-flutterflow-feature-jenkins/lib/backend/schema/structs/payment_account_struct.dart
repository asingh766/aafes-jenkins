// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentAccountStruct extends BaseStruct {
  PaymentAccountStruct({
    String? productTypeDesc,
    bool? isPrimaryUser,
    String? accountNoLast4,
    String? accountNumber,
    bool? isAccountBlocked,
    List<BankingProfileStruct>? bankProfiles,
  })  : _productTypeDesc = productTypeDesc,
        _isPrimaryUser = isPrimaryUser,
        _accountNoLast4 = accountNoLast4,
        _accountNumber = accountNumber,
        _isAccountBlocked = isAccountBlocked,
        _bankProfiles = bankProfiles;

  // "ProductTypeDesc" field.
  String? _productTypeDesc;
  String get productTypeDesc => _productTypeDesc ?? '';
  set productTypeDesc(String? val) => _productTypeDesc = val;
  bool hasProductTypeDesc() => _productTypeDesc != null;

  // "IsPrimaryUser" field.
  bool? _isPrimaryUser;
  bool get isPrimaryUser => _isPrimaryUser ?? false;
  set isPrimaryUser(bool? val) => _isPrimaryUser = val;
  bool hasIsPrimaryUser() => _isPrimaryUser != null;

  // "AccountNoLast4" field.
  String? _accountNoLast4;
  String get accountNoLast4 => _accountNoLast4 ?? '';
  set accountNoLast4(String? val) => _accountNoLast4 = val;
  bool hasAccountNoLast4() => _accountNoLast4 != null;

  // "AccountNumber" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;
  bool hasAccountNumber() => _accountNumber != null;

  // "IsAccountBlocked" field.
  bool? _isAccountBlocked;
  bool get isAccountBlocked => _isAccountBlocked ?? false;
  set isAccountBlocked(bool? val) => _isAccountBlocked = val;
  bool hasIsAccountBlocked() => _isAccountBlocked != null;

  // "BankProfiles" field.
  List<BankingProfileStruct>? _bankProfiles;
  List<BankingProfileStruct> get bankProfiles => _bankProfiles ?? const [];
  set bankProfiles(List<BankingProfileStruct>? val) => _bankProfiles = val;
  void updateBankProfiles(Function(List<BankingProfileStruct>) updateFn) =>
      updateFn(_bankProfiles ??= []);
  bool hasBankProfiles() => _bankProfiles != null;

  static PaymentAccountStruct fromMap(Map<String, dynamic> data) =>
      PaymentAccountStruct(
        productTypeDesc: data['ProductTypeDesc'] as String?,
        isPrimaryUser: data['IsPrimaryUser'] as bool?,
        accountNoLast4: data['AccountNoLast4'] as String?,
        accountNumber: data['AccountNumber'] as String?,
        isAccountBlocked: data['IsAccountBlocked'] as bool?,
        bankProfiles: getStructList(
          data['BankProfiles'],
          BankingProfileStruct.fromMap,
        ),
      );

  static PaymentAccountStruct? maybeFromMap(dynamic data) => data is Map
      ? PaymentAccountStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ProductTypeDesc': _productTypeDesc,
        'IsPrimaryUser': _isPrimaryUser,
        'AccountNoLast4': _accountNoLast4,
        'AccountNumber': _accountNumber,
        'IsAccountBlocked': _isAccountBlocked,
        'BankProfiles': _bankProfiles?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ProductTypeDesc': serializeParam(
          _productTypeDesc,
          ParamType.String,
        ),
        'IsPrimaryUser': serializeParam(
          _isPrimaryUser,
          ParamType.bool,
        ),
        'AccountNoLast4': serializeParam(
          _accountNoLast4,
          ParamType.String,
        ),
        'AccountNumber': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'IsAccountBlocked': serializeParam(
          _isAccountBlocked,
          ParamType.bool,
        ),
        'BankProfiles': serializeParam(
          _bankProfiles,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static PaymentAccountStruct fromSerializableMap(Map<String, dynamic> data) =>
      PaymentAccountStruct(
        productTypeDesc: deserializeParam(
          data['ProductTypeDesc'],
          ParamType.String,
          false,
        ),
        isPrimaryUser: deserializeParam(
          data['IsPrimaryUser'],
          ParamType.bool,
          false,
        ),
        accountNoLast4: deserializeParam(
          data['AccountNoLast4'],
          ParamType.String,
          false,
        ),
        accountNumber: deserializeParam(
          data['AccountNumber'],
          ParamType.String,
          false,
        ),
        isAccountBlocked: deserializeParam(
          data['IsAccountBlocked'],
          ParamType.bool,
          false,
        ),
        bankProfiles: deserializeStructParam<BankingProfileStruct>(
          data['BankProfiles'],
          ParamType.DataStruct,
          true,
          structBuilder: BankingProfileStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PaymentAccountStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PaymentAccountStruct &&
        productTypeDesc == other.productTypeDesc &&
        isPrimaryUser == other.isPrimaryUser &&
        accountNoLast4 == other.accountNoLast4 &&
        accountNumber == other.accountNumber &&
        isAccountBlocked == other.isAccountBlocked &&
        listEquality.equals(bankProfiles, other.bankProfiles);
  }

  @override
  int get hashCode => const ListEquality().hash([
        productTypeDesc,
        isPrimaryUser,
        accountNoLast4,
        accountNumber,
        isAccountBlocked,
        bankProfiles
      ]);
}

PaymentAccountStruct createPaymentAccountStruct({
  String? productTypeDesc,
  bool? isPrimaryUser,
  String? accountNoLast4,
  String? accountNumber,
  bool? isAccountBlocked,
}) =>
    PaymentAccountStruct(
      productTypeDesc: productTypeDesc,
      isPrimaryUser: isPrimaryUser,
      accountNoLast4: accountNoLast4,
      accountNumber: accountNumber,
      isAccountBlocked: isAccountBlocked,
    );
