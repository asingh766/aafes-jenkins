import '/backend/api_requests/api_calls.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'confirm_o_t_p_alert_box_widget.dart' show ConfirmOTPAlertBoxWidget;
import 'package:flutter/material.dart';

class ConfirmOTPAlertBoxModel
    extends FlutterFlowModel<ConfirmOTPAlertBoxWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel;
  // Stores action output result for [Backend Call - API (Add Payament)] action in CommonCustomButton widget.
  ApiCallResponse? apiResponseAddPayment;

  @override
  void initState(BuildContext context) {
    commonCancelButtonModel =
        createModel(context, () => CommonCancelButtonModel());
    commonCustomButtonModel =
        createModel(context, () => CommonCustomButtonModel());
  }

  @override
  void dispose() {
    commonCancelButtonModel.dispose();
    commonCustomButtonModel.dispose();
  }
}
