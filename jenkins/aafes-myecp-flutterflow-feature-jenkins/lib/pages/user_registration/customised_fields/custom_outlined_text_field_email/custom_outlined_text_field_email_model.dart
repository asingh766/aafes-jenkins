import '/flutter_flow/flutter_flow_util.dart';
import 'custom_outlined_text_field_email_widget.dart'
    show CustomOutlinedTextFieldEmailWidget;
import 'package:flutter/material.dart';

class CustomOutlinedTextFieldEmailModel
    extends FlutterFlowModel<CustomOutlinedTextFieldEmailWidget> {
  ///  Local state fields for this component.

  String? value;

  String? error;

  bool hasError = false;

  bool hasFocus = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();
  }
}
