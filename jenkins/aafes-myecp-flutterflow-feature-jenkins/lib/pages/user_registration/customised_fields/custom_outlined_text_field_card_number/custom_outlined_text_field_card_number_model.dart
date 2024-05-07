import '/flutter_flow/flutter_flow_util.dart';
import 'custom_outlined_text_field_card_number_widget.dart'
    show CustomOutlinedTextFieldCardNumberWidget;
import 'package:flutter/material.dart';

class CustomOutlinedTextFieldCardNumberModel
    extends FlutterFlowModel<CustomOutlinedTextFieldCardNumberWidget> {
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
