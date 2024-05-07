import '/components/common_custom_button/common_custom_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'resend_email_dialog_widget.dart' show ResendEmailDialogWidget;
import 'package:flutter/material.dart';

class ResendEmailDialogModel extends FlutterFlowModel<ResendEmailDialogWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel;

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
