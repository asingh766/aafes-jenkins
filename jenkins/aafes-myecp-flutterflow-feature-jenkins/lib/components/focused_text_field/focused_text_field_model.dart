import '/flutter_flow/flutter_flow_util.dart';
import 'focused_text_field_widget.dart' show FocusedTextFieldWidget;
import 'package:flutter/material.dart';

class FocusedTextFieldModel extends FlutterFlowModel<FocusedTextFieldWidget> {
  ///  Local state fields for this component.

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
