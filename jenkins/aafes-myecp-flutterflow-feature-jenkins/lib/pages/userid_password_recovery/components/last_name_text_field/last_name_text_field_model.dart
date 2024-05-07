import '/flutter_flow/flutter_flow_util.dart';
import 'last_name_text_field_widget.dart' show LastNameTextFieldWidget;
import 'package:flutter/material.dart';

class LastNameTextFieldModel extends FlutterFlowModel<LastNameTextFieldWidget> {
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
