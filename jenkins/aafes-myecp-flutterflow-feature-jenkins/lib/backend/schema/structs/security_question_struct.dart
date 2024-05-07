// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SecurityQuestionStruct extends BaseStruct {
  SecurityQuestionStruct({
    int? eCPUsersCommonQuestionID,
    int? questionID,
    String? question,
    String? createdDate,
  })  : _eCPUsersCommonQuestionID = eCPUsersCommonQuestionID,
        _questionID = questionID,
        _question = question,
        _createdDate = createdDate;

  // "ECPUsersCommonQuestionID" field.
  int? _eCPUsersCommonQuestionID;
  int get eCPUsersCommonQuestionID => _eCPUsersCommonQuestionID ?? 0;
  set eCPUsersCommonQuestionID(int? val) => _eCPUsersCommonQuestionID = val;
  void incrementECPUsersCommonQuestionID(int amount) =>
      _eCPUsersCommonQuestionID = eCPUsersCommonQuestionID + amount;
  bool hasECPUsersCommonQuestionID() => _eCPUsersCommonQuestionID != null;

  // "QuestionID" field.
  int? _questionID;
  int get questionID => _questionID ?? 0;
  set questionID(int? val) => _questionID = val;
  void incrementQuestionID(int amount) => _questionID = questionID + amount;
  bool hasQuestionID() => _questionID != null;

  // "Question" field.
  String? _question;
  String get question => _question ?? '';
  set question(String? val) => _question = val;
  bool hasQuestion() => _question != null;

  // "CreatedDate" field.
  String? _createdDate;
  String get createdDate => _createdDate ?? '';
  set createdDate(String? val) => _createdDate = val;
  bool hasCreatedDate() => _createdDate != null;

  static SecurityQuestionStruct fromMap(Map<String, dynamic> data) =>
      SecurityQuestionStruct(
        eCPUsersCommonQuestionID:
            castToType<int>(data['ECPUsersCommonQuestionID']),
        questionID: castToType<int>(data['QuestionID']),
        question: data['Question'] as String?,
        createdDate: data['CreatedDate'] as String?,
      );

  static SecurityQuestionStruct? maybeFromMap(dynamic data) => data is Map
      ? SecurityQuestionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ECPUsersCommonQuestionID': _eCPUsersCommonQuestionID,
        'QuestionID': _questionID,
        'Question': _question,
        'CreatedDate': _createdDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ECPUsersCommonQuestionID': serializeParam(
          _eCPUsersCommonQuestionID,
          ParamType.int,
        ),
        'QuestionID': serializeParam(
          _questionID,
          ParamType.int,
        ),
        'Question': serializeParam(
          _question,
          ParamType.String,
        ),
        'CreatedDate': serializeParam(
          _createdDate,
          ParamType.String,
        ),
      }.withoutNulls;

  static SecurityQuestionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SecurityQuestionStruct(
        eCPUsersCommonQuestionID: deserializeParam(
          data['ECPUsersCommonQuestionID'],
          ParamType.int,
          false,
        ),
        questionID: deserializeParam(
          data['QuestionID'],
          ParamType.int,
          false,
        ),
        question: deserializeParam(
          data['Question'],
          ParamType.String,
          false,
        ),
        createdDate: deserializeParam(
          data['CreatedDate'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SecurityQuestionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SecurityQuestionStruct &&
        eCPUsersCommonQuestionID == other.eCPUsersCommonQuestionID &&
        questionID == other.questionID &&
        question == other.question &&
        createdDate == other.createdDate;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([eCPUsersCommonQuestionID, questionID, question, createdDate]);
}

SecurityQuestionStruct createSecurityQuestionStruct({
  int? eCPUsersCommonQuestionID,
  int? questionID,
  String? question,
  String? createdDate,
}) =>
    SecurityQuestionStruct(
      eCPUsersCommonQuestionID: eCPUsersCommonQuestionID,
      questionID: questionID,
      question: question,
      createdDate: createdDate,
    );
