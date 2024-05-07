import '/backend/api_requests/api_calls.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_circular_indicator/common_circular_indicator_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/payment/components/custom_outlined_text_field_date_payments/custom_outlined_text_field_date_payments_widget.dart';
import '/payments/payment_account_selector/payment_account_selector_widget.dart';
import 'edit_auto_pay_widget.dart' show EditAutoPayWidget;
import 'package:flutter/material.dart';

class EditAutoPayModel extends FlutterFlowModel<EditAutoPayWidget> {
  ///  Local state fields for this page.

  dynamic getAccountSummaryJSON;

  int currentProfileNo = 0;

  String currentPaymentType = 'OneTime';

  String currentPaymentDate = ' ';

  String currentOtherAmountValue = '0';

  dynamic selectedBankProfile;

  String errorDOB = ' ';

  bool? hasErrorDOB = false;

  bool? calendarHasFocus = true;

  String? errorText;

  String selectedOtherPaymentAmount = '0';

  String selectedPaymentOption = ' ';

  String otherPaymentAmount = ' 0';

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

  bool isLoading = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Bank Accounts and Bank Profiles by User ID)] action in edit_autoPay widget.
  ApiCallResponse? apiResponseBanksAndBankProfiles;
  // Stores action output result for [Backend Call - API (Account Summary By Account Number)] action in edit_autoPay widget.
  ApiCallResponse? apiResponseAccountSummary;
  // Model for CommonCircularIndicator component.
  late CommonCircularIndicatorModel commonCircularIndicatorModel;
  // Model for PaymentAccountSelector component.
  late PaymentAccountSelectorModel paymentAccountSelectorModel;
  // State field(s) for RadioPaymentMethod-D widget.
  FormFieldController<String>? radioPaymentMethodDValueController;
  // Model for CustomOutlinedTextFieldDatePayments component.
  late CustomOutlinedTextFieldDatePaymentsModel
      customOutlinedTextFieldDatePaymentsModel;
  // State field(s) for RadioMinPayDue-D widget.
  FormFieldController<String>? radioMinPayDueDValueController;
  // State field(s) for RadioLastStateBal-D widget.
  FormFieldController<String>? radioLastStateBalDValueController;
  // State field(s) for RadioOtherAmount-D widget.
  FormFieldController<String>? radioOtherAmountDValueController;
  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel;
  // Stores action output result for [Backend Call - API (Update Payment)] action in CommonCustomButton widget.
  ApiCallResponse? apiResponseAddPayment;
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
    commonCircularIndicatorModel =
        createModel(context, () => CommonCircularIndicatorModel());
    paymentAccountSelectorModel =
        createModel(context, () => PaymentAccountSelectorModel());
    customOutlinedTextFieldDatePaymentsModel =
        createModel(context, () => CustomOutlinedTextFieldDatePaymentsModel());
    commonCancelButtonModel =
        createModel(context, () => CommonCancelButtonModel());
    commonCustomButtonModel =
        createModel(context, () => CommonCustomButtonModel());
    footerModel1 = createModel(context, () => FooterModel());
    headerModel1 = createModel(context, () => HeaderModel());
    headerModel2 = createModel(context, () => HeaderModel());
    footerModel2 = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonCircularIndicatorModel.dispose();
    paymentAccountSelectorModel.dispose();
    customOutlinedTextFieldDatePaymentsModel.dispose();
    commonCancelButtonModel.dispose();
    commonCustomButtonModel.dispose();
    footerModel1.dispose();
    headerModel1.dispose();
    headerModel2.dispose();
    footerModel2.dispose();
  }

  /// Additional helper methods.
  String? get radioPaymentMethodDValue =>
      radioPaymentMethodDValueController?.value;
  String? get radioMinPayDueDValue => radioMinPayDueDValueController?.value;
  String? get radioLastStateBalDValue =>
      radioLastStateBalDValueController?.value;
  String? get radioOtherAmountDValue => radioOtherAmountDValueController?.value;
}
