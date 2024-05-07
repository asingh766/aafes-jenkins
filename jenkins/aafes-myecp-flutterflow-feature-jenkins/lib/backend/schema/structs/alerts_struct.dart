// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlertsStruct extends BaseStruct {
  AlertsStruct({
    String? title,
    String? message,
    int? severityType,
  })  : _title = title,
        _message = message,
        _severityType = severityType;

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "Message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;
  bool hasMessage() => _message != null;

  // "SeverityType" field.
  int? _severityType;
  int get severityType => _severityType ?? 0;
  set severityType(int? val) => _severityType = val;
  void incrementSeverityType(int amount) =>
      _severityType = severityType + amount;
  bool hasSeverityType() => _severityType != null;

  static AlertsStruct fromMap(Map<String, dynamic> data) => AlertsStruct(
        title: data['Title'] as String?,
        message: data['Message'] as String?,
        severityType: castToType<int>(data['SeverityType']),
      );

  static AlertsStruct? maybeFromMap(dynamic data) =>
      data is Map ? AlertsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Title': _title,
        'Message': _message,
        'SeverityType': _severityType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Title': serializeParam(
          _title,
          ParamType.String,
        ),
        'Message': serializeParam(
          _message,
          ParamType.String,
        ),
        'SeverityType': serializeParam(
          _severityType,
          ParamType.int,
        ),
      }.withoutNulls;

  static AlertsStruct fromSerializableMap(Map<String, dynamic> data) =>
      AlertsStruct(
        title: deserializeParam(
          data['Title'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['Message'],
          ParamType.String,
          false,
        ),
        severityType: deserializeParam(
          data['SeverityType'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'AlertsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AlertsStruct &&
        title == other.title &&
        message == other.message &&
        severityType == other.severityType;
  }

  @override
  int get hashCode => const ListEquality().hash([title, message, severityType]);
}

AlertsStruct createAlertsStruct({
  String? title,
  String? message,
  int? severityType,
}) =>
    AlertsStruct(
      title: title,
      message: message,
      severityType: severityType,
    );
