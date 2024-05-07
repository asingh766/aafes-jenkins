import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/payment/components/custom_outlined_text_field_date_payments/custom_outlined_text_field_date_payments_widget.dart';
import 'payment_form_widget.dart' show PaymentFormWidget;
import 'package:flutter/material.dart';

class PaymentFormModel extends FlutterFlowModel<PaymentFormWidget> {
  ///  Local state fields for this component.

  String amount = ' ';

  ///  State fields for stateful widgets in this component.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // Model for CustomOutlinedTextFieldDatePayments component.
  late CustomOutlinedTextFieldDatePaymentsModel
      customOutlinedTextFieldDatePaymentsModel;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController3;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController4;

  @override
  void initState(BuildContext context) {
    customOutlinedTextFieldDatePaymentsModel =
        createModel(context, () => CustomOutlinedTextFieldDatePaymentsModel());
  }

  @override
  void dispose() {
    customOutlinedTextFieldDatePaymentsModel.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
  String? get radioButtonValue3 => radioButtonValueController3?.value;
  String? get radioButtonValue4 => radioButtonValueController4?.value;
}
