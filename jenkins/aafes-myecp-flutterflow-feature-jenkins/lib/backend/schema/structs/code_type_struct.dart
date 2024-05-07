// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CodeTypeStruct extends BaseStruct {
  CodeTypeStruct({
    String? code,
    String? description,
  })  : _code = code,
        _description = description;

  // "Code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;
  bool hasCode() => _code != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  static CodeTypeStruct fromMap(Map<String, dynamic> data) => CodeTypeStruct(
        code: data['Code'] as String?,
        description: data['Description'] as String?,
      );

  static CodeTypeStruct? maybeFromMap(dynamic data) =>
      data is Map ? CodeTypeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Code': _code,
        'Description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Code': serializeParam(
          _code,
          ParamType.String,
        ),
        'Description': serializeParam(
          _description,
          ParamType.String,
        ),
      }.withoutNulls;

  static CodeTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      CodeTypeStruct(
        code: deserializeParam(
          data['Code'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['Description'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CodeTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CodeTypeStruct &&
        code == other.code &&
        description == other.description;
  }

  @override
  int get hashCode => const ListEquality().hash([code, description]);
}

CodeTypeStruct createCodeTypeStruct({
  String? code,
  String? description,
}) =>
    CodeTypeStruct(
      code: code,
      description: description,
    );
