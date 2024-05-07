import '/backend/api_requests/api_calls.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'registration2_component_widget.dart' show Registration2ComponentWidget;
import 'package:flutter/material.dart';

class Registration2ComponentModel
    extends FlutterFlowModel<Registration2ComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel;
  // Stores action output result for [Backend Call - API (resendEmail)] action in CommonCustomButton widget.
  ApiCallResponse? apiResponseResendEmail;

  @override
  void initState(BuildContext context) {
    commonCustomButtonModel =
        createModel(context, () => CommonCustomButtonModel());
  }

  @override
  void dispose() {
    commonCustomButtonModel.dispose();
  }
}
