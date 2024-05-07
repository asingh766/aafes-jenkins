import '/flutter_flow/flutter_flow_util.dart';
import 'custom_outlined_phone_text_f_general_m_c_widget.dart'
    show CustomOutlinedPhoneTextFGeneralMCWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CustomOutlinedPhoneTextFGeneralMCModel
    extends FlutterFlowModel<CustomOutlinedPhoneTextFGeneralMCWidget> {
  ///  Local state fields for this component.

  String? value;

  String? error;

  bool hasError = false;

  bool hasFocus = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TFPhone widget.
  FocusNode? tFPhoneFocusNode;
  TextEditingController? tFPhoneTextController;
  final tFPhoneMask = MaskTextInputFormatter(mask: '###-###-####');
  String? Function(BuildContext, String?)? tFPhoneTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tFPhoneFocusNode?.dispose();
    tFPhoneTextController?.dispose();
  }
}
