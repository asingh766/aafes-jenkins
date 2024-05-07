import '/flutter_flow/flutter_flow_util.dart';
import 'password_text_field_with_title_widget.dart'
    show PasswordTextFieldWithTitleWidget;
import 'package:flutter/material.dart';

class PasswordTextFieldWithTitleModel
    extends FlutterFlowModel<PasswordTextFieldWithTitleWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
