// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountStruct extends BaseStruct {
  AccountStruct({
    String? productTypeDesc,
    String? productDescription,
    String? paymentDueDate,
    String? lastPaymentDate,
    bool? isEnolledInPaperlessStatement,
    bool? isMinimumPaymentDue,
    bool? isPrimaryUser,
    String? accountNoLast4,
    bool? hasClothingOptionOrRemainingClothingBalance,
    String? closeProductType,
    bool? hasLastPayment,
    String? coBrandStatus,
    bool? allowChasePaymentOption,
    bool? allowACHOption,
    String? accountIndex,
    String? accountNumber,
    String? lastStatementDate,
    String? recentChargesDate,
    bool? isInstallmentPlanAvailable,
    UserRestrictionStruct? userRestriction,
  })  : _productTypeDesc = productTypeDesc,
        _productDescription = productDescription,
        _paymentDueDate = paymentDueDate,
        _lastPaymentDate = lastPaymentDate,
        _isEnolledInPaperlessStatement = isEnolledInPaperlessStatement,
        _isMinimumPaymentDue = isMinimumPaymentDue,
        _isPrimaryUser = isPrimaryUser,
        _accountNoLast4 = accountNoLast4,
        _hasClothingOptionOrRemainingClothingBalance =
            hasClothingOptionOrRemainingClothingBalance,
        _closeProductType = closeProductType,
        _hasLastPayment = hasLastPayment,
        _coBrandStatus = coBrandStatus,
        _allowChasePaymentOption = allowChasePaymentOption,
        _allowACHOption = allowACHOption,
        _accountIndex = accountIndex,
        _accountNumber = accountNumber,
        _lastStatementDate = lastStatementDate,
        _recentChargesDate = recentChargesDate,
        _isInstallmentPlanAvailable = isInstallmentPlanAvailable,
        _userRestriction = userRestriction;

  // "ProductTypeDesc" field.
  String? _productTypeDesc;
  String get productTypeDesc => _productTypeDesc ?? '';
  set productTypeDesc(String? val) => _productTypeDesc = val;
  bool hasProductTypeDesc() => _productTypeDesc != null;

  // "ProductDescription" field.
  String? _productDescription;
  String get productDescription => _productDescription ?? '';
  set productDescription(String? val) => _productDescription = val;
  bool hasProductDescription() => _productDescription != null;

  // "PaymentDueDate" field.
  String? _paymentDueDate;
  String get paymentDueDate => _paymentDueDate ?? '';
  set paymentDueDate(String? val) => _paymentDueDate = val;
  bool hasPaymentDueDate() => _paymentDueDate != null;

  // "LastPaymentDate" field.
  String? _lastPaymentDate;
  String get lastPaymentDate => _lastPaymentDate ?? '';
  set lastPaymentDate(String? val) => _lastPaymentDate = val;
  bool hasLastPaymentDate() => _lastPaymentDate != null;

  // "IsEnolledInPaperlessStatement" field.
  bool? _isEnolledInPaperlessStatement;
  bool get isEnolledInPaperlessStatement =>
      _isEnolledInPaperlessStatement ?? false;
  set isEnolledInPaperlessStatement(bool? val) =>
      _isEnolledInPaperlessStatement = val;
  bool hasIsEnolledInPaperlessStatement() =>
      _isEnolledInPaperlessStatement != null;

  // "IsMinimumPaymentDue" field.
  bool? _isMinimumPaymentDue;
  bool get isMinimumPaymentDue => _isMinimumPaymentDue ?? false;
  set isMinimumPaymentDue(bool? val) => _isMinimumPaymentDue = val;
  bool hasIsMinimumPaymentDue() => _isMinimumPaymentDue != null;

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

  // "HasClothingOptionOrRemainingClothingBalance" field.
  bool? _hasClothingOptionOrRemainingClothingBalance;
  bool get hasClothingOptionOrRemainingClothingBalance =>
      _hasClothingOptionOrRemainingClothingBalance ?? false;
  set hasClothingOptionOrRemainingClothingBalance(bool? val) =>
      _hasClothingOptionOrRemainingClothingBalance = val;
  bool hasHasClothingOptionOrRemainingClothingBalance() =>
      _hasClothingOptionOrRemainingClothingBalance != null;

  // "CloseProductType" field.
  String? _closeProductType;
  String get closeProductType => _closeProductType ?? '';
  set closeProductType(String? val) => _closeProductType = val;
  bool hasCloseProductType() => _closeProductType != null;

  // "HasLastPayment" field.
  bool? _hasLastPayment;
  bool get hasLastPayment => _hasLastPayment ?? false;
  set hasLastPayment(bool? val) => _hasLastPayment = val;
  bool hasHasLastPayment() => _hasLastPayment != null;

  // "CoBrandStatus" field.
  String? _coBrandStatus;
  String get coBrandStatus => _coBrandStatus ?? '';
  set coBrandStatus(String? val) => _coBrandStatus = val;
  bool hasCoBrandStatus() => _coBrandStatus != null;

  // "AllowChasePaymentOption" field.
  bool? _allowChasePaymentOption;
  bool get allowChasePaymentOption => _allowChasePaymentOption ?? false;
  set allowChasePaymentOption(bool? val) => _allowChasePaymentOption = val;
  bool hasAllowChasePaymentOption() => _allowChasePaymentOption != null;

  // "AllowACHOption" field.
  bool? _allowACHOption;
  bool get allowACHOption => _allowACHOption ?? false;
  set allowACHOption(bool? val) => _allowACHOption = val;
  bool hasAllowACHOption() => _allowACHOption != null;

  // "AccountIndex" field.
  String? _accountIndex;
  String get accountIndex => _accountIndex ?? '';
  set accountIndex(String? val) => _accountIndex = val;
  bool hasAccountIndex() => _accountIndex != null;

  // "AccountNumber" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;
  bool hasAccountNumber() => _accountNumber != null;

  // "LastStatementDate" field.
  String? _lastStatementDate;
  String get lastStatementDate => _lastStatementDate ?? '';
  set lastStatementDate(String? val) => _lastStatementDate = val;
  bool hasLastStatementDate() => _lastStatementDate != null;

  // "RecentChargesDate" field.
  String? _recentChargesDate;
  String get recentChargesDate => _recentChargesDate ?? '';
  set recentChargesDate(String? val) => _recentChargesDate = val;
  bool hasRecentChargesDate() => _recentChargesDate != null;

  // "IsInstallmentPlanAvailable" field.
  bool? _isInstallmentPlanAvailable;
  bool get isInstallmentPlanAvailable => _isInstallmentPlanAvailable ?? false;
  set isInstallmentPlanAvailable(bool? val) =>
      _isInstallmentPlanAvailable = val;
  bool hasIsInstallmentPlanAvailable() => _isInstallmentPlanAvailable != null;

  // "UserRestriction" field.
  UserRestrictionStruct? _userRestriction;
  UserRestrictionStruct get userRestriction =>
      _userRestriction ?? UserRestrictionStruct();
  set userRestriction(UserRestrictionStruct? val) => _userRestriction = val;
  void updateUserRestriction(Function(UserRestrictionStruct) updateFn) =>
      updateFn(_userRestriction ??= UserRestrictionStruct());
  bool hasUserRestriction() => _userRestriction != null;

  static AccountStruct fromMap(Map<String, dynamic> data) => AccountStruct(
        productTypeDesc: data['ProductTypeDesc'] as String?,
        productDescription: data['ProductDescription'] as String?,
        paymentDueDate: data['PaymentDueDate'] as String?,
        lastPaymentDate: data['LastPaymentDate'] as String?,
        isEnolledInPaperlessStatement:
            data['IsEnolledInPaperlessStatement'] as bool?,
        isMinimumPaymentDue: data['IsMinimumPaymentDue'] as bool?,
        isPrimaryUser: data['IsPrimaryUser'] as bool?,
        accountNoLast4: data['AccountNoLast4'] as String?,
        hasClothingOptionOrRemainingClothingBalance:
            data['HasClothingOptionOrRemainingClothingBalance'] as bool?,
        closeProductType: data['CloseProductType'] as String?,
        hasLastPayment: data['HasLastPayment'] as bool?,
        coBrandStatus: data['CoBrandStatus'] as String?,
        allowChasePaymentOption: data['AllowChasePaymentOption'] as bool?,
        allowACHOption: data['AllowACHOption'] as bool?,
        accountIndex: data['AccountIndex'] as String?,
        accountNumber: data['AccountNumber'] as String?,
        lastStatementDate: data['LastStatementDate'] as String?,
        recentChargesDate: data['RecentChargesDate'] as String?,
        isInstallmentPlanAvailable: data['IsInstallmentPlanAvailable'] as bool?,
        userRestriction:
            UserRestrictionStruct.maybeFromMap(data['UserRestriction']),
      );

  static AccountStruct? maybeFromMap(dynamic data) =>
      data is Map ? AccountStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'ProductTypeDesc': _productTypeDesc,
        'ProductDescription': _productDescription,
        'PaymentDueDate': _paymentDueDate,
        'LastPaymentDate': _lastPaymentDate,
        'IsEnolledInPaperlessStatement': _isEnolledInPaperlessStatement,
        'IsMinimumPaymentDue': _isMinimumPaymentDue,
        'IsPrimaryUser': _isPrimaryUser,
        'AccountNoLast4': _accountNoLast4,
        'HasClothingOptionOrRemainingClothingBalance':
            _hasClothingOptionOrRemainingClothingBalance,
        'CloseProductType': _closeProductType,
        'HasLastPayment': _hasLastPayment,
        'CoBrandStatus': _coBrandStatus,
        'AllowChasePaymentOption': _allowChasePaymentOption,
        'AllowACHOption': _allowACHOption,
        'AccountIndex': _accountIndex,
        'AccountNumber': _accountNumber,
        'LastStatementDate': _lastStatementDate,
        'RecentChargesDate': _recentChargesDate,
        'IsInstallmentPlanAvailable': _isInstallmentPlanAvailable,
        'UserRestriction': _userRestriction?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ProductTypeDesc': serializeParam(
          _productTypeDesc,
          ParamType.String,
        ),
        'ProductDescription': serializeParam(
          _productDescription,
          ParamType.String,
        ),
        'PaymentDueDate': serializeParam(
          _paymentDueDate,
          ParamType.String,
        ),
        'LastPaymentDate': serializeParam(
          _lastPaymentDate,
          ParamType.String,
        ),
        'IsEnolledInPaperlessStatement': serializeParam(
          _isEnolledInPaperlessStatement,
          ParamType.bool,
        ),
        'IsMinimumPaymentDue': serializeParam(
          _isMinimumPaymentDue,
          ParamType.bool,
        ),
        'IsPrimaryUser': serializeParam(
          _isPrimaryUser,
          ParamType.bool,
        ),
        'AccountNoLast4': serializeParam(
          _accountNoLast4,
          ParamType.String,
        ),
        'HasClothingOptionOrRemainingClothingBalance': serializeParam(
          _hasClothingOptionOrRemainingClothingBalance,
          ParamType.bool,
        ),
        'CloseProductType': serializeParam(
          _closeProductType,
          ParamType.String,
        ),
        'HasLastPayment': serializeParam(
          _hasLastPayment,
          ParamType.bool,
        ),
        'CoBrandStatus': serializeParam(
          _coBrandStatus,
          ParamType.String,
        ),
        'AllowChasePaymentOption': serializeParam(
          _allowChasePaymentOption,
          ParamType.bool,
        ),
        'AllowACHOption': serializeParam(
          _allowACHOption,
          ParamType.bool,
        ),
        'AccountIndex': serializeParam(
          _accountIndex,
          ParamType.String,
        ),
        'AccountNumber': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'LastStatementDate': serializeParam(
          _lastStatementDate,
          ParamType.String,
        ),
        'RecentChargesDate': serializeParam(
          _recentChargesDate,
          ParamType.String,
        ),
        'IsInstallmentPlanAvailable': serializeParam(
          _isInstallmentPlanAvailable,
          ParamType.bool,
        ),
        'UserRestriction': serializeParam(
          _userRestriction,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AccountStruct fromSerializableMap(Map<String, dynamic> data) =>
      AccountStruct(
        productTypeDesc: deserializeParam(
          data['ProductTypeDesc'],
          ParamType.String,
          false,
        ),
        productDescription: deserializeParam(
          data['ProductDescription'],
          ParamType.String,
          false,
        ),
        paymentDueDate: deserializeParam(
          data['PaymentDueDate'],
          ParamType.String,
          false,
        ),
        lastPaymentDate: deserializeParam(
          data['LastPaymentDate'],
          ParamType.String,
          false,
        ),
        isEnolledInPaperlessStatement: deserializeParam(
          data['IsEnolledInPaperlessStatement'],
          ParamType.bool,
          false,
        ),
        isMinimumPaymentDue: deserializeParam(
          data['IsMinimumPaymentDue'],
          ParamType.bool,
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
        hasClothingOptionOrRemainingClothingBalance: deserializeParam(
          data['HasClothingOptionOrRemainingClothingBalance'],
          ParamType.bool,
          false,
        ),
        closeProductType: deserializeParam(
          data['CloseProductType'],
          ParamType.String,
          false,
        ),
        hasLastPayment: deserializeParam(
          data['HasLastPayment'],
          ParamType.bool,
          false,
        ),
        coBrandStatus: deserializeParam(
          data['CoBrandStatus'],
          ParamType.String,
          false,
        ),
        allowChasePaymentOption: deserializeParam(
          data['AllowChasePaymentOption'],
          ParamType.bool,
          false,
        ),
        allowACHOption: deserializeParam(
          data['AllowACHOption'],
          ParamType.bool,
          false,
        ),
        accountIndex: deserializeParam(
          data['AccountIndex'],
          ParamType.String,
          false,
        ),
        accountNumber: deserializeParam(
          data['AccountNumber'],
          ParamType.String,
          false,
        ),
        lastStatementDate: deserializeParam(
          data['LastStatementDate'],
          ParamType.String,
          false,
        ),
        recentChargesDate: deserializeParam(
          data['RecentChargesDate'],
          ParamType.String,
          false,
        ),
        isInstallmentPlanAvailable: deserializeParam(
          data['IsInstallmentPlanAvailable'],
          ParamType.bool,
          false,
        ),
        userRestriction: deserializeStructParam(
          data['UserRestriction'],
          ParamType.DataStruct,
          false,
          structBuilder: UserRestrictionStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AccountStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AccountStruct &&
        productTypeDesc == other.productTypeDesc &&
        productDescription == other.productDescription &&
        paymentDueDate == other.paymentDueDate &&
        lastPaymentDate == other.lastPaymentDate &&
        isEnolledInPaperlessStatement == other.isEnolledInPaperlessStatement &&
        isMinimumPaymentDue == other.isMinimumPaymentDue &&
        isPrimaryUser == other.isPrimaryUser &&
        accountNoLast4 == other.accountNoLast4 &&
        hasClothingOptionOrRemainingClothingBalance ==
            other.hasClothingOptionOrRemainingClothingBalance &&
        closeProductType == other.closeProductType &&
        hasLastPayment == other.hasLastPayment &&
        coBrandStatus == other.coBrandStatus &&
        allowChasePaymentOption == other.allowChasePaymentOption &&
        allowACHOption == other.allowACHOption &&
        accountIndex == other.accountIndex &&
        accountNumber == other.accountNumber &&
        lastStatementDate == other.lastStatementDate &&
        recentChargesDate == other.recentChargesDate &&
        isInstallmentPlanAvailable == other.isInstallmentPlanAvailable &&
        userRestriction == other.userRestriction;
  }

  @override
  int get hashCode => const ListEquality().hash([
        productTypeDesc,
        productDescription,
        paymentDueDate,
        lastPaymentDate,
        isEnolledInPaperlessStatement,
        isMinimumPaymentDue,
        isPrimaryUser,
        accountNoLast4,
        hasClothingOptionOrRemainingClothingBalance,
        closeProductType,
        hasLastPayment,
        coBrandStatus,
        allowChasePaymentOption,
        allowACHOption,
        accountIndex,
        accountNumber,
        lastStatementDate,
        recentChargesDate,
        isInstallmentPlanAvailable,
        userRestriction
      ]);
}

AccountStruct createAccountStruct({
  String? productTypeDesc,
  String? productDescription,
  String? paymentDueDate,
  String? lastPaymentDate,
  bool? isEnolledInPaperlessStatement,
  bool? isMinimumPaymentDue,
  bool? isPrimaryUser,
  String? accountNoLast4,
  bool? hasClothingOptionOrRemainingClothingBalance,
  String? closeProductType,
  bool? hasLastPayment,
  String? coBrandStatus,
  bool? allowChasePaymentOption,
  bool? allowACHOption,
  String? accountIndex,
  String? accountNumber,
  String? lastStatementDate,
  String? recentChargesDate,
  bool? isInstallmentPlanAvailable,
  UserRestrictionStruct? userRestriction,
}) =>
    AccountStruct(
      productTypeDesc: productTypeDesc,
      productDescription: productDescription,
      paymentDueDate: paymentDueDate,
      lastPaymentDate: lastPaymentDate,
      isEnolledInPaperlessStatement: isEnolledInPaperlessStatement,
      isMinimumPaymentDue: isMinimumPaymentDue,
      isPrimaryUser: isPrimaryUser,
      accountNoLast4: accountNoLast4,
      hasClothingOptionOrRemainingClothingBalance:
          hasClothingOptionOrRemainingClothingBalance,
      closeProductType: closeProductType,
      hasLastPayment: hasLastPayment,
      coBrandStatus: coBrandStatus,
      allowChasePaymentOption: allowChasePaymentOption,
      allowACHOption: allowACHOption,
      accountIndex: accountIndex,
      accountNumber: accountNumber,
      lastStatementDate: lastStatementDate,
      recentChargesDate: recentChargesDate,
      isInstallmentPlanAvailable: isInstallmentPlanAvailable,
      userRestriction: userRestriction ?? UserRestrictionStruct(),
    );
