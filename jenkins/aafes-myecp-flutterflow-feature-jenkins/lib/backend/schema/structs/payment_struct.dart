// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentStruct extends BaseStruct {
  PaymentStruct({
    String? accountNo,
    int? paymentNo,
    String? paymentId,
    int? profileNo,
    String? profileName,
    String? startDate,
    double? amount,
    String? paymentOptionCode,
    CodeTypeStruct? paymentOptionDesc,
    String? paymentFrequencyCode,
    CodeTypeStruct? paymentFrequencyDesc,
    String? paymentDueDate,
    double? currentBalanceAmount,
    double? minimumPaymentDue,
    double? lastStatementBalance,
    String? lastStatementDate,
    String? lastPaymentDate,
    String? nextPaymentDate,
  })  : _accountNo = accountNo,
        _paymentNo = paymentNo,
        _paymentId = paymentId,
        _profileNo = profileNo,
        _profileName = profileName,
        _startDate = startDate,
        _amount = amount,
        _paymentOptionCode = paymentOptionCode,
        _paymentOptionDesc = paymentOptionDesc,
        _paymentFrequencyCode = paymentFrequencyCode,
        _paymentFrequencyDesc = paymentFrequencyDesc,
        _paymentDueDate = paymentDueDate,
        _currentBalanceAmount = currentBalanceAmount,
        _minimumPaymentDue = minimumPaymentDue,
        _lastStatementBalance = lastStatementBalance,
        _lastStatementDate = lastStatementDate,
        _lastPaymentDate = lastPaymentDate,
        _nextPaymentDate = nextPaymentDate;

  // "AccountNo" field.
  String? _accountNo;
  String get accountNo => _accountNo ?? '';
  set accountNo(String? val) => _accountNo = val;
  bool hasAccountNo() => _accountNo != null;

  // "PaymentNo" field.
  int? _paymentNo;
  int get paymentNo => _paymentNo ?? 0;
  set paymentNo(int? val) => _paymentNo = val;
  void incrementPaymentNo(int amount) => _paymentNo = paymentNo + amount;
  bool hasPaymentNo() => _paymentNo != null;

  // "PaymentId" field.
  String? _paymentId;
  String get paymentId => _paymentId ?? '';
  set paymentId(String? val) => _paymentId = val;
  bool hasPaymentId() => _paymentId != null;

  // "ProfileNo" field.
  int? _profileNo;
  int get profileNo => _profileNo ?? 0;
  set profileNo(int? val) => _profileNo = val;
  void incrementProfileNo(int amount) => _profileNo = profileNo + amount;
  bool hasProfileNo() => _profileNo != null;

  // "ProfileName" field.
  String? _profileName;
  String get profileName => _profileName ?? '';
  set profileName(String? val) => _profileName = val;
  bool hasProfileName() => _profileName != null;

  // "StartDate" field.
  String? _startDate;
  String get startDate => _startDate ?? '';
  set startDate(String? val) => _startDate = val;
  bool hasStartDate() => _startDate != null;

  // "Amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;
  void incrementAmount(double amount) => _amount = amount + amount;
  bool hasAmount() => _amount != null;

  // "PaymentOptionCode" field.
  String? _paymentOptionCode;
  String get paymentOptionCode => _paymentOptionCode ?? '';
  set paymentOptionCode(String? val) => _paymentOptionCode = val;
  bool hasPaymentOptionCode() => _paymentOptionCode != null;

  // "PaymentOptionDesc" field.
  CodeTypeStruct? _paymentOptionDesc;
  CodeTypeStruct get paymentOptionDesc =>
      _paymentOptionDesc ?? CodeTypeStruct();
  set paymentOptionDesc(CodeTypeStruct? val) => _paymentOptionDesc = val;
  void updatePaymentOptionDesc(Function(CodeTypeStruct) updateFn) =>
      updateFn(_paymentOptionDesc ??= CodeTypeStruct());
  bool hasPaymentOptionDesc() => _paymentOptionDesc != null;

  // "PaymentFrequencyCode" field.
  String? _paymentFrequencyCode;
  String get paymentFrequencyCode => _paymentFrequencyCode ?? '';
  set paymentFrequencyCode(String? val) => _paymentFrequencyCode = val;
  bool hasPaymentFrequencyCode() => _paymentFrequencyCode != null;

  // "PaymentFrequencyDesc" field.
  CodeTypeStruct? _paymentFrequencyDesc;
  CodeTypeStruct get paymentFrequencyDesc =>
      _paymentFrequencyDesc ?? CodeTypeStruct();
  set paymentFrequencyDesc(CodeTypeStruct? val) => _paymentFrequencyDesc = val;
  void updatePaymentFrequencyDesc(Function(CodeTypeStruct) updateFn) =>
      updateFn(_paymentFrequencyDesc ??= CodeTypeStruct());
  bool hasPaymentFrequencyDesc() => _paymentFrequencyDesc != null;

  // "PaymentDueDate" field.
  String? _paymentDueDate;
  String get paymentDueDate => _paymentDueDate ?? '';
  set paymentDueDate(String? val) => _paymentDueDate = val;
  bool hasPaymentDueDate() => _paymentDueDate != null;

  // "CurrentBalanceAmount" field.
  double? _currentBalanceAmount;
  double get currentBalanceAmount => _currentBalanceAmount ?? 0.0;
  set currentBalanceAmount(double? val) => _currentBalanceAmount = val;
  void incrementCurrentBalanceAmount(double amount) =>
      _currentBalanceAmount = currentBalanceAmount + amount;
  bool hasCurrentBalanceAmount() => _currentBalanceAmount != null;

  // "MinimumPaymentDue" field.
  double? _minimumPaymentDue;
  double get minimumPaymentDue => _minimumPaymentDue ?? 0.0;
  set minimumPaymentDue(double? val) => _minimumPaymentDue = val;
  void incrementMinimumPaymentDue(double amount) =>
      _minimumPaymentDue = minimumPaymentDue + amount;
  bool hasMinimumPaymentDue() => _minimumPaymentDue != null;

  // "LastStatementBalance" field.
  double? _lastStatementBalance;
  double get lastStatementBalance => _lastStatementBalance ?? 0.0;
  set lastStatementBalance(double? val) => _lastStatementBalance = val;
  void incrementLastStatementBalance(double amount) =>
      _lastStatementBalance = lastStatementBalance + amount;
  bool hasLastStatementBalance() => _lastStatementBalance != null;

  // "LastStatementDate" field.
  String? _lastStatementDate;
  String get lastStatementDate => _lastStatementDate ?? '';
  set lastStatementDate(String? val) => _lastStatementDate = val;
  bool hasLastStatementDate() => _lastStatementDate != null;

  // "LastPaymentDate" field.
  String? _lastPaymentDate;
  String get lastPaymentDate => _lastPaymentDate ?? '';
  set lastPaymentDate(String? val) => _lastPaymentDate = val;
  bool hasLastPaymentDate() => _lastPaymentDate != null;

  // "NextPaymentDate" field.
  String? _nextPaymentDate;
  String get nextPaymentDate => _nextPaymentDate ?? '';
  set nextPaymentDate(String? val) => _nextPaymentDate = val;
  bool hasNextPaymentDate() => _nextPaymentDate != null;

  static PaymentStruct fromMap(Map<String, dynamic> data) => PaymentStruct(
        accountNo: data['AccountNo'] as String?,
        paymentNo: castToType<int>(data['PaymentNo']),
        paymentId: data['PaymentId'] as String?,
        profileNo: castToType<int>(data['ProfileNo']),
        profileName: data['ProfileName'] as String?,
        startDate: data['StartDate'] as String?,
        amount: castToType<double>(data['Amount']),
        paymentOptionCode: data['PaymentOptionCode'] as String?,
        paymentOptionDesc:
            CodeTypeStruct.maybeFromMap(data['PaymentOptionDesc']),
        paymentFrequencyCode: data['PaymentFrequencyCode'] as String?,
        paymentFrequencyDesc:
            CodeTypeStruct.maybeFromMap(data['PaymentFrequencyDesc']),
        paymentDueDate: data['PaymentDueDate'] as String?,
        currentBalanceAmount: castToType<double>(data['CurrentBalanceAmount']),
        minimumPaymentDue: castToType<double>(data['MinimumPaymentDue']),
        lastStatementBalance: castToType<double>(data['LastStatementBalance']),
        lastStatementDate: data['LastStatementDate'] as String?,
        lastPaymentDate: data['LastPaymentDate'] as String?,
        nextPaymentDate: data['NextPaymentDate'] as String?,
      );

  static PaymentStruct? maybeFromMap(dynamic data) =>
      data is Map ? PaymentStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'AccountNo': _accountNo,
        'PaymentNo': _paymentNo,
        'PaymentId': _paymentId,
        'ProfileNo': _profileNo,
        'ProfileName': _profileName,
        'StartDate': _startDate,
        'Amount': _amount,
        'PaymentOptionCode': _paymentOptionCode,
        'PaymentOptionDesc': _paymentOptionDesc?.toMap(),
        'PaymentFrequencyCode': _paymentFrequencyCode,
        'PaymentFrequencyDesc': _paymentFrequencyDesc?.toMap(),
        'PaymentDueDate': _paymentDueDate,
        'CurrentBalanceAmount': _currentBalanceAmount,
        'MinimumPaymentDue': _minimumPaymentDue,
        'LastStatementBalance': _lastStatementBalance,
        'LastStatementDate': _lastStatementDate,
        'LastPaymentDate': _lastPaymentDate,
        'NextPaymentDate': _nextPaymentDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'AccountNo': serializeParam(
          _accountNo,
          ParamType.String,
        ),
        'PaymentNo': serializeParam(
          _paymentNo,
          ParamType.int,
        ),
        'PaymentId': serializeParam(
          _paymentId,
          ParamType.String,
        ),
        'ProfileNo': serializeParam(
          _profileNo,
          ParamType.int,
        ),
        'ProfileName': serializeParam(
          _profileName,
          ParamType.String,
        ),
        'StartDate': serializeParam(
          _startDate,
          ParamType.String,
        ),
        'Amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'PaymentOptionCode': serializeParam(
          _paymentOptionCode,
          ParamType.String,
        ),
        'PaymentOptionDesc': serializeParam(
          _paymentOptionDesc,
          ParamType.DataStruct,
        ),
        'PaymentFrequencyCode': serializeParam(
          _paymentFrequencyCode,
          ParamType.String,
        ),
        'PaymentFrequencyDesc': serializeParam(
          _paymentFrequencyDesc,
          ParamType.DataStruct,
        ),
        'PaymentDueDate': serializeParam(
          _paymentDueDate,
          ParamType.String,
        ),
        'CurrentBalanceAmount': serializeParam(
          _currentBalanceAmount,
          ParamType.double,
        ),
        'MinimumPaymentDue': serializeParam(
          _minimumPaymentDue,
          ParamType.double,
        ),
        'LastStatementBalance': serializeParam(
          _lastStatementBalance,
          ParamType.double,
        ),
        'LastStatementDate': serializeParam(
          _lastStatementDate,
          ParamType.String,
        ),
        'LastPaymentDate': serializeParam(
          _lastPaymentDate,
          ParamType.String,
        ),
        'NextPaymentDate': serializeParam(
          _nextPaymentDate,
          ParamType.String,
        ),
      }.withoutNulls;

  static PaymentStruct fromSerializableMap(Map<String, dynamic> data) =>
      PaymentStruct(
        accountNo: deserializeParam(
          data['AccountNo'],
          ParamType.String,
          false,
        ),
        paymentNo: deserializeParam(
          data['PaymentNo'],
          ParamType.int,
          false,
        ),
        paymentId: deserializeParam(
          data['PaymentId'],
          ParamType.String,
          false,
        ),
        profileNo: deserializeParam(
          data['ProfileNo'],
          ParamType.int,
          false,
        ),
        profileName: deserializeParam(
          data['ProfileName'],
          ParamType.String,
          false,
        ),
        startDate: deserializeParam(
          data['StartDate'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['Amount'],
          ParamType.double,
          false,
        ),
        paymentOptionCode: deserializeParam(
          data['PaymentOptionCode'],
          ParamType.String,
          false,
        ),
        paymentOptionDesc: deserializeStructParam(
          data['PaymentOptionDesc'],
          ParamType.DataStruct,
          false,
          structBuilder: CodeTypeStruct.fromSerializableMap,
        ),
        paymentFrequencyCode: deserializeParam(
          data['PaymentFrequencyCode'],
          ParamType.String,
          false,
        ),
        paymentFrequencyDesc: deserializeStructParam(
          data['PaymentFrequencyDesc'],
          ParamType.DataStruct,
          false,
          structBuilder: CodeTypeStruct.fromSerializableMap,
        ),
        paymentDueDate: deserializeParam(
          data['PaymentDueDate'],
          ParamType.String,
          false,
        ),
        currentBalanceAmount: deserializeParam(
          data['CurrentBalanceAmount'],
          ParamType.double,
          false,
        ),
        minimumPaymentDue: deserializeParam(
          data['MinimumPaymentDue'],
          ParamType.double,
          false,
        ),
        lastStatementBalance: deserializeParam(
          data['LastStatementBalance'],
          ParamType.double,
          false,
        ),
        lastStatementDate: deserializeParam(
          data['LastStatementDate'],
          ParamType.String,
          false,
        ),
        lastPaymentDate: deserializeParam(
          data['LastPaymentDate'],
          ParamType.String,
          false,
        ),
        nextPaymentDate: deserializeParam(
          data['NextPaymentDate'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PaymentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PaymentStruct &&
        accountNo == other.accountNo &&
        paymentNo == other.paymentNo &&
        paymentId == other.paymentId &&
        profileNo == other.profileNo &&
        profileName == other.profileName &&
        startDate == other.startDate &&
        amount == other.amount &&
        paymentOptionCode == other.paymentOptionCode &&
        paymentOptionDesc == other.paymentOptionDesc &&
        paymentFrequencyCode == other.paymentFrequencyCode &&
        paymentFrequencyDesc == other.paymentFrequencyDesc &&
        paymentDueDate == other.paymentDueDate &&
        currentBalanceAmount == other.currentBalanceAmount &&
        minimumPaymentDue == other.minimumPaymentDue &&
        lastStatementBalance == other.lastStatementBalance &&
        lastStatementDate == other.lastStatementDate &&
        lastPaymentDate == other.lastPaymentDate &&
        nextPaymentDate == other.nextPaymentDate;
  }

  @override
  int get hashCode => const ListEquality().hash([
        accountNo,
        paymentNo,
        paymentId,
        profileNo,
        profileName,
        startDate,
        amount,
        paymentOptionCode,
        paymentOptionDesc,
        paymentFrequencyCode,
        paymentFrequencyDesc,
        paymentDueDate,
        currentBalanceAmount,
        minimumPaymentDue,
        lastStatementBalance,
        lastStatementDate,
        lastPaymentDate,
        nextPaymentDate
      ]);
}

PaymentStruct createPaymentStruct({
  String? accountNo,
  int? paymentNo,
  String? paymentId,
  int? profileNo,
  String? profileName,
  String? startDate,
  double? amount,
  String? paymentOptionCode,
  CodeTypeStruct? paymentOptionDesc,
  String? paymentFrequencyCode,
  CodeTypeStruct? paymentFrequencyDesc,
  String? paymentDueDate,
  double? currentBalanceAmount,
  double? minimumPaymentDue,
  double? lastStatementBalance,
  String? lastStatementDate,
  String? lastPaymentDate,
  String? nextPaymentDate,
}) =>
    PaymentStruct(
      accountNo: accountNo,
      paymentNo: paymentNo,
      paymentId: paymentId,
      profileNo: profileNo,
      profileName: profileName,
      startDate: startDate,
      amount: amount,
      paymentOptionCode: paymentOptionCode,
      paymentOptionDesc: paymentOptionDesc ?? CodeTypeStruct(),
      paymentFrequencyCode: paymentFrequencyCode,
      paymentFrequencyDesc: paymentFrequencyDesc ?? CodeTypeStruct(),
      paymentDueDate: paymentDueDate,
      currentBalanceAmount: currentBalanceAmount,
      minimumPaymentDue: minimumPaymentDue,
      lastStatementBalance: lastStatementBalance,
      lastStatementDate: lastStatementDate,
      lastPaymentDate: lastPaymentDate,
      nextPaymentDate: nextPaymentDate,
    );
