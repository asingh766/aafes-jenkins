import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/payments/payment_account_selector/payment_account_selector_widget.dart';
import '/payments/payment_form/payment_form_widget.dart';
import '/payments/payment_unavailable/payment_unavailable_widget.dart';
import '/payments/scheduled_payment/scheduled_payment_widget.dart';
import 'one_time_payment_widget.dart' show OneTimePaymentWidget;
import 'package:flutter/material.dart';

class OneTimePaymentModel extends FlutterFlowModel<OneTimePaymentWidget> {
  ///  Local state fields for this page.

  List<PaymentAccountStruct> paymentAccounts = [];
  void addToPaymentAccounts(PaymentAccountStruct item) =>
      paymentAccounts.add(item);
  void removeFromPaymentAccounts(PaymentAccountStruct item) =>
      paymentAccounts.remove(item);
  void removeAtIndexFromPaymentAccounts(int index) =>
      paymentAccounts.removeAt(index);
  void insertAtIndexInPaymentAccounts(int index, PaymentAccountStruct item) =>
      paymentAccounts.insert(index, item);
  void updatePaymentAccountsAtIndex(
          int index, Function(PaymentAccountStruct) updateFn) =>
      paymentAccounts[index] = updateFn(paymentAccounts[index]);

  List<PaymentStruct> payments = [];
  void addToPayments(PaymentStruct item) => payments.add(item);
  void removeFromPayments(PaymentStruct item) => payments.remove(item);
  void removeAtIndexFromPayments(int index) => payments.removeAt(index);
  void insertAtIndexInPayments(int index, PaymentStruct item) =>
      payments.insert(index, item);
  void updatePaymentsAtIndex(int index, Function(PaymentStruct) updateFn) =>
      payments[index] = updateFn(payments[index]);

  bool isLoading = false;

  List<OptionStruct> accountOptions = [];
  void addToAccountOptions(OptionStruct item) => accountOptions.add(item);
  void removeFromAccountOptions(OptionStruct item) =>
      accountOptions.remove(item);
  void removeAtIndexFromAccountOptions(int index) =>
      accountOptions.removeAt(index);
  void insertAtIndexInAccountOptions(int index, OptionStruct item) =>
      accountOptions.insert(index, item);
  void updateAccountOptionsAtIndex(
          int index, Function(OptionStruct) updateFn) =>
      accountOptions[index] = updateFn(accountOptions[index]);

  OptionStruct? selectedAccount;
  void updateSelectedAccountStruct(Function(OptionStruct) updateFn) =>
      updateFn(selectedAccount ??= OptionStruct());

  List<OptionIntStruct> bankingProfileOptions = [];
  void addToBankingProfileOptions(OptionIntStruct item) =>
      bankingProfileOptions.add(item);
  void removeFromBankingProfileOptions(OptionIntStruct item) =>
      bankingProfileOptions.remove(item);
  void removeAtIndexFromBankingProfileOptions(int index) =>
      bankingProfileOptions.removeAt(index);
  void insertAtIndexInBankingProfileOptions(int index, OptionIntStruct item) =>
      bankingProfileOptions.insert(index, item);
  void updateBankingProfileOptionsAtIndex(
          int index, Function(OptionIntStruct) updateFn) =>
      bankingProfileOptions[index] = updateFn(bankingProfileOptions[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Banking Profiles)] action in oneTimePayment widget.
  ApiCallResponse? getpaymentAccountList;
  // Stores action output result for [Backend Call - API (Get Payments)] action in oneTimePayment widget.
  ApiCallResponse? accountPaymentResults;
  // Model for PaymentAccountSelector component.
  late PaymentAccountSelectorModel paymentAccountSelectorModel;
  // Stores action output result for [Backend Call - API (Get Payments)] action in PaymentAccountSelector widget.
  ApiCallResponse? newAccountPaymentResults;
  // Model for paymentUnavailable component.
  late PaymentUnavailableModel paymentUnavailableModel;
  // Model for scheduledPayment component.
  late ScheduledPaymentModel scheduledPaymentModel;
  // Stores action output result for [Backend Call - API (Delete Payment)] action in scheduledPayment widget.
  ApiCallResponse? deletePaymentResult;
  // Stores action output result for [Backend Call - API (Get Payments)] action in scheduledPayment widget.
  ApiCallResponse? deleteRefreshAccountPaymentResults;
  // Model for paymentForm component.
  late PaymentFormModel paymentFormModel;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for Header component.
  late HeaderModel headerModel;

  @override
  void initState(BuildContext context) {
    paymentAccountSelectorModel =
        createModel(context, () => PaymentAccountSelectorModel());
    paymentUnavailableModel =
        createModel(context, () => PaymentUnavailableModel());
    scheduledPaymentModel = createModel(context, () => ScheduledPaymentModel());
    paymentFormModel = createModel(context, () => PaymentFormModel());
    footerModel = createModel(context, () => FooterModel());
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    paymentAccountSelectorModel.dispose();
    paymentUnavailableModel.dispose();
    scheduledPaymentModel.dispose();
    paymentFormModel.dispose();
    footerModel.dispose();
    headerModel.dispose();
  }
}
