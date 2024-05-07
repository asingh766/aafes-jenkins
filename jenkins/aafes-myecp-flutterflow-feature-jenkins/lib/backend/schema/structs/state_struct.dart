// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StateStruct extends BaseStruct {
  StateStruct({
    int? id,
    String? state,
    String? abbreviation,
  })  : _id = id,
        _state = state,
        _abbreviation = abbreviation;

  // "Id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "State" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;
  bool hasState() => _state != null;

  // "Abbreviation" field.
  String? _abbreviation;
  String get abbreviation => _abbreviation ?? '';
  set abbreviation(String? val) => _abbreviation = val;
  bool hasAbbreviation() => _abbreviation != null;

  static StateStruct fromMap(Map<String, dynamic> data) => StateStruct(
        id: castToType<int>(data['Id']),
        state: data['State'] as String?,
        abbreviation: data['Abbreviation'] as String?,
      );

  static StateStruct? maybeFromMap(dynamic data) =>
      data is Map ? StateStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Id': _id,
        'State': _state,
        'Abbreviation': _abbreviation,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Id': serializeParam(
          _id,
          ParamType.int,
        ),
        'State': serializeParam(
          _state,
          ParamType.String,
        ),
        'Abbreviation': serializeParam(
          _abbreviation,
          ParamType.String,
        ),
      }.withoutNulls;

  static StateStruct fromSerializableMap(Map<String, dynamic> data) =>
      StateStruct(
        id: deserializeParam(
          data['Id'],
          ParamType.int,
          false,
        ),
        state: deserializeParam(
          data['State'],
          ParamType.String,
          false,
        ),
        abbreviation: deserializeParam(
          data['Abbreviation'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'StateStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StateStruct &&
        id == other.id &&
        state == other.state &&
        abbreviation == other.abbreviation;
  }

  @override
  int get hashCode => const ListEquality().hash([id, state, abbreviation]);
}

StateStruct createStateStruct({
  int? id,
  String? state,
  String? abbreviation,
}) =>
    StateStruct(
      id: id,
      state: state,
      abbreviation: abbreviation,
    );
