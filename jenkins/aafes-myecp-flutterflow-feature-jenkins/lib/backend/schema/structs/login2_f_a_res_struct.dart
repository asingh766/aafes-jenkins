// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Login2FAResStruct extends BaseStruct {
  Login2FAResStruct({
    int? userId,
    bool? isSecurityQuestionsNeeded,
    bool? is2FANeeded,
    bool? isTwoFAOtpIn,
    bool? isTwoFAEmailOptIn,
    bool? isSMSOptIn,
    String? emailAddress,
    String? mobileNo,
  })  : _userId = userId,
        _isSecurityQuestionsNeeded = isSecurityQuestionsNeeded,
        _is2FANeeded = is2FANeeded,
        _isTwoFAOtpIn = isTwoFAOtpIn,
        _isTwoFAEmailOptIn = isTwoFAEmailOptIn,
        _isSMSOptIn = isSMSOptIn,
        _emailAddress = emailAddress,
        _mobileNo = mobileNo;

  // "UserId" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;
  void incrementUserId(int amount) => _userId = userId + amount;
  bool hasUserId() => _userId != null;

  // "IsSecurityQuestionsNeeded" field.
  bool? _isSecurityQuestionsNeeded;
  bool get isSecurityQuestionsNeeded => _isSecurityQuestionsNeeded ?? false;
  set isSecurityQuestionsNeeded(bool? val) => _isSecurityQuestionsNeeded = val;
  bool hasIsSecurityQuestionsNeeded() => _isSecurityQuestionsNeeded != null;

  // "Is2FANeeded" field.
  bool? _is2FANeeded;
  bool get is2FANeeded => _is2FANeeded ?? false;
  set is2FANeeded(bool? val) => _is2FANeeded = val;
  bool hasIs2FANeeded() => _is2FANeeded != null;

  // "IsTwoFAOtpIn" field.
  bool? _isTwoFAOtpIn;
  bool get isTwoFAOtpIn => _isTwoFAOtpIn ?? false;
  set isTwoFAOtpIn(bool? val) => _isTwoFAOtpIn = val;
  bool hasIsTwoFAOtpIn() => _isTwoFAOtpIn != null;

  // "IsTwoFAEmailOptIn" field.
  bool? _isTwoFAEmailOptIn;
  bool get isTwoFAEmailOptIn => _isTwoFAEmailOptIn ?? false;
  set isTwoFAEmailOptIn(bool? val) => _isTwoFAEmailOptIn = val;
  bool hasIsTwoFAEmailOptIn() => _isTwoFAEmailOptIn != null;

  // "IsSMSOptIn" field.
  bool? _isSMSOptIn;
  bool get isSMSOptIn => _isSMSOptIn ?? false;
  set isSMSOptIn(bool? val) => _isSMSOptIn = val;
  bool hasIsSMSOptIn() => _isSMSOptIn != null;

  // "EmailAddress" field.
  String? _emailAddress;
  String get emailAddress => _emailAddress ?? '';
  set emailAddress(String? val) => _emailAddress = val;
  bool hasEmailAddress() => _emailAddress != null;

  // "MobileNo" field.
  String? _mobileNo;
  String get mobileNo => _mobileNo ?? '';
  set mobileNo(String? val) => _mobileNo = val;
  bool hasMobileNo() => _mobileNo != null;

  static Login2FAResStruct fromMap(Map<String, dynamic> data) =>
      Login2FAResStruct(
        userId: castToType<int>(data['UserId']),
        isSecurityQuestionsNeeded: data['IsSecurityQuestionsNeeded'] as bool?,
        is2FANeeded: data['Is2FANeeded'] as bool?,
        isTwoFAOtpIn: data['IsTwoFAOtpIn'] as bool?,
        isTwoFAEmailOptIn: data['IsTwoFAEmailOptIn'] as bool?,
        isSMSOptIn: data['IsSMSOptIn'] as bool?,
        emailAddress: data['EmailAddress'] as String?,
        mobileNo: data['MobileNo'] as String?,
      );

  static Login2FAResStruct? maybeFromMap(dynamic data) => data is Map
      ? Login2FAResStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'UserId': _userId,
        'IsSecurityQuestionsNeeded': _isSecurityQuestionsNeeded,
        'Is2FANeeded': _is2FANeeded,
        'IsTwoFAOtpIn': _isTwoFAOtpIn,
        'IsTwoFAEmailOptIn': _isTwoFAEmailOptIn,
        'IsSMSOptIn': _isSMSOptIn,
        'EmailAddress': _emailAddress,
        'MobileNo': _mobileNo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'UserId': serializeParam(
          _userId,
          ParamType.int,
        ),
        'IsSecurityQuestionsNeeded': serializeParam(
          _isSecurityQuestionsNeeded,
          ParamType.bool,
        ),
        'Is2FANeeded': serializeParam(
          _is2FANeeded,
          ParamType.bool,
        ),
        'IsTwoFAOtpIn': serializeParam(
          _isTwoFAOtpIn,
          ParamType.bool,
        ),
        'IsTwoFAEmailOptIn': serializeParam(
          _isTwoFAEmailOptIn,
          ParamType.bool,
        ),
        'IsSMSOptIn': serializeParam(
          _isSMSOptIn,
          ParamType.bool,
        ),
        'EmailAddress': serializeParam(
          _emailAddress,
          ParamType.String,
        ),
        'MobileNo': serializeParam(
          _mobileNo,
          ParamType.String,
        ),
      }.withoutNulls;

  static Login2FAResStruct fromSerializableMap(Map<String, dynamic> data) =>
      Login2FAResStruct(
        userId: deserializeParam(
          data['UserId'],
          ParamType.int,
          false,
        ),
        isSecurityQuestionsNeeded: deserializeParam(
          data['IsSecurityQuestionsNeeded'],
          ParamType.bool,
          false,
        ),
        is2FANeeded: deserializeParam(
          data['Is2FANeeded'],
          ParamType.bool,
          false,
        ),
        isTwoFAOtpIn: deserializeParam(
          data['IsTwoFAOtpIn'],
          ParamType.bool,
          false,
        ),
        isTwoFAEmailOptIn: deserializeParam(
          data['IsTwoFAEmailOptIn'],
          ParamType.bool,
          false,
        ),
        isSMSOptIn: deserializeParam(
          data['IsSMSOptIn'],
          ParamType.bool,
          false,
        ),
        emailAddress: deserializeParam(
          data['EmailAddress'],
          ParamType.String,
          false,
        ),
        mobileNo: deserializeParam(
          data['MobileNo'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'Login2FAResStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is Login2FAResStruct &&
        userId == other.userId &&
        isSecurityQuestionsNeeded == other.isSecurityQuestionsNeeded &&
        is2FANeeded == other.is2FANeeded &&
        isTwoFAOtpIn == other.isTwoFAOtpIn &&
        isTwoFAEmailOptIn == other.isTwoFAEmailOptIn &&
        isSMSOptIn == other.isSMSOptIn &&
        emailAddress == other.emailAddress &&
        mobileNo == other.mobileNo;
  }

  @override
  int get hashCode => const ListEquality().hash([
        userId,
        isSecurityQuestionsNeeded,
        is2FANeeded,
        isTwoFAOtpIn,
        isTwoFAEmailOptIn,
        isSMSOptIn,
        emailAddress,
        mobileNo
      ]);
}

Login2FAResStruct createLogin2FAResStruct({
  int? userId,
  bool? isSecurityQuestionsNeeded,
  bool? is2FANeeded,
  bool? isTwoFAOtpIn,
  bool? isTwoFAEmailOptIn,
  bool? isSMSOptIn,
  String? emailAddress,
  String? mobileNo,
}) =>
    Login2FAResStruct(
      userId: userId,
      isSecurityQuestionsNeeded: isSecurityQuestionsNeeded,
      is2FANeeded: is2FANeeded,
      isTwoFAOtpIn: isTwoFAOtpIn,
      isTwoFAEmailOptIn: isTwoFAEmailOptIn,
      isSMSOptIn: isSMSOptIn,
      emailAddress: emailAddress,
      mobileNo: mobileNo,
    );
