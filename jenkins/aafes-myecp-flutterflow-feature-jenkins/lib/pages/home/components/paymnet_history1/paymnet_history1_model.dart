import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/no_datafound_table_text/no_datafound_table_text_widget.dart';
import '/pages/home/components/payment_history_header/payment_history_header_widget.dart';
import 'paymnet_history1_widget.dart' show PaymnetHistory1Widget;
import 'package:flutter/material.dart';

class PaymnetHistory1Model extends FlutterFlowModel<PaymnetHistory1Widget> {
  ///  Local state fields for this component.

  int? selelctedPaymentHistoryIndex = -1;

  ///  State fields for stateful widgets in this component.

  // Model for paymentHistoryHeader component.
  late PaymentHistoryHeaderModel paymentHistoryHeaderModel;
  // Model for NoDatafoundTableText component.
  late NoDatafoundTableTextModel noDatafoundTableTextModel;

  @override
  void initState(BuildContext context) {
    paymentHistoryHeaderModel =
        createModel(context, () => PaymentHistoryHeaderModel());
    noDatafoundTableTextModel =
        createModel(context, () => NoDatafoundTableTextModel());
  }

  @override
  void dispose() {
    paymentHistoryHeaderModel.dispose();
    noDatafoundTableTextModel.dispose();
  }
}
