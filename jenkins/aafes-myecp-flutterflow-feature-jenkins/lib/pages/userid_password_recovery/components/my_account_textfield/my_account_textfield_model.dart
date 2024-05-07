import '/flutter_flow/flutter_flow_util.dart';
import 'my_account_textfield_widget.dart' show MyAccountTextfieldWidget;
import 'package:flutter/material.dart';

class MyAccountTextfieldModel
    extends FlutterFlowModel<MyAccountTextfieldWidget> {
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
