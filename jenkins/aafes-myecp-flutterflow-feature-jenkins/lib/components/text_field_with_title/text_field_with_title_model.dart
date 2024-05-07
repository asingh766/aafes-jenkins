import '/flutter_flow/flutter_flow_util.dart';
import 'text_field_with_title_widget.dart' show TextFieldWithTitleWidget;
import 'package:flutter/material.dart';

class TextFieldWithTitleModel
    extends FlutterFlowModel<TextFieldWithTitleWidget> {
  ///  Local state fields for this component.

  bool hasFocus = false;

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
