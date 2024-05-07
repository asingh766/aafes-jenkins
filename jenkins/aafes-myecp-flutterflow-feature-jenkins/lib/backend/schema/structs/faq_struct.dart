// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FaqStruct extends BaseStruct {
  FaqStruct({
    String? help,
    String? paymentQuestions,
    String? onlinePayments,
    String? statementQuestions,
    String? rewardPrograms,
    String? textAlerts,
    String? twofa,
    String? payYourWay,
  })  : _help = help,
        _paymentQuestions = paymentQuestions,
        _onlinePayments = onlinePayments,
        _statementQuestions = statementQuestions,
        _rewardPrograms = rewardPrograms,
        _textAlerts = textAlerts,
        _twofa = twofa,
        _payYourWay = payYourWay;

  // "help" field.
  String? _help;
  String get help => _help ?? '';
  set help(String? val) => _help = val;
  bool hasHelp() => _help != null;

  // "paymentQuestions" field.
  String? _paymentQuestions;
  String get paymentQuestions => _paymentQuestions ?? '';
  set paymentQuestions(String? val) => _paymentQuestions = val;
  bool hasPaymentQuestions() => _paymentQuestions != null;

  // "onlinePayments" field.
  String? _onlinePayments;
  String get onlinePayments => _onlinePayments ?? '';
  set onlinePayments(String? val) => _onlinePayments = val;
  bool hasOnlinePayments() => _onlinePayments != null;

  // "statementQuestions" field.
  String? _statementQuestions;
  String get statementQuestions => _statementQuestions ?? '';
  set statementQuestions(String? val) => _statementQuestions = val;
  bool hasStatementQuestions() => _statementQuestions != null;

  // "rewardPrograms" field.
  String? _rewardPrograms;
  String get rewardPrograms => _rewardPrograms ?? '';
  set rewardPrograms(String? val) => _rewardPrograms = val;
  bool hasRewardPrograms() => _rewardPrograms != null;

  // "textAlerts" field.
  String? _textAlerts;
  String get textAlerts => _textAlerts ?? '';
  set textAlerts(String? val) => _textAlerts = val;
  bool hasTextAlerts() => _textAlerts != null;

  // "twofa" field.
  String? _twofa;
  String get twofa => _twofa ?? '';
  set twofa(String? val) => _twofa = val;
  bool hasTwofa() => _twofa != null;

  // "payYourWay" field.
  String? _payYourWay;
  String get payYourWay => _payYourWay ?? '';
  set payYourWay(String? val) => _payYourWay = val;
  bool hasPayYourWay() => _payYourWay != null;

  static FaqStruct fromMap(Map<String, dynamic> data) => FaqStruct(
        help: data['help'] as String?,
        paymentQuestions: data['paymentQuestions'] as String?,
        onlinePayments: data['onlinePayments'] as String?,
        statementQuestions: data['statementQuestions'] as String?,
        rewardPrograms: data['rewardPrograms'] as String?,
        textAlerts: data['textAlerts'] as String?,
        twofa: data['twofa'] as String?,
        payYourWay: data['payYourWay'] as String?,
      );

  static FaqStruct? maybeFromMap(dynamic data) =>
      data is Map ? FaqStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'help': _help,
        'paymentQuestions': _paymentQuestions,
        'onlinePayments': _onlinePayments,
        'statementQuestions': _statementQuestions,
        'rewardPrograms': _rewardPrograms,
        'textAlerts': _textAlerts,
        'twofa': _twofa,
        'payYourWay': _payYourWay,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'help': serializeParam(
          _help,
          ParamType.String,
        ),
        'paymentQuestions': serializeParam(
          _paymentQuestions,
          ParamType.String,
        ),
        'onlinePayments': serializeParam(
          _onlinePayments,
          ParamType.String,
        ),
        'statementQuestions': serializeParam(
          _statementQuestions,
          ParamType.String,
        ),
        'rewardPrograms': serializeParam(
          _rewardPrograms,
          ParamType.String,
        ),
        'textAlerts': serializeParam(
          _textAlerts,
          ParamType.String,
        ),
        'twofa': serializeParam(
          _twofa,
          ParamType.String,
        ),
        'payYourWay': serializeParam(
          _payYourWay,
          ParamType.String,
        ),
      }.withoutNulls;

  static FaqStruct fromSerializableMap(Map<String, dynamic> data) => FaqStruct(
        help: deserializeParam(
          data['help'],
          ParamType.String,
          false,
        ),
        paymentQuestions: deserializeParam(
          data['paymentQuestions'],
          ParamType.String,
          false,
        ),
        onlinePayments: deserializeParam(
          data['onlinePayments'],
          ParamType.String,
          false,
        ),
        statementQuestions: deserializeParam(
          data['statementQuestions'],
          ParamType.String,
          false,
        ),
        rewardPrograms: deserializeParam(
          data['rewardPrograms'],
          ParamType.String,
          false,
        ),
        textAlerts: deserializeParam(
          data['textAlerts'],
          ParamType.String,
          false,
        ),
        twofa: deserializeParam(
          data['twofa'],
          ParamType.String,
          false,
        ),
        payYourWay: deserializeParam(
          data['payYourWay'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FaqStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FaqStruct &&
        help == other.help &&
        paymentQuestions == other.paymentQuestions &&
        onlinePayments == other.onlinePayments &&
        statementQuestions == other.statementQuestions &&
        rewardPrograms == other.rewardPrograms &&
        textAlerts == other.textAlerts &&
        twofa == other.twofa &&
        payYourWay == other.payYourWay;
  }

  @override
  int get hashCode => const ListEquality().hash([
        help,
        paymentQuestions,
        onlinePayments,
        statementQuestions,
        rewardPrograms,
        textAlerts,
        twofa,
        payYourWay
      ]);
}

FaqStruct createFaqStruct({
  String? help,
  String? paymentQuestions,
  String? onlinePayments,
  String? statementQuestions,
  String? rewardPrograms,
  String? textAlerts,
  String? twofa,
  String? payYourWay,
}) =>
    FaqStruct(
      help: help,
      paymentQuestions: paymentQuestions,
      onlinePayments: onlinePayments,
      statementQuestions: statementQuestions,
      rewardPrograms: rewardPrograms,
      textAlerts: textAlerts,
      twofa: twofa,
      payYourWay: payYourWay,
    );
