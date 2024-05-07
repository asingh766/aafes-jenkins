// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PreferenceStruct extends BaseStruct {
  PreferenceStruct({
    bool? isFreezeAccount,
    bool? isExchangeCreditPromotion,
    bool? isLegalNoticeEmail,
    bool? isStatementEmail,
  })  : _isFreezeAccount = isFreezeAccount,
        _isExchangeCreditPromotion = isExchangeCreditPromotion,
        _isLegalNoticeEmail = isLegalNoticeEmail,
        _isStatementEmail = isStatementEmail;

  // "IsFreezeAccount" field.
  bool? _isFreezeAccount;
  bool get isFreezeAccount => _isFreezeAccount ?? false;
  set isFreezeAccount(bool? val) => _isFreezeAccount = val;
  bool hasIsFreezeAccount() => _isFreezeAccount != null;

  // "IsExchangeCreditPromotion" field.
  bool? _isExchangeCreditPromotion;
  bool get isExchangeCreditPromotion => _isExchangeCreditPromotion ?? false;
  set isExchangeCreditPromotion(bool? val) => _isExchangeCreditPromotion = val;
  bool hasIsExchangeCreditPromotion() => _isExchangeCreditPromotion != null;

  // "IsLegalNoticeEmail" field.
  bool? _isLegalNoticeEmail;
  bool get isLegalNoticeEmail => _isLegalNoticeEmail ?? false;
  set isLegalNoticeEmail(bool? val) => _isLegalNoticeEmail = val;
  bool hasIsLegalNoticeEmail() => _isLegalNoticeEmail != null;

  // "IsStatementEmail" field.
  bool? _isStatementEmail;
  bool get isStatementEmail => _isStatementEmail ?? false;
  set isStatementEmail(bool? val) => _isStatementEmail = val;
  bool hasIsStatementEmail() => _isStatementEmail != null;

  static PreferenceStruct fromMap(Map<String, dynamic> data) =>
      PreferenceStruct(
        isFreezeAccount: data['IsFreezeAccount'] as bool?,
        isExchangeCreditPromotion: data['IsExchangeCreditPromotion'] as bool?,
        isLegalNoticeEmail: data['IsLegalNoticeEmail'] as bool?,
        isStatementEmail: data['IsStatementEmail'] as bool?,
      );

  static PreferenceStruct? maybeFromMap(dynamic data) => data is Map
      ? PreferenceStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'IsFreezeAccount': _isFreezeAccount,
        'IsExchangeCreditPromotion': _isExchangeCreditPromotion,
        'IsLegalNoticeEmail': _isLegalNoticeEmail,
        'IsStatementEmail': _isStatementEmail,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'IsFreezeAccount': serializeParam(
          _isFreezeAccount,
          ParamType.bool,
        ),
        'IsExchangeCreditPromotion': serializeParam(
          _isExchangeCreditPromotion,
          ParamType.bool,
        ),
        'IsLegalNoticeEmail': serializeParam(
          _isLegalNoticeEmail,
          ParamType.bool,
        ),
        'IsStatementEmail': serializeParam(
          _isStatementEmail,
          ParamType.bool,
        ),
      }.withoutNulls;

  static PreferenceStruct fromSerializableMap(Map<String, dynamic> data) =>
      PreferenceStruct(
        isFreezeAccount: deserializeParam(
          data['IsFreezeAccount'],
          ParamType.bool,
          false,
        ),
        isExchangeCreditPromotion: deserializeParam(
          data['IsExchangeCreditPromotion'],
          ParamType.bool,
          false,
        ),
        isLegalNoticeEmail: deserializeParam(
          data['IsLegalNoticeEmail'],
          ParamType.bool,
          false,
        ),
        isStatementEmail: deserializeParam(
          data['IsStatementEmail'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'PreferenceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PreferenceStruct &&
        isFreezeAccount == other.isFreezeAccount &&
        isExchangeCreditPromotion == other.isExchangeCreditPromotion &&
        isLegalNoticeEmail == other.isLegalNoticeEmail &&
        isStatementEmail == other.isStatementEmail;
  }

  @override
  int get hashCode => const ListEquality().hash([
        isFreezeAccount,
        isExchangeCreditPromotion,
        isLegalNoticeEmail,
        isStatementEmail
      ]);
}

PreferenceStruct createPreferenceStruct({
  bool? isFreezeAccount,
  bool? isExchangeCreditPromotion,
  bool? isLegalNoticeEmail,
  bool? isStatementEmail,
}) =>
    PreferenceStruct(
      isFreezeAccount: isFreezeAccount,
      isExchangeCreditPromotion: isExchangeCreditPromotion,
      isLegalNoticeEmail: isLegalNoticeEmail,
      isStatementEmail: isStatementEmail,
    );
