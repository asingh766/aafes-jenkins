import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/payments/payment_account_selector/payment_account_selector_widget.dart';
import 'payment_upcoming_widget.dart' show PaymentUpcomingWidget;
import 'package:flutter/material.dart';

class PaymentUpcomingModel extends FlutterFlowModel<PaymentUpcomingWidget> {
  ///  Local state fields for this page.

  List<dynamic> bankAccountsAndBankProfileJSON = [];
  void addToBankAccountsAndBankProfileJSON(dynamic item) =>
      bankAccountsAndBankProfileJSON.add(item);
  void removeFromBankAccountsAndBankProfileJSON(dynamic item) =>
      bankAccountsAndBankProfileJSON.remove(item);
  void removeAtIndexFromBankAccountsAndBankProfileJSON(int index) =>
      bankAccountsAndBankProfileJSON.removeAt(index);
  void insertAtIndexInBankAccountsAndBankProfileJSON(int index, dynamic item) =>
      bankAccountsAndBankProfileJSON.insert(index, item);
  void updateBankAccountsAndBankProfileJSONAtIndex(
          int index, Function(dynamic) updateFn) =>
      bankAccountsAndBankProfileJSON[index] =
          updateFn(bankAccountsAndBankProfileJSON[index]);

  dynamic apiResponseAddPayments;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PaymentAccountSelector component.
  late PaymentAccountSelectorModel paymentAccountSelectorModel;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel1;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel2;
  // Model for Footer component.
  late FooterModel footerModel1;
  // Model for Header component.
  late HeaderModel headerModel1;
  // Model for Header component.
  late HeaderModel headerModel2;
  // Model for Footer component.
  late FooterModel footerModel2;

  @override
  void initState(BuildContext context) {
    paymentAccountSelectorModel =
        createModel(context, () => PaymentAccountSelectorModel());
    commonCustomButtonModel1 =
        createModel(context, () => CommonCustomButtonModel());
    commonCustomButtonModel2 =
        createModel(context, () => CommonCustomButtonModel());
    footerModel1 = createModel(context, () => FooterModel());
    headerModel1 = createModel(context, () => HeaderModel());
    headerModel2 = createModel(context, () => HeaderModel());
    footerModel2 = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    paymentAccountSelectorModel.dispose();
    commonCustomButtonModel1.dispose();
    commonCustomButtonModel2.dispose();
    footerModel1.dispose();
    headerModel1.dispose();
    headerModel2.dispose();
    footerModel2.dispose();
  }
}
