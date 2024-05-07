// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AuthorisedUserStruct extends BaseStruct {
  AuthorisedUserStruct({
    String? fullName,
    String? addedOn,
  })  : _fullName = fullName,
        _addedOn = addedOn;

  // "FullName" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;
  bool hasFullName() => _fullName != null;

  // "AddedOn" field.
  String? _addedOn;
  String get addedOn => _addedOn ?? '';
  set addedOn(String? val) => _addedOn = val;
  bool hasAddedOn() => _addedOn != null;

  static AuthorisedUserStruct fromMap(Map<String, dynamic> data) =>
      AuthorisedUserStruct(
        fullName: data['FullName'] as String?,
        addedOn: data['AddedOn'] as String?,
      );

  static AuthorisedUserStruct? maybeFromMap(dynamic data) => data is Map
      ? AuthorisedUserStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'FullName': _fullName,
        'AddedOn': _addedOn,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'FullName': serializeParam(
          _fullName,
          ParamType.String,
        ),
        'AddedOn': serializeParam(
          _addedOn,
          ParamType.String,
        ),
      }.withoutNulls;

  static AuthorisedUserStruct fromSerializableMap(Map<String, dynamic> data) =>
      AuthorisedUserStruct(
        fullName: deserializeParam(
          data['FullName'],
          ParamType.String,
          false,
        ),
        addedOn: deserializeParam(
          data['AddedOn'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AuthorisedUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AuthorisedUserStruct &&
        fullName == other.fullName &&
        addedOn == other.addedOn;
  }

  @override
  int get hashCode => const ListEquality().hash([fullName, addedOn]);
}

AuthorisedUserStruct createAuthorisedUserStruct({
  String? fullName,
  String? addedOn,
}) =>
    AuthorisedUserStruct(
      fullName: fullName,
      addedOn: addedOn,
    );
