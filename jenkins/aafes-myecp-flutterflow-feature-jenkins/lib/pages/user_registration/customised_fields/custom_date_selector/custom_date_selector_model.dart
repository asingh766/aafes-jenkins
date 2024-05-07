import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'custom_date_selector_widget.dart' show CustomDateSelectorWidget;
import 'package:flutter/material.dart';

class CustomDateSelectorModel
    extends FlutterFlowModel<CustomDateSelectorWidget> {
  ///  Local state fields for this component.

  String? month;

  String? year;

  ///  State fields for stateful widgets in this component.

  // State field(s) for cardExpiryMonthDropDown widget.
  String? cardExpiryMonthDropDownValue;
  FormFieldController<String>? cardExpiryMonthDropDownValueController;
  // State field(s) for cardExpiryYearDropDown widget.
  String? cardExpiryYearDropDownValue;
  FormFieldController<String>? cardExpiryYearDropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
