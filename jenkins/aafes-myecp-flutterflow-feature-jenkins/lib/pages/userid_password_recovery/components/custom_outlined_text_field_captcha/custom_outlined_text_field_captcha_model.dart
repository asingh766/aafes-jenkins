import '/flutter_flow/flutter_flow_util.dart';
import 'custom_outlined_text_field_captcha_widget.dart'
    show CustomOutlinedTextFieldCaptchaWidget;
import 'package:flutter/material.dart';

class CustomOutlinedTextFieldCaptchaModel
    extends FlutterFlowModel<CustomOutlinedTextFieldCaptchaWidget> {
  ///  Local state fields for this component.

  String? value;

  String? error;

  bool hasError = false;

  bool hasFocus = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
