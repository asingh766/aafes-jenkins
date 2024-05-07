import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/common_circular_indicator/common_circular_indicator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/my_account/update_email_address/added2_f_a_sec_comp/added2_f_a_sec_comp_widget.dart';
import 'update_security_questions_widget.dart'
    show UpdateSecurityQuestionsWidget;
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class UpdateSecurityQuestionsModel
    extends FlutterFlowModel<UpdateSecurityQuestionsWidget> {
  ///  Local state fields for this component.

  List<SecurityQuestionStruct> securityQuestion1 = [];
  void addToSecurityQuestion1(SecurityQuestionStruct item) =>
      securityQuestion1.add(item);
  void removeFromSecurityQuestion1(SecurityQuestionStruct item) =>
      securityQuestion1.remove(item);
  void removeAtIndexFromSecurityQuestion1(int index) =>
      securityQuestion1.removeAt(index);
  void insertAtIndexInSecurityQuestion1(
          int index, SecurityQuestionStruct item) =>
      securityQuestion1.insert(index, item);
  void updateSecurityQuestion1AtIndex(
          int index, Function(SecurityQuestionStruct) updateFn) =>
      securityQuestion1[index] = updateFn(securityQuestion1[index]);

  List<SecurityQuestionStruct> securityQuestion2 = [];
  void addToSecurityQuestion2(SecurityQuestionStruct item) =>
      securityQuestion2.add(item);
  void removeFromSecurityQuestion2(SecurityQuestionStruct item) =>
      securityQuestion2.remove(item);
  void removeAtIndexFromSecurityQuestion2(int index) =>
      securityQuestion2.removeAt(index);
  void insertAtIndexInSecurityQuestion2(
          int index, SecurityQuestionStruct item) =>
      securityQuestion2.insert(index, item);
  void updateSecurityQuestion2AtIndex(
          int index, Function(SecurityQuestionStruct) updateFn) =>
      securityQuestion2[index] = updateFn(securityQuestion2[index]);

  List<SecurityQuestionStruct> securityQuestion3 = [];
  void addToSecurityQuestion3(SecurityQuestionStruct item) =>
      securityQuestion3.add(item);
  void removeFromSecurityQuestion3(SecurityQuestionStruct item) =>
      securityQuestion3.remove(item);
  void removeAtIndexFromSecurityQuestion3(int index) =>
      securityQuestion3.removeAt(index);
  void insertAtIndexInSecurityQuestion3(
          int index, SecurityQuestionStruct item) =>
      securityQuestion3.insert(index, item);
  void updateSecurityQuestion3AtIndex(
          int index, Function(SecurityQuestionStruct) updateFn) =>
      securityQuestion3[index] = updateFn(securityQuestion3[index]);

  String? securityQuestionAnswer1 = '';

  String? securityQuestionAnswer2 = '';

  String? securityQuestionAnswer3 = '';

  bool hasErrorSQ2 = false;

  bool hasErrorSQ3 = false;

  bool isEdit = false;

  String? password = '';

  bool hasPasswordError = false;

  bool hasErrorSQ1 = false;

  bool hasError = false;

  bool isLoading = false;

  UserSecurityQuestionAnswersStruct? userQuestionAnswers;
  void updateUserQuestionAnswersStruct(
          Function(UserSecurityQuestionAnswersStruct) updateFn) =>
      updateFn(userQuestionAnswers ??= UserSecurityQuestionAnswersStruct());

  String? passwordErrorMessage;

  String? error;

  bool isSucess = false;

  bool isUpdateError = false;

  bool? isTwoFactorAuth = false;

  ///  State fields for stateful widgets in this component.

  // Model for CommonCircularIndicator component.
  late CommonCircularIndicatorModel commonCircularIndicatorModel;
  // State field(s) for question1 widget.
  int? question1Value;
  FormFieldController<int>? question1ValueController;
  // State field(s) for question2 widget.
  int? question2Value;
  FormFieldController<int>? question2ValueController;
  // State field(s) for question3 widget.
  int? question3Value;
  FormFieldController<int>? question3ValueController;
  // Stores action output result for [Backend Call - API (Update Security Questions)] action in Button widget.
  ApiCallResponse? updateSecurityQuestions;
  // Stores action output result for [Backend Call - API (User Security Answers)] action in Button widget.
  ApiCallResponse? updatedUserAnswers;
  // Model for Added2FASecComp component.
  late Added2FASecCompModel added2FASecCompModel;

  @override
  void initState(BuildContext context) {
    commonCircularIndicatorModel =
        createModel(context, () => CommonCircularIndicatorModel());
    added2FASecCompModel = createModel(context, () => Added2FASecCompModel());
  }

  @override
  void dispose() {
    commonCircularIndicatorModel.dispose();
    added2FASecCompModel.dispose();
  }

  /// Action blocks.
  Future onInitialization(BuildContext context) async {
    ApiCallResponse? securityQuestions1;
    ApiCallResponse? securityQuestions2;
    ApiCallResponse? securityQuestions3;
    ApiCallResponse? userAnswers;

    password = '';
    isLoading = true;
    hasError = false;
    await Future.wait([
      Future(() async {
        securityQuestions1 =
            await SecurityAlertsGroup.securityQuestionsCall.call(
          type: '1',
          dynamicBaseURL: FFAppState().dynamicBaseURL,
        );
        if ((securityQuestions1?.succeeded ?? true)) {
          securityQuestion1 = ((securityQuestions1?.jsonBody ?? '')
                  .toList()
                  .map<SecurityQuestionStruct?>(
                      SecurityQuestionStruct.maybeFromMap)
                  .toList() as Iterable<SecurityQuestionStruct?>)
              .withoutNulls
              .toList()
              .cast<SecurityQuestionStruct>();
        }
      }),
      Future(() async {
        securityQuestions2 =
            await SecurityAlertsGroup.securityQuestionsCall.call(
          type: '2',
          dynamicBaseURL: FFAppState().dynamicBaseURL,
        );
        if ((securityQuestions2?.succeeded ?? true)) {
          securityQuestion2 = ((securityQuestions2?.jsonBody ?? '')
                  .toList()
                  .map<SecurityQuestionStruct?>(
                      SecurityQuestionStruct.maybeFromMap)
                  .toList() as Iterable<SecurityQuestionStruct?>)
              .withoutNulls
              .toList()
              .cast<SecurityQuestionStruct>();
        }
      }),
      Future(() async {
        securityQuestions3 =
            await SecurityAlertsGroup.securityQuestionsCall.call(
          type: '3',
          dynamicBaseURL: FFAppState().dynamicBaseURL,
        );
        if ((securityQuestions3?.succeeded ?? true)) {
          securityQuestion3 = ((securityQuestions3?.jsonBody ?? '')
                  .toList()
                  .map<SecurityQuestionStruct?>(
                      SecurityQuestionStruct.maybeFromMap)
                  .toList() as Iterable<SecurityQuestionStruct?>)
              .withoutNulls
              .toList()
              .cast<SecurityQuestionStruct>();
        }
      }),
      Future(() async {
        userAnswers = await SecurityAlertsGroup.userSecurityAnswersCall.call(
          userId: FFAppState().selectedUserId.toString(),
          dynamicBaseURL: FFAppState().dynamicBaseURL,
        );
        if ((userAnswers?.succeeded ?? true)) {
          userQuestionAnswers = UserSecurityQuestionAnswersStruct.maybeFromMap(
              (userAnswers?.jsonBody ?? ''));
          securityQuestionAnswer1 =
              UserSecurityQuestionAnswersStruct.maybeFromMap(
                      (userAnswers?.jsonBody ?? ''))
                  ?.answer1;
          securityQuestionAnswer2 =
              UserSecurityQuestionAnswersStruct.maybeFromMap(
                      (userAnswers?.jsonBody ?? ''))
                  ?.answer2;
          securityQuestionAnswer3 =
              UserSecurityQuestionAnswersStruct.maybeFromMap(
                      (userAnswers?.jsonBody ?? ''))
                  ?.answer3;
        }
      }),
    ]);
    if (!(securityQuestions1?.succeeded ?? true) ||
        !(securityQuestions2?.succeeded ?? true) ||
        !(securityQuestions3?.succeeded ?? true)) {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: const Text('Error'),
              content: const Text('Something went wrong, please try agian later.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: const Text('Ok'),
                ),
              ],
            ),
          );
        },
      );
      hasError = true;
    }
    isLoading = false;
  }
}
