import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'select_statement_comp_widget.dart' show SelectStatementCompWidget;
import 'package:flutter/material.dart';

class SelectStatementCompModel
    extends FlutterFlowModel<SelectStatementCompWidget> {
  ///  Local state fields for this component.

  bool isDateEmpty = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
