// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserSecurityQuestionAnswersStruct extends BaseStruct {
  UserSecurityQuestionAnswersStruct({
    int? questionID1,
    String? answer1,
    int? questionID2,
    String? answer2,
    int? questionID3,
    String? answer3,
  })  : _questionID1 = questionID1,
        _answer1 = answer1,
        _questionID2 = questionID2,
        _answer2 = answer2,
        _questionID3 = questionID3,
        _answer3 = answer3;

  // "QuestionID1" field.
  int? _questionID1;
  int get questionID1 => _questionID1 ?? 0;
  set questionID1(int? val) => _questionID1 = val;
  void incrementQuestionID1(int amount) => _questionID1 = questionID1 + amount;
  bool hasQuestionID1() => _questionID1 != null;

  // "Answer1" field.
  String? _answer1;
  String get answer1 => _answer1 ?? '';
  set answer1(String? val) => _answer1 = val;
  bool hasAnswer1() => _answer1 != null;

  // "QuestionID2" field.
  int? _questionID2;
  int get questionID2 => _questionID2 ?? 0;
  set questionID2(int? val) => _questionID2 = val;
  void incrementQuestionID2(int amount) => _questionID2 = questionID2 + amount;
  bool hasQuestionID2() => _questionID2 != null;

  // "Answer2" field.
  String? _answer2;
  String get answer2 => _answer2 ?? '';
  set answer2(String? val) => _answer2 = val;
  bool hasAnswer2() => _answer2 != null;

  // "QuestionID3" field.
  int? _questionID3;
  int get questionID3 => _questionID3 ?? 0;
  set questionID3(int? val) => _questionID3 = val;
  void incrementQuestionID3(int amount) => _questionID3 = questionID3 + amount;
  bool hasQuestionID3() => _questionID3 != null;

  // "Answer3" field.
  String? _answer3;
  String get answer3 => _answer3 ?? '';
  set answer3(String? val) => _answer3 = val;
  bool hasAnswer3() => _answer3 != null;

  static UserSecurityQuestionAnswersStruct fromMap(Map<String, dynamic> data) =>
      UserSecurityQuestionAnswersStruct(
        questionID1: castToType<int>(data['QuestionID1']),
        answer1: data['Answer1'] as String?,
        questionID2: castToType<int>(data['QuestionID2']),
        answer2: data['Answer2'] as String?,
        questionID3: castToType<int>(data['QuestionID3']),
        answer3: data['Answer3'] as String?,
      );

  static UserSecurityQuestionAnswersStruct? maybeFromMap(dynamic data) => data
          is Map
      ? UserSecurityQuestionAnswersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'QuestionID1': _questionID1,
        'Answer1': _answer1,
        'QuestionID2': _questionID2,
        'Answer2': _answer2,
        'QuestionID3': _questionID3,
        'Answer3': _answer3,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'QuestionID1': serializeParam(
          _questionID1,
          ParamType.int,
        ),
        'Answer1': serializeParam(
          _answer1,
          ParamType.String,
        ),
        'QuestionID2': serializeParam(
          _questionID2,
          ParamType.int,
        ),
        'Answer2': serializeParam(
          _answer2,
          ParamType.String,
        ),
        'QuestionID3': serializeParam(
          _questionID3,
          ParamType.int,
        ),
        'Answer3': serializeParam(
          _answer3,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserSecurityQuestionAnswersStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UserSecurityQuestionAnswersStruct(
        questionID1: deserializeParam(
          data['QuestionID1'],
          ParamType.int,
          false,
        ),
        answer1: deserializeParam(
          data['Answer1'],
          ParamType.String,
          false,
        ),
        questionID2: deserializeParam(
          data['QuestionID2'],
          ParamType.int,
          false,
        ),
        answer2: deserializeParam(
          data['Answer2'],
          ParamType.String,
          false,
        ),
        questionID3: deserializeParam(
          data['QuestionID3'],
          ParamType.int,
          false,
        ),
        answer3: deserializeParam(
          data['Answer3'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserSecurityQuestionAnswersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserSecurityQuestionAnswersStruct &&
        questionID1 == other.questionID1 &&
        answer1 == other.answer1 &&
        questionID2 == other.questionID2 &&
        answer2 == other.answer2 &&
        questionID3 == other.questionID3 &&
        answer3 == other.answer3;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([questionID1, answer1, questionID2, answer2, questionID3, answer3]);
}

UserSecurityQuestionAnswersStruct createUserSecurityQuestionAnswersStruct({
  int? questionID1,
  String? answer1,
  int? questionID2,
  String? answer2,
  int? questionID3,
  String? answer3,
}) =>
    UserSecurityQuestionAnswersStruct(
      questionID1: questionID1,
      answer1: answer1,
      questionID2: questionID2,
      answer2: answer2,
      questionID3: questionID3,
      answer3: answer3,
    );
