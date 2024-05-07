// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRestrictionStruct extends BaseStruct {
  UserRestrictionStruct({
    String? accountNo,
    bool? canViewAccountSummary,
    bool? canViewAccountActivity,
    bool? canMakeOrEditPayment,
    bool? canAddOrEditPaymentProfile,
    bool? canViewPaymentHistory,
    bool? canReportLostOrStolenCard,
    bool? canUpdateContactInformation,
    bool? canManageAuthorizedUsers,
    bool? canCloseOrUpdateAccount,
    List<AlertsStruct>? alertMessages,
  })  : _accountNo = accountNo,
        _canViewAccountSummary = canViewAccountSummary,
        _canViewAccountActivity = canViewAccountActivity,
        _canMakeOrEditPayment = canMakeOrEditPayment,
        _canAddOrEditPaymentProfile = canAddOrEditPaymentProfile,
        _canViewPaymentHistory = canViewPaymentHistory,
        _canReportLostOrStolenCard = canReportLostOrStolenCard,
        _canUpdateContactInformation = canUpdateContactInformation,
        _canManageAuthorizedUsers = canManageAuthorizedUsers,
        _canCloseOrUpdateAccount = canCloseOrUpdateAccount,
        _alertMessages = alertMessages;

  // "AccountNo" field.
  String? _accountNo;
  String get accountNo => _accountNo ?? '';
  set accountNo(String? val) => _accountNo = val;
  bool hasAccountNo() => _accountNo != null;

  // "CanViewAccountSummary" field.
  bool? _canViewAccountSummary;
  bool get canViewAccountSummary => _canViewAccountSummary ?? false;
  set canViewAccountSummary(bool? val) => _canViewAccountSummary = val;
  bool hasCanViewAccountSummary() => _canViewAccountSummary != null;

  // "CanViewAccountActivity" field.
  bool? _canViewAccountActivity;
  bool get canViewAccountActivity => _canViewAccountActivity ?? false;
  set canViewAccountActivity(bool? val) => _canViewAccountActivity = val;
  bool hasCanViewAccountActivity() => _canViewAccountActivity != null;

  // "CanMakeOrEditPayment" field.
  bool? _canMakeOrEditPayment;
  bool get canMakeOrEditPayment => _canMakeOrEditPayment ?? false;
  set canMakeOrEditPayment(bool? val) => _canMakeOrEditPayment = val;
  bool hasCanMakeOrEditPayment() => _canMakeOrEditPayment != null;

  // "CanAddOrEditPaymentProfile" field.
  bool? _canAddOrEditPaymentProfile;
  bool get canAddOrEditPaymentProfile => _canAddOrEditPaymentProfile ?? false;
  set canAddOrEditPaymentProfile(bool? val) =>
      _canAddOrEditPaymentProfile = val;
  bool hasCanAddOrEditPaymentProfile() => _canAddOrEditPaymentProfile != null;

  // "CanViewPaymentHistory" field.
  bool? _canViewPaymentHistory;
  bool get canViewPaymentHistory => _canViewPaymentHistory ?? false;
  set canViewPaymentHistory(bool? val) => _canViewPaymentHistory = val;
  bool hasCanViewPaymentHistory() => _canViewPaymentHistory != null;

  // "CanReportLostOrStolenCard" field.
  bool? _canReportLostOrStolenCard;
  bool get canReportLostOrStolenCard => _canReportLostOrStolenCard ?? false;
  set canReportLostOrStolenCard(bool? val) => _canReportLostOrStolenCard = val;
  bool hasCanReportLostOrStolenCard() => _canReportLostOrStolenCard != null;

  // "CanUpdateContactInformation" field.
  bool? _canUpdateContactInformation;
  bool get canUpdateContactInformation => _canUpdateContactInformation ?? false;
  set canUpdateContactInformation(bool? val) =>
      _canUpdateContactInformation = val;
  bool hasCanUpdateContactInformation() => _canUpdateContactInformation != null;

  // "CanManageAuthorizedUsers" field.
  bool? _canManageAuthorizedUsers;
  bool get canManageAuthorizedUsers => _canManageAuthorizedUsers ?? false;
  set canManageAuthorizedUsers(bool? val) => _canManageAuthorizedUsers = val;
  bool hasCanManageAuthorizedUsers() => _canManageAuthorizedUsers != null;

  // "CanCloseOrUpdateAccount" field.
  bool? _canCloseOrUpdateAccount;
  bool get canCloseOrUpdateAccount => _canCloseOrUpdateAccount ?? false;
  set canCloseOrUpdateAccount(bool? val) => _canCloseOrUpdateAccount = val;
  bool hasCanCloseOrUpdateAccount() => _canCloseOrUpdateAccount != null;

  // "AlertMessages" field.
  List<AlertsStruct>? _alertMessages;
  List<AlertsStruct> get alertMessages => _alertMessages ?? const [];
  set alertMessages(List<AlertsStruct>? val) => _alertMessages = val;
  void updateAlertMessages(Function(List<AlertsStruct>) updateFn) =>
      updateFn(_alertMessages ??= []);
  bool hasAlertMessages() => _alertMessages != null;

  static UserRestrictionStruct fromMap(Map<String, dynamic> data) =>
      UserRestrictionStruct(
        accountNo: data['AccountNo'] as String?,
        canViewAccountSummary: data['CanViewAccountSummary'] as bool?,
        canViewAccountActivity: data['CanViewAccountActivity'] as bool?,
        canMakeOrEditPayment: data['CanMakeOrEditPayment'] as bool?,
        canAddOrEditPaymentProfile: data['CanAddOrEditPaymentProfile'] as bool?,
        canViewPaymentHistory: data['CanViewPaymentHistory'] as bool?,
        canReportLostOrStolenCard: data['CanReportLostOrStolenCard'] as bool?,
        canUpdateContactInformation:
            data['CanUpdateContactInformation'] as bool?,
        canManageAuthorizedUsers: data['CanManageAuthorizedUsers'] as bool?,
        canCloseOrUpdateAccount: data['CanCloseOrUpdateAccount'] as bool?,
        alertMessages: getStructList(
          data['AlertMessages'],
          AlertsStruct.fromMap,
        ),
      );

  static UserRestrictionStruct? maybeFromMap(dynamic data) => data is Map
      ? UserRestrictionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'AccountNo': _accountNo,
        'CanViewAccountSummary': _canViewAccountSummary,
        'CanViewAccountActivity': _canViewAccountActivity,
        'CanMakeOrEditPayment': _canMakeOrEditPayment,
        'CanAddOrEditPaymentProfile': _canAddOrEditPaymentProfile,
        'CanViewPaymentHistory': _canViewPaymentHistory,
        'CanReportLostOrStolenCard': _canReportLostOrStolenCard,
        'CanUpdateContactInformation': _canUpdateContactInformation,
        'CanManageAuthorizedUsers': _canManageAuthorizedUsers,
        'CanCloseOrUpdateAccount': _canCloseOrUpdateAccount,
        'AlertMessages': _alertMessages?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'AccountNo': serializeParam(
          _accountNo,
          ParamType.String,
        ),
        'CanViewAccountSummary': serializeParam(
          _canViewAccountSummary,
          ParamType.bool,
        ),
        'CanViewAccountActivity': serializeParam(
          _canViewAccountActivity,
          ParamType.bool,
        ),
        'CanMakeOrEditPayment': serializeParam(
          _canMakeOrEditPayment,
          ParamType.bool,
        ),
        'CanAddOrEditPaymentProfile': serializeParam(
          _canAddOrEditPaymentProfile,
          ParamType.bool,
        ),
        'CanViewPaymentHistory': serializeParam(
          _canViewPaymentHistory,
          ParamType.bool,
        ),
        'CanReportLostOrStolenCard': serializeParam(
          _canReportLostOrStolenCard,
          ParamType.bool,
        ),
        'CanUpdateContactInformation': serializeParam(
          _canUpdateContactInformation,
          ParamType.bool,
        ),
        'CanManageAuthorizedUsers': serializeParam(
          _canManageAuthorizedUsers,
          ParamType.bool,
        ),
        'CanCloseOrUpdateAccount': serializeParam(
          _canCloseOrUpdateAccount,
          ParamType.bool,
        ),
        'AlertMessages': serializeParam(
          _alertMessages,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static UserRestrictionStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserRestrictionStruct(
        accountNo: deserializeParam(
          data['AccountNo'],
          ParamType.String,
          false,
        ),
        canViewAccountSummary: deserializeParam(
          data['CanViewAccountSummary'],
          ParamType.bool,
          false,
        ),
        canViewAccountActivity: deserializeParam(
          data['CanViewAccountActivity'],
          ParamType.bool,
          false,
        ),
        canMakeOrEditPayment: deserializeParam(
          data['CanMakeOrEditPayment'],
          ParamType.bool,
          false,
        ),
        canAddOrEditPaymentProfile: deserializeParam(
          data['CanAddOrEditPaymentProfile'],
          ParamType.bool,
          false,
        ),
        canViewPaymentHistory: deserializeParam(
          data['CanViewPaymentHistory'],
          ParamType.bool,
          false,
        ),
        canReportLostOrStolenCard: deserializeParam(
          data['CanReportLostOrStolenCard'],
          ParamType.bool,
          false,
        ),
        canUpdateContactInformation: deserializeParam(
          data['CanUpdateContactInformation'],
          ParamType.bool,
          false,
        ),
        canManageAuthorizedUsers: deserializeParam(
          data['CanManageAuthorizedUsers'],
          ParamType.bool,
          false,
        ),
        canCloseOrUpdateAccount: deserializeParam(
          data['CanCloseOrUpdateAccount'],
          ParamType.bool,
          false,
        ),
        alertMessages: deserializeStructParam<AlertsStruct>(
          data['AlertMessages'],
          ParamType.DataStruct,
          true,
          structBuilder: AlertsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UserRestrictionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserRestrictionStruct &&
        accountNo == other.accountNo &&
        canViewAccountSummary == other.canViewAccountSummary &&
        canViewAccountActivity == other.canViewAccountActivity &&
        canMakeOrEditPayment == other.canMakeOrEditPayment &&
        canAddOrEditPaymentProfile == other.canAddOrEditPaymentProfile &&
        canViewPaymentHistory == other.canViewPaymentHistory &&
        canReportLostOrStolenCard == other.canReportLostOrStolenCard &&
        canUpdateContactInformation == other.canUpdateContactInformation &&
        canManageAuthorizedUsers == other.canManageAuthorizedUsers &&
        canCloseOrUpdateAccount == other.canCloseOrUpdateAccount &&
        listEquality.equals(alertMessages, other.alertMessages);
  }

  @override
  int get hashCode => const ListEquality().hash([
        accountNo,
        canViewAccountSummary,
        canViewAccountActivity,
        canMakeOrEditPayment,
        canAddOrEditPaymentProfile,
        canViewPaymentHistory,
        canReportLostOrStolenCard,
        canUpdateContactInformation,
        canManageAuthorizedUsers,
        canCloseOrUpdateAccount,
        alertMessages
      ]);
}

UserRestrictionStruct createUserRestrictionStruct({
  String? accountNo,
  bool? canViewAccountSummary,
  bool? canViewAccountActivity,
  bool? canMakeOrEditPayment,
  bool? canAddOrEditPaymentProfile,
  bool? canViewPaymentHistory,
  bool? canReportLostOrStolenCard,
  bool? canUpdateContactInformation,
  bool? canManageAuthorizedUsers,
  bool? canCloseOrUpdateAccount,
}) =>
    UserRestrictionStruct(
      accountNo: accountNo,
      canViewAccountSummary: canViewAccountSummary,
      canViewAccountActivity: canViewAccountActivity,
      canMakeOrEditPayment: canMakeOrEditPayment,
      canAddOrEditPaymentProfile: canAddOrEditPaymentProfile,
      canViewPaymentHistory: canViewPaymentHistory,
      canReportLostOrStolenCard: canReportLostOrStolenCard,
      canUpdateContactInformation: canUpdateContactInformation,
      canManageAuthorizedUsers: canManageAuthorizedUsers,
      canCloseOrUpdateAccount: canCloseOrUpdateAccount,
    );
