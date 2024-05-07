import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'confirm_delete_alert_box_widget.dart' show ConfirmDeleteAlertBoxWidget;
import 'package:flutter/material.dart';

class ConfirmDeleteAlertBoxModel
    extends FlutterFlowModel<ConfirmDeleteAlertBoxWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel;

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
