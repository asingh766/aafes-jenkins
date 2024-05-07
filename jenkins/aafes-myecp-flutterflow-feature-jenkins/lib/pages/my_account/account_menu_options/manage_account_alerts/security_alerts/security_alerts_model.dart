import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/common_circular_indicator/common_circular_indicator_widget.dart';
import '/components/info_help_icon/info_help_icon_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'security_alerts_widget.dart' show SecurityAlertsWidget;
import 'package:flutter/material.dart';

class SecurityAlertsModel extends FlutterFlowModel<SecurityAlertsWidget> {
  ///  Local state fields for this component.

  bool isSecurityAlertsExpanded = true;

  bool isPaymentAlertsExpanded = true;

  bool isTransactionAlertsExpanded = true;

  SecurityAlertsStruct? securityAlerts;
  void updateSecurityAlertsStruct(Function(SecurityAlertsStruct) updateFn) =>
      updateFn(securityAlerts ??= SecurityAlertsStruct());

  bool isLoading = false;

  String transactionAmount = ' ';

  String currentBalance = ' ';

  String availableBalance = ' ';

  String remainderDays = ' ';

  String passwordErrorMessage = ' ';

  String password = ' ';

  bool hasError = false;

  bool hasUpdateError = false;

  String updateErrorMessage = ' ';

  bool hasSuccess = false;

  bool isPasswordRequired = false;

  ///  State fields for stateful widgets in this component.

  // Model for CommonCircularIndicator component.
  late CommonCircularIndicatorModel commonCircularIndicatorModel;
  // State field(s) for emailTwoFactor widget.
  bool? emailTwoFactorValue;
  // State field(s) for textTwoFactor widget.
  bool? textTwoFactorValue;
  // Model for InfoHelpIcon component.
  late InfoHelpIconModel infoHelpIconModel1;
  // State field(s) for emailPaymentRecieved widget.
  bool? emailPaymentRecievedValue;
  // State field(s) for textPaymentRecieved widget.
  bool? textPaymentRecievedValue;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for InfoHelpIcon component.
  late InfoHelpIconModel infoHelpIconModel2;
  // State field(s) for emailPaymentRemainder widget.
  bool? emailPaymentRemainderValue;
  // State field(s) for textPaymentRemainder widget.
  bool? textPaymentRemainderValue;
  // Model for InfoHelpIcon component.
  late InfoHelpIconModel infoHelpIconModel3;
  // State field(s) for emailStatementReady widget.
  bool? emailStatementReadyValue;
  // State field(s) for textStatementReady widget.
  bool? textStatementReadyValue;
  // Model for InfoHelpIcon component.
  late InfoHelpIconModel infoHelpIconModel4;
  // State field(s) for emailPastDueRemainder widget.
  bool? emailPastDueRemainderValue;
  // State field(s) for textPastDueRemainder widget.
  bool? textPastDueRemainderValue;
  // Model for InfoHelpIcon component.
  late InfoHelpIconModel infoHelpIconModel5;
  // State field(s) for emailTransactionAmount widget.
  bool? emailTransactionAmountValue;
  // State field(s) for textTransactionAmount widget.
  bool? textTransactionAmountValue;
  // Model for InfoHelpIcon component.
  late InfoHelpIconModel infoHelpIconModel6;
  // State field(s) for emailCurrentBalance widget.
  bool? emailCurrentBalanceValue;
  // State field(s) for textCurrentBalance widget.
  bool? textCurrentBalanceValue;
  // Model for InfoHelpIcon component.
  late InfoHelpIconModel infoHelpIconModel7;
  // State field(s) for emailAvailableBalance widget.
  bool? emailAvailableBalanceValue;
  // State field(s) for textAvailableBalance widget.
  bool? textAvailableBalanceValue;
  // Model for InfoHelpIcon component.
  late InfoHelpIconModel infoHelpIconModel8;
  // State field(s) for emailCardNotPresent widget.
  bool? emailCardNotPresentValue;
  // State field(s) for textCardNotPresent widget.
  bool? textCardNotPresentValue;
  // Stores action output result for [Backend Call - API (Update Security Alerts)] action in Button widget.
  ApiCallResponse? alertsResponse;
  // Stores action output result for [Backend Call - API (Security Alerts)] action in Button widget.
  ApiCallResponse? getSecurityAlertResponse;
  // Stores action output result for [Backend Call - API (AskTwoFactor)] action in Button widget.
  ApiCallResponse? askTwoFactorRes;

  @override
  void initState(BuildContext context) {
    commonCircularIndicatorModel =
        createModel(context, () => CommonCircularIndicatorModel());
    infoHelpIconModel1 = createModel(context, () => InfoHelpIconModel());
    infoHelpIconModel2 = createModel(context, () => InfoHelpIconModel());
    infoHelpIconModel3 = createModel(context, () => InfoHelpIconModel());
    infoHelpIconModel4 = createModel(context, () => InfoHelpIconModel());
    infoHelpIconModel5 = createModel(context, () => InfoHelpIconModel());
    infoHelpIconModel6 = createModel(context, () => InfoHelpIconModel());
    infoHelpIconModel7 = createModel(context, () => InfoHelpIconModel());
    infoHelpIconModel8 = createModel(context, () => InfoHelpIconModel());
  }

  @override
  void dispose() {
    commonCircularIndicatorModel.dispose();
    infoHelpIconModel1.dispose();
    infoHelpIconModel2.dispose();
    infoHelpIconModel3.dispose();
    infoHelpIconModel4.dispose();
    infoHelpIconModel5.dispose();
    infoHelpIconModel6.dispose();
    infoHelpIconModel7.dispose();
    infoHelpIconModel8.dispose();
  }

  /// Action blocks.
  Future initialLoading(BuildContext context) async {
    ApiCallResponse? getSecurityAlerts;

    isLoading = true;
    password = '';
    passwordErrorMessage = '';
    updateErrorMessage = '';
    hasError = false;
    hasUpdateError = false;
    isPasswordRequired = false;
    hasSuccess = false;
    getSecurityAlerts = await SecurityAlertsGroup.securityAlertsCall.call(
      userId: FFAppState().selectedUserId.toString(),
      dynamicBaseURL: FFAppState().dynamicBaseURL,
    );
    if ((getSecurityAlerts.succeeded ?? true)) {
      securityAlerts = SecurityAlertsStruct.maybeFromMap(
          (getSecurityAlerts.jsonBody ?? ''));
      transactionAmount = SecurityAlertsStruct.maybeFromMap(
              (getSecurityAlerts.jsonBody ?? ''))!
          .transactionAmount
          .toString();
      currentBalance = SecurityAlertsStruct.maybeFromMap(
              (getSecurityAlerts.jsonBody ?? ''))!
          .currentBalance
          .toString();
      availableBalance = SecurityAlertsStruct.maybeFromMap(
              (getSecurityAlerts.jsonBody ?? ''))!
          .availableBalance
          .toString();
      remainderDays = SecurityAlertsStruct.maybeFromMap(
              (getSecurityAlerts.jsonBody ?? ''))!
          .paymentReminderDueDays
          .toString();
    }
    isLoading = false;
  }
}
