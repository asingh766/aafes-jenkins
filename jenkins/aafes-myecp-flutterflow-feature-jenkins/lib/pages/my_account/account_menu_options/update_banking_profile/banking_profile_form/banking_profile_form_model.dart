import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_general/custom_outlined_text_field_general_widget.dart';
import 'banking_profile_form_widget.dart' show BankingProfileFormWidget;
import 'package:flutter/material.dart';

class BankingProfileFormModel
    extends FlutterFlowModel<BankingProfileFormWidget> {
  ///  Local state fields for this component.

  bool hasAccountNumberError = false;

  String? accountNumberError = '';

  bool hasRoutingError = false;

  String? routingError;

  String? nickNameError;

  bool hasNickNameError = false;

  bool hasCommonError = false;

  String? commonError;

  ///  State fields for stateful widgets in this component.

  // Model for AccountNumber.
  late CustomOutlinedTextFieldGeneralModel accountNumberModel;
  // Model for RoutingNumber.
  late CustomOutlinedTextFieldGeneralModel routingNumberModel;
  // Model for AccountNumberMobile.
  late CustomOutlinedTextFieldGeneralModel accountNumberMobileModel;
  // Model for RoutingNumberMobile.
  late CustomOutlinedTextFieldGeneralModel routingNumberMobileModel;
  // Model for Nickname.
  late CustomOutlinedTextFieldGeneralModel nicknameModel;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // Stores action output result for [Backend Call - API (Create Banking Profile)] action in Button widget.
  ApiCallResponse? createApiResult;
  // Stores action output result for [Backend Call - API (Create Banking Profile)] action in Button widget.
  ApiCallResponse? createApiResultCopy;

  @override
  void initState(BuildContext context) {
    accountNumberModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    routingNumberModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    accountNumberMobileModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    routingNumberMobileModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    nicknameModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
  }

  @override
  void dispose() {
    accountNumberModel.dispose();
    routingNumberModel.dispose();
    accountNumberMobileModel.dispose();
    routingNumberMobileModel.dispose();
    nicknameModel.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
