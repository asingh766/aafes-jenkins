// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SecurityAlertsStruct extends BaseStruct {
  SecurityAlertsStruct({
    bool? isTwoFactorAuthenticationEmail,
    bool? isTwoFactorAuthenticationText,
    bool? isPaymentReceivedEmail,
    bool? isPaymentReceivedText,
    int? paymentReminderDueDays,
    bool? isPaymentReminderEmail,
    bool? isPaymentReminderText,
    bool? isStatementReadyEmail,
    bool? isStatementReadyText,
    bool? isPastDueReminderEmail,
    bool? isPastDueReminderText,
    int? transactionAmount,
    bool? isTransactionAmountEmail,
    bool? isTransactionAmountText,
    int? currentBalance,
    bool? isCurrentBalanceEmail,
    bool? isCurrentBalanceText,
    int? availableBalance,
    bool? isAvailableBalanceEmail,
    bool? isAvailableBalanceText,
    bool? isCardNotPresentEmail,
    bool? isCardNotPresentText,
    String? isUserOptedForAnyAlert,
    String? isUserEnrollForSMSAlert,
    String? isUserOptedForTwoFA,
    bool? isUserOptedForTwoFASMS,
    bool? isUserOptedForTwoFAEmail,
  })  : _isTwoFactorAuthenticationEmail = isTwoFactorAuthenticationEmail,
        _isTwoFactorAuthenticationText = isTwoFactorAuthenticationText,
        _isPaymentReceivedEmail = isPaymentReceivedEmail,
        _isPaymentReceivedText = isPaymentReceivedText,
        _paymentReminderDueDays = paymentReminderDueDays,
        _isPaymentReminderEmail = isPaymentReminderEmail,
        _isPaymentReminderText = isPaymentReminderText,
        _isStatementReadyEmail = isStatementReadyEmail,
        _isStatementReadyText = isStatementReadyText,
        _isPastDueReminderEmail = isPastDueReminderEmail,
        _isPastDueReminderText = isPastDueReminderText,
        _transactionAmount = transactionAmount,
        _isTransactionAmountEmail = isTransactionAmountEmail,
        _isTransactionAmountText = isTransactionAmountText,
        _currentBalance = currentBalance,
        _isCurrentBalanceEmail = isCurrentBalanceEmail,
        _isCurrentBalanceText = isCurrentBalanceText,
        _availableBalance = availableBalance,
        _isAvailableBalanceEmail = isAvailableBalanceEmail,
        _isAvailableBalanceText = isAvailableBalanceText,
        _isCardNotPresentEmail = isCardNotPresentEmail,
        _isCardNotPresentText = isCardNotPresentText,
        _isUserOptedForAnyAlert = isUserOptedForAnyAlert,
        _isUserEnrollForSMSAlert = isUserEnrollForSMSAlert,
        _isUserOptedForTwoFA = isUserOptedForTwoFA,
        _isUserOptedForTwoFASMS = isUserOptedForTwoFASMS,
        _isUserOptedForTwoFAEmail = isUserOptedForTwoFAEmail;

  // "IsTwoFactorAuthenticationEmail" field.
  bool? _isTwoFactorAuthenticationEmail;
  bool get isTwoFactorAuthenticationEmail =>
      _isTwoFactorAuthenticationEmail ?? false;
  set isTwoFactorAuthenticationEmail(bool? val) =>
      _isTwoFactorAuthenticationEmail = val;
  bool hasIsTwoFactorAuthenticationEmail() =>
      _isTwoFactorAuthenticationEmail != null;

  // "IsTwoFactorAuthenticationText" field.
  bool? _isTwoFactorAuthenticationText;
  bool get isTwoFactorAuthenticationText =>
      _isTwoFactorAuthenticationText ?? false;
  set isTwoFactorAuthenticationText(bool? val) =>
      _isTwoFactorAuthenticationText = val;
  bool hasIsTwoFactorAuthenticationText() =>
      _isTwoFactorAuthenticationText != null;

  // "IsPaymentReceivedEmail" field.
  bool? _isPaymentReceivedEmail;
  bool get isPaymentReceivedEmail => _isPaymentReceivedEmail ?? false;
  set isPaymentReceivedEmail(bool? val) => _isPaymentReceivedEmail = val;
  bool hasIsPaymentReceivedEmail() => _isPaymentReceivedEmail != null;

  // "IsPaymentReceivedText" field.
  bool? _isPaymentReceivedText;
  bool get isPaymentReceivedText => _isPaymentReceivedText ?? false;
  set isPaymentReceivedText(bool? val) => _isPaymentReceivedText = val;
  bool hasIsPaymentReceivedText() => _isPaymentReceivedText != null;

  // "PaymentReminderDueDays" field.
  int? _paymentReminderDueDays;
  int get paymentReminderDueDays => _paymentReminderDueDays ?? 0;
  set paymentReminderDueDays(int? val) => _paymentReminderDueDays = val;
  void incrementPaymentReminderDueDays(int amount) =>
      _paymentReminderDueDays = paymentReminderDueDays + amount;
  bool hasPaymentReminderDueDays() => _paymentReminderDueDays != null;

  // "IsPaymentReminderEmail" field.
  bool? _isPaymentReminderEmail;
  bool get isPaymentReminderEmail => _isPaymentReminderEmail ?? false;
  set isPaymentReminderEmail(bool? val) => _isPaymentReminderEmail = val;
  bool hasIsPaymentReminderEmail() => _isPaymentReminderEmail != null;

  // "IsPaymentReminderText" field.
  bool? _isPaymentReminderText;
  bool get isPaymentReminderText => _isPaymentReminderText ?? false;
  set isPaymentReminderText(bool? val) => _isPaymentReminderText = val;
  bool hasIsPaymentReminderText() => _isPaymentReminderText != null;

  // "IsStatementReadyEmail" field.
  bool? _isStatementReadyEmail;
  bool get isStatementReadyEmail => _isStatementReadyEmail ?? false;
  set isStatementReadyEmail(bool? val) => _isStatementReadyEmail = val;
  bool hasIsStatementReadyEmail() => _isStatementReadyEmail != null;

  // "IsStatementReadyText" field.
  bool? _isStatementReadyText;
  bool get isStatementReadyText => _isStatementReadyText ?? false;
  set isStatementReadyText(bool? val) => _isStatementReadyText = val;
  bool hasIsStatementReadyText() => _isStatementReadyText != null;

  // "IsPastDueReminderEmail" field.
  bool? _isPastDueReminderEmail;
  bool get isPastDueReminderEmail => _isPastDueReminderEmail ?? false;
  set isPastDueReminderEmail(bool? val) => _isPastDueReminderEmail = val;
  bool hasIsPastDueReminderEmail() => _isPastDueReminderEmail != null;

  // "IsPastDueReminderText" field.
  bool? _isPastDueReminderText;
  bool get isPastDueReminderText => _isPastDueReminderText ?? false;
  set isPastDueReminderText(bool? val) => _isPastDueReminderText = val;
  bool hasIsPastDueReminderText() => _isPastDueReminderText != null;

  // "TransactionAmount" field.
  int? _transactionAmount;
  int get transactionAmount => _transactionAmount ?? 0;
  set transactionAmount(int? val) => _transactionAmount = val;
  void incrementTransactionAmount(int amount) =>
      _transactionAmount = transactionAmount + amount;
  bool hasTransactionAmount() => _transactionAmount != null;

  // "IsTransactionAmountEmail" field.
  bool? _isTransactionAmountEmail;
  bool get isTransactionAmountEmail => _isTransactionAmountEmail ?? false;
  set isTransactionAmountEmail(bool? val) => _isTransactionAmountEmail = val;
  bool hasIsTransactionAmountEmail() => _isTransactionAmountEmail != null;

  // "IsTransactionAmountText" field.
  bool? _isTransactionAmountText;
  bool get isTransactionAmountText => _isTransactionAmountText ?? false;
  set isTransactionAmountText(bool? val) => _isTransactionAmountText = val;
  bool hasIsTransactionAmountText() => _isTransactionAmountText != null;

  // "CurrentBalance" field.
  int? _currentBalance;
  int get currentBalance => _currentBalance ?? 0;
  set currentBalance(int? val) => _currentBalance = val;
  void incrementCurrentBalance(int amount) =>
      _currentBalance = currentBalance + amount;
  bool hasCurrentBalance() => _currentBalance != null;

  // "IsCurrentBalanceEmail" field.
  bool? _isCurrentBalanceEmail;
  bool get isCurrentBalanceEmail => _isCurrentBalanceEmail ?? false;
  set isCurrentBalanceEmail(bool? val) => _isCurrentBalanceEmail = val;
  bool hasIsCurrentBalanceEmail() => _isCurrentBalanceEmail != null;

  // "IsCurrentBalanceText" field.
  bool? _isCurrentBalanceText;
  bool get isCurrentBalanceText => _isCurrentBalanceText ?? false;
  set isCurrentBalanceText(bool? val) => _isCurrentBalanceText = val;
  bool hasIsCurrentBalanceText() => _isCurrentBalanceText != null;

  // "AvailableBalance" field.
  int? _availableBalance;
  int get availableBalance => _availableBalance ?? 0;
  set availableBalance(int? val) => _availableBalance = val;
  void incrementAvailableBalance(int amount) =>
      _availableBalance = availableBalance + amount;
  bool hasAvailableBalance() => _availableBalance != null;

  // "IsAvailableBalanceEmail" field.
  bool? _isAvailableBalanceEmail;
  bool get isAvailableBalanceEmail => _isAvailableBalanceEmail ?? false;
  set isAvailableBalanceEmail(bool? val) => _isAvailableBalanceEmail = val;
  bool hasIsAvailableBalanceEmail() => _isAvailableBalanceEmail != null;

  // "IsAvailableBalanceText" field.
  bool? _isAvailableBalanceText;
  bool get isAvailableBalanceText => _isAvailableBalanceText ?? false;
  set isAvailableBalanceText(bool? val) => _isAvailableBalanceText = val;
  bool hasIsAvailableBalanceText() => _isAvailableBalanceText != null;

  // "IsCardNotPresentEmail" field.
  bool? _isCardNotPresentEmail;
  bool get isCardNotPresentEmail => _isCardNotPresentEmail ?? false;
  set isCardNotPresentEmail(bool? val) => _isCardNotPresentEmail = val;
  bool hasIsCardNotPresentEmail() => _isCardNotPresentEmail != null;

  // "IsCardNotPresentText" field.
  bool? _isCardNotPresentText;
  bool get isCardNotPresentText => _isCardNotPresentText ?? false;
  set isCardNotPresentText(bool? val) => _isCardNotPresentText = val;
  bool hasIsCardNotPresentText() => _isCardNotPresentText != null;

  // "IsUserOptedForAnyAlert" field.
  String? _isUserOptedForAnyAlert;
  String get isUserOptedForAnyAlert => _isUserOptedForAnyAlert ?? '';
  set isUserOptedForAnyAlert(String? val) => _isUserOptedForAnyAlert = val;
  bool hasIsUserOptedForAnyAlert() => _isUserOptedForAnyAlert != null;

  // "IsUserEnrollForSMSAlert" field.
  String? _isUserEnrollForSMSAlert;
  String get isUserEnrollForSMSAlert => _isUserEnrollForSMSAlert ?? '';
  set isUserEnrollForSMSAlert(String? val) => _isUserEnrollForSMSAlert = val;
  bool hasIsUserEnrollForSMSAlert() => _isUserEnrollForSMSAlert != null;

  // "IsUserOptedForTwoFA" field.
  String? _isUserOptedForTwoFA;
  String get isUserOptedForTwoFA => _isUserOptedForTwoFA ?? '';
  set isUserOptedForTwoFA(String? val) => _isUserOptedForTwoFA = val;
  bool hasIsUserOptedForTwoFA() => _isUserOptedForTwoFA != null;

  // "IsUserOptedForTwoFASMS" field.
  bool? _isUserOptedForTwoFASMS;
  bool get isUserOptedForTwoFASMS => _isUserOptedForTwoFASMS ?? false;
  set isUserOptedForTwoFASMS(bool? val) => _isUserOptedForTwoFASMS = val;
  bool hasIsUserOptedForTwoFASMS() => _isUserOptedForTwoFASMS != null;

  // "IsUserOptedForTwoFAEmail" field.
  bool? _isUserOptedForTwoFAEmail;
  bool get isUserOptedForTwoFAEmail => _isUserOptedForTwoFAEmail ?? false;
  set isUserOptedForTwoFAEmail(bool? val) => _isUserOptedForTwoFAEmail = val;
  bool hasIsUserOptedForTwoFAEmail() => _isUserOptedForTwoFAEmail != null;

  static SecurityAlertsStruct fromMap(Map<String, dynamic> data) =>
      SecurityAlertsStruct(
        isTwoFactorAuthenticationEmail:
            data['IsTwoFactorAuthenticationEmail'] as bool?,
        isTwoFactorAuthenticationText:
            data['IsTwoFactorAuthenticationText'] as bool?,
        isPaymentReceivedEmail: data['IsPaymentReceivedEmail'] as bool?,
        isPaymentReceivedText: data['IsPaymentReceivedText'] as bool?,
        paymentReminderDueDays: castToType<int>(data['PaymentReminderDueDays']),
        isPaymentReminderEmail: data['IsPaymentReminderEmail'] as bool?,
        isPaymentReminderText: data['IsPaymentReminderText'] as bool?,
        isStatementReadyEmail: data['IsStatementReadyEmail'] as bool?,
        isStatementReadyText: data['IsStatementReadyText'] as bool?,
        isPastDueReminderEmail: data['IsPastDueReminderEmail'] as bool?,
        isPastDueReminderText: data['IsPastDueReminderText'] as bool?,
        transactionAmount: castToType<int>(data['TransactionAmount']),
        isTransactionAmountEmail: data['IsTransactionAmountEmail'] as bool?,
        isTransactionAmountText: data['IsTransactionAmountText'] as bool?,
        currentBalance: castToType<int>(data['CurrentBalance']),
        isCurrentBalanceEmail: data['IsCurrentBalanceEmail'] as bool?,
        isCurrentBalanceText: data['IsCurrentBalanceText'] as bool?,
        availableBalance: castToType<int>(data['AvailableBalance']),
        isAvailableBalanceEmail: data['IsAvailableBalanceEmail'] as bool?,
        isAvailableBalanceText: data['IsAvailableBalanceText'] as bool?,
        isCardNotPresentEmail: data['IsCardNotPresentEmail'] as bool?,
        isCardNotPresentText: data['IsCardNotPresentText'] as bool?,
        isUserOptedForAnyAlert: data['IsUserOptedForAnyAlert'] as String?,
        isUserEnrollForSMSAlert: data['IsUserEnrollForSMSAlert'] as String?,
        isUserOptedForTwoFA: data['IsUserOptedForTwoFA'] as String?,
        isUserOptedForTwoFASMS: data['IsUserOptedForTwoFASMS'] as bool?,
        isUserOptedForTwoFAEmail: data['IsUserOptedForTwoFAEmail'] as bool?,
      );

  static SecurityAlertsStruct? maybeFromMap(dynamic data) => data is Map
      ? SecurityAlertsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'IsTwoFactorAuthenticationEmail': _isTwoFactorAuthenticationEmail,
        'IsTwoFactorAuthenticationText': _isTwoFactorAuthenticationText,
        'IsPaymentReceivedEmail': _isPaymentReceivedEmail,
        'IsPaymentReceivedText': _isPaymentReceivedText,
        'PaymentReminderDueDays': _paymentReminderDueDays,
        'IsPaymentReminderEmail': _isPaymentReminderEmail,
        'IsPaymentReminderText': _isPaymentReminderText,
        'IsStatementReadyEmail': _isStatementReadyEmail,
        'IsStatementReadyText': _isStatementReadyText,
        'IsPastDueReminderEmail': _isPastDueReminderEmail,
        'IsPastDueReminderText': _isPastDueReminderText,
        'TransactionAmount': _transactionAmount,
        'IsTransactionAmountEmail': _isTransactionAmountEmail,
        'IsTransactionAmountText': _isTransactionAmountText,
        'CurrentBalance': _currentBalance,
        'IsCurrentBalanceEmail': _isCurrentBalanceEmail,
        'IsCurrentBalanceText': _isCurrentBalanceText,
        'AvailableBalance': _availableBalance,
        'IsAvailableBalanceEmail': _isAvailableBalanceEmail,
        'IsAvailableBalanceText': _isAvailableBalanceText,
        'IsCardNotPresentEmail': _isCardNotPresentEmail,
        'IsCardNotPresentText': _isCardNotPresentText,
        'IsUserOptedForAnyAlert': _isUserOptedForAnyAlert,
        'IsUserEnrollForSMSAlert': _isUserEnrollForSMSAlert,
        'IsUserOptedForTwoFA': _isUserOptedForTwoFA,
        'IsUserOptedForTwoFASMS': _isUserOptedForTwoFASMS,
        'IsUserOptedForTwoFAEmail': _isUserOptedForTwoFAEmail,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'IsTwoFactorAuthenticationEmail': serializeParam(
          _isTwoFactorAuthenticationEmail,
          ParamType.bool,
        ),
        'IsTwoFactorAuthenticationText': serializeParam(
          _isTwoFactorAuthenticationText,
          ParamType.bool,
        ),
        'IsPaymentReceivedEmail': serializeParam(
          _isPaymentReceivedEmail,
          ParamType.bool,
        ),
        'IsPaymentReceivedText': serializeParam(
          _isPaymentReceivedText,
          ParamType.bool,
        ),
        'PaymentReminderDueDays': serializeParam(
          _paymentReminderDueDays,
          ParamType.int,
        ),
        'IsPaymentReminderEmail': serializeParam(
          _isPaymentReminderEmail,
          ParamType.bool,
        ),
        'IsPaymentReminderText': serializeParam(
          _isPaymentReminderText,
          ParamType.bool,
        ),
        'IsStatementReadyEmail': serializeParam(
          _isStatementReadyEmail,
          ParamType.bool,
        ),
        'IsStatementReadyText': serializeParam(
          _isStatementReadyText,
          ParamType.bool,
        ),
        'IsPastDueReminderEmail': serializeParam(
          _isPastDueReminderEmail,
          ParamType.bool,
        ),
        'IsPastDueReminderText': serializeParam(
          _isPastDueReminderText,
          ParamType.bool,
        ),
        'TransactionAmount': serializeParam(
          _transactionAmount,
          ParamType.int,
        ),
        'IsTransactionAmountEmail': serializeParam(
          _isTransactionAmountEmail,
          ParamType.bool,
        ),
        'IsTransactionAmountText': serializeParam(
          _isTransactionAmountText,
          ParamType.bool,
        ),
        'CurrentBalance': serializeParam(
          _currentBalance,
          ParamType.int,
        ),
        'IsCurrentBalanceEmail': serializeParam(
          _isCurrentBalanceEmail,
          ParamType.bool,
        ),
        'IsCurrentBalanceText': serializeParam(
          _isCurrentBalanceText,
          ParamType.bool,
        ),
        'AvailableBalance': serializeParam(
          _availableBalance,
          ParamType.int,
        ),
        'IsAvailableBalanceEmail': serializeParam(
          _isAvailableBalanceEmail,
          ParamType.bool,
        ),
        'IsAvailableBalanceText': serializeParam(
          _isAvailableBalanceText,
          ParamType.bool,
        ),
        'IsCardNotPresentEmail': serializeParam(
          _isCardNotPresentEmail,
          ParamType.bool,
        ),
        'IsCardNotPresentText': serializeParam(
          _isCardNotPresentText,
          ParamType.bool,
        ),
        'IsUserOptedForAnyAlert': serializeParam(
          _isUserOptedForAnyAlert,
          ParamType.String,
        ),
        'IsUserEnrollForSMSAlert': serializeParam(
          _isUserEnrollForSMSAlert,
          ParamType.String,
        ),
        'IsUserOptedForTwoFA': serializeParam(
          _isUserOptedForTwoFA,
          ParamType.String,
        ),
        'IsUserOptedForTwoFASMS': serializeParam(
          _isUserOptedForTwoFASMS,
          ParamType.bool,
        ),
        'IsUserOptedForTwoFAEmail': serializeParam(
          _isUserOptedForTwoFAEmail,
          ParamType.bool,
        ),
      }.withoutNulls;

  static SecurityAlertsStruct fromSerializableMap(Map<String, dynamic> data) =>
      SecurityAlertsStruct(
        isTwoFactorAuthenticationEmail: deserializeParam(
          data['IsTwoFactorAuthenticationEmail'],
          ParamType.bool,
          false,
        ),
        isTwoFactorAuthenticationText: deserializeParam(
          data['IsTwoFactorAuthenticationText'],
          ParamType.bool,
          false,
        ),
        isPaymentReceivedEmail: deserializeParam(
          data['IsPaymentReceivedEmail'],
          ParamType.bool,
          false,
        ),
        isPaymentReceivedText: deserializeParam(
          data['IsPaymentReceivedText'],
          ParamType.bool,
          false,
        ),
        paymentReminderDueDays: deserializeParam(
          data['PaymentReminderDueDays'],
          ParamType.int,
          false,
        ),
        isPaymentReminderEmail: deserializeParam(
          data['IsPaymentReminderEmail'],
          ParamType.bool,
          false,
        ),
        isPaymentReminderText: deserializeParam(
          data['IsPaymentReminderText'],
          ParamType.bool,
          false,
        ),
        isStatementReadyEmail: deserializeParam(
          data['IsStatementReadyEmail'],
          ParamType.bool,
          false,
        ),
        isStatementReadyText: deserializeParam(
          data['IsStatementReadyText'],
          ParamType.bool,
          false,
        ),
        isPastDueReminderEmail: deserializeParam(
          data['IsPastDueReminderEmail'],
          ParamType.bool,
          false,
        ),
        isPastDueReminderText: deserializeParam(
          data['IsPastDueReminderText'],
          ParamType.bool,
          false,
        ),
        transactionAmount: deserializeParam(
          data['TransactionAmount'],
          ParamType.int,
          false,
        ),
        isTransactionAmountEmail: deserializeParam(
          data['IsTransactionAmountEmail'],
          ParamType.bool,
          false,
        ),
        isTransactionAmountText: deserializeParam(
          data['IsTransactionAmountText'],
          ParamType.bool,
          false,
        ),
        currentBalance: deserializeParam(
          data['CurrentBalance'],
          ParamType.int,
          false,
        ),
        isCurrentBalanceEmail: deserializeParam(
          data['IsCurrentBalanceEmail'],
          ParamType.bool,
          false,
        ),
        isCurrentBalanceText: deserializeParam(
          data['IsCurrentBalanceText'],
          ParamType.bool,
          false,
        ),
        availableBalance: deserializeParam(
          data['AvailableBalance'],
          ParamType.int,
          false,
        ),
        isAvailableBalanceEmail: deserializeParam(
          data['IsAvailableBalanceEmail'],
          ParamType.bool,
          false,
        ),
        isAvailableBalanceText: deserializeParam(
          data['IsAvailableBalanceText'],
          ParamType.bool,
          false,
        ),
        isCardNotPresentEmail: deserializeParam(
          data['IsCardNotPresentEmail'],
          ParamType.bool,
          false,
        ),
        isCardNotPresentText: deserializeParam(
          data['IsCardNotPresentText'],
          ParamType.bool,
          false,
        ),
        isUserOptedForAnyAlert: deserializeParam(
          data['IsUserOptedForAnyAlert'],
          ParamType.String,
          false,
        ),
        isUserEnrollForSMSAlert: deserializeParam(
          data['IsUserEnrollForSMSAlert'],
          ParamType.String,
          false,
        ),
        isUserOptedForTwoFA: deserializeParam(
          data['IsUserOptedForTwoFA'],
          ParamType.String,
          false,
        ),
        isUserOptedForTwoFASMS: deserializeParam(
          data['IsUserOptedForTwoFASMS'],
          ParamType.bool,
          false,
        ),
        isUserOptedForTwoFAEmail: deserializeParam(
          data['IsUserOptedForTwoFAEmail'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'SecurityAlertsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SecurityAlertsStruct &&
        isTwoFactorAuthenticationEmail ==
            other.isTwoFactorAuthenticationEmail &&
        isTwoFactorAuthenticationText == other.isTwoFactorAuthenticationText &&
        isPaymentReceivedEmail == other.isPaymentReceivedEmail &&
        isPaymentReceivedText == other.isPaymentReceivedText &&
        paymentReminderDueDays == other.paymentReminderDueDays &&
        isPaymentReminderEmail == other.isPaymentReminderEmail &&
        isPaymentReminderText == other.isPaymentReminderText &&
        isStatementReadyEmail == other.isStatementReadyEmail &&
        isStatementReadyText == other.isStatementReadyText &&
        isPastDueReminderEmail == other.isPastDueReminderEmail &&
        isPastDueReminderText == other.isPastDueReminderText &&
        transactionAmount == other.transactionAmount &&
        isTransactionAmountEmail == other.isTransactionAmountEmail &&
        isTransactionAmountText == other.isTransactionAmountText &&
        currentBalance == other.currentBalance &&
        isCurrentBalanceEmail == other.isCurrentBalanceEmail &&
        isCurrentBalanceText == other.isCurrentBalanceText &&
        availableBalance == other.availableBalance &&
        isAvailableBalanceEmail == other.isAvailableBalanceEmail &&
        isAvailableBalanceText == other.isAvailableBalanceText &&
        isCardNotPresentEmail == other.isCardNotPresentEmail &&
        isCardNotPresentText == other.isCardNotPresentText &&
        isUserOptedForAnyAlert == other.isUserOptedForAnyAlert &&
        isUserEnrollForSMSAlert == other.isUserEnrollForSMSAlert &&
        isUserOptedForTwoFA == other.isUserOptedForTwoFA &&
        isUserOptedForTwoFASMS == other.isUserOptedForTwoFASMS &&
        isUserOptedForTwoFAEmail == other.isUserOptedForTwoFAEmail;
  }

  @override
  int get hashCode => const ListEquality().hash([
        isTwoFactorAuthenticationEmail,
        isTwoFactorAuthenticationText,
        isPaymentReceivedEmail,
        isPaymentReceivedText,
        paymentReminderDueDays,
        isPaymentReminderEmail,
        isPaymentReminderText,
        isStatementReadyEmail,
        isStatementReadyText,
        isPastDueReminderEmail,
        isPastDueReminderText,
        transactionAmount,
        isTransactionAmountEmail,
        isTransactionAmountText,
        currentBalance,
        isCurrentBalanceEmail,
        isCurrentBalanceText,
        availableBalance,
        isAvailableBalanceEmail,
        isAvailableBalanceText,
        isCardNotPresentEmail,
        isCardNotPresentText,
        isUserOptedForAnyAlert,
        isUserEnrollForSMSAlert,
        isUserOptedForTwoFA,
        isUserOptedForTwoFASMS,
        isUserOptedForTwoFAEmail
      ]);
}

SecurityAlertsStruct createSecurityAlertsStruct({
  bool? isTwoFactorAuthenticationEmail,
  bool? isTwoFactorAuthenticationText,
  bool? isPaymentReceivedEmail,
  bool? isPaymentReceivedText,
  int? paymentReminderDueDays,
  bool? isPaymentReminderEmail,
  bool? isPaymentReminderText,
  bool? isStatementReadyEmail,
  bool? isStatementReadyText,
  bool? isPastDueReminderEmail,
  bool? isPastDueReminderText,
  int? transactionAmount,
  bool? isTransactionAmountEmail,
  bool? isTransactionAmountText,
  int? currentBalance,
  bool? isCurrentBalanceEmail,
  bool? isCurrentBalanceText,
  int? availableBalance,
  bool? isAvailableBalanceEmail,
  bool? isAvailableBalanceText,
  bool? isCardNotPresentEmail,
  bool? isCardNotPresentText,
  String? isUserOptedForAnyAlert,
  String? isUserEnrollForSMSAlert,
  String? isUserOptedForTwoFA,
  bool? isUserOptedForTwoFASMS,
  bool? isUserOptedForTwoFAEmail,
}) =>
    SecurityAlertsStruct(
      isTwoFactorAuthenticationEmail: isTwoFactorAuthenticationEmail,
      isTwoFactorAuthenticationText: isTwoFactorAuthenticationText,
      isPaymentReceivedEmail: isPaymentReceivedEmail,
      isPaymentReceivedText: isPaymentReceivedText,
      paymentReminderDueDays: paymentReminderDueDays,
      isPaymentReminderEmail: isPaymentReminderEmail,
      isPaymentReminderText: isPaymentReminderText,
      isStatementReadyEmail: isStatementReadyEmail,
      isStatementReadyText: isStatementReadyText,
      isPastDueReminderEmail: isPastDueReminderEmail,
      isPastDueReminderText: isPastDueReminderText,
      transactionAmount: transactionAmount,
      isTransactionAmountEmail: isTransactionAmountEmail,
      isTransactionAmountText: isTransactionAmountText,
      currentBalance: currentBalance,
      isCurrentBalanceEmail: isCurrentBalanceEmail,
      isCurrentBalanceText: isCurrentBalanceText,
      availableBalance: availableBalance,
      isAvailableBalanceEmail: isAvailableBalanceEmail,
      isAvailableBalanceText: isAvailableBalanceText,
      isCardNotPresentEmail: isCardNotPresentEmail,
      isCardNotPresentText: isCardNotPresentText,
      isUserOptedForAnyAlert: isUserOptedForAnyAlert,
      isUserEnrollForSMSAlert: isUserEnrollForSMSAlert,
      isUserOptedForTwoFA: isUserOptedForTwoFA,
      isUserOptedForTwoFASMS: isUserOptedForTwoFASMS,
      isUserOptedForTwoFAEmail: isUserOptedForTwoFAEmail,
    );
