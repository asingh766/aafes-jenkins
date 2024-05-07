import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/payments/payment_account_selector/payment_account_selector_widget.dart';
import 'payment_manage_autopay_widget.dart' show PaymentManageAutopayWidget;
import 'package:flutter/material.dart';

class PaymentManageAutopayModel
    extends FlutterFlowModel<PaymentManageAutopayWidget> {
  ///  Local state fields for this page.

  dynamic getPaymentJSON;

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

  bool isAccountBlocked = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Bank Accounts and Bank Profiles by User ID)] action in payment_manage_autopay widget.
  ApiCallResponse? apiResponseBanksAndBankProfiles;
  // Stores action output result for [Backend Call - API (Get Payments)] action in payment_manage_autopay widget.
  ApiCallResponse? apiResponseGetPayments;
  // Model for PaymentAccountSelector component.
  late PaymentAccountSelectorModel paymentAccountSelectorModel;
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
    footerModel1 = createModel(context, () => FooterModel());
    headerModel1 = createModel(context, () => HeaderModel());
    headerModel2 = createModel(context, () => HeaderModel());
    footerModel2 = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    paymentAccountSelectorModel.dispose();
    footerModel1.dispose();
    headerModel1.dispose();
    headerModel2.dispose();
    footerModel2.dispose();
  }
}
