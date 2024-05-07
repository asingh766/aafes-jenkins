import '/flutter_flow/flutter_flow_util.dart';
import 'custom_outlined_text_field_d_o_b_widget.dart'
    show CustomOutlinedTextFieldDOBWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CustomOutlinedTextFieldDOBModel
    extends FlutterFlowModel<CustomOutlinedTextFieldDOBWidget> {
  ///  Local state fields for this component.

  String? value;

  String? error;

  bool hasError = false;

  bool hasFocus = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  final textFieldMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
