import '/flutter_flow/flutter_flow_util.dart';
import 'custom_outlined_text_f_general_m_c_widget.dart'
    show CustomOutlinedTextFGeneralMCWidget;
import 'package:flutter/material.dart';

class CustomOutlinedTextFGeneralMCModel
    extends FlutterFlowModel<CustomOutlinedTextFGeneralMCWidget> {
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
