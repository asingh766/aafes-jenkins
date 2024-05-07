// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TestModelStruct extends BaseStruct {
  TestModelStruct({
    String? name,
    bool? consumed,
  })  : _name = name,
        _consumed = consumed;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "Consumed" field.
  bool? _consumed;
  bool get consumed => _consumed ?? false;
  set consumed(bool? val) => _consumed = val;
  bool hasConsumed() => _consumed != null;

  static TestModelStruct fromMap(Map<String, dynamic> data) => TestModelStruct(
        name: data['Name'] as String?,
        consumed: data['Consumed'] as bool?,
      );

  static TestModelStruct? maybeFromMap(dynamic data) => data is Map
      ? TestModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Name': _name,
        'Consumed': _consumed,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'Consumed': serializeParam(
          _consumed,
          ParamType.bool,
        ),
      }.withoutNulls;

  static TestModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      TestModelStruct(
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        consumed: deserializeParam(
          data['Consumed'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'TestModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TestModelStruct &&
        name == other.name &&
        consumed == other.consumed;
  }

  @override
  int get hashCode => const ListEquality().hash([name, consumed]);
}

TestModelStruct createTestModelStruct({
  String? name,
  bool? consumed,
}) =>
    TestModelStruct(
      name: name,
      consumed: consumed,
    );
