import '/backend/api_requests/api_calls.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_general/custom_outlined_text_field_general_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_s_s_n/custom_outlined_text_field_s_s_n_widget.dart';
import 'manage_auth_users_step2_widget.dart' show ManageAuthUsersStep2Widget;
import 'package:flutter/material.dart';

class ManageAuthUsersStep2Model
    extends FlutterFlowModel<ManageAuthUsersStep2Widget> {
  ///  Local state fields for this component.

  String errorSSN = ' ';

  bool hasErrorSSN = false;

  dynamic addressJsonData;

  bool hasErrorAPI = false;

  String errorAPI = ' ';

  ///  State fields for stateful widgets in this component.

  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel1;
  // Model for FirstNameTextField1D.
  late CustomOutlinedTextFieldGeneralModel firstNameTextField1DModel;
  // Model for MiddleNameTextField1D.
  late CustomOutlinedTextFieldGeneralModel middleNameTextField1DModel;
  // Model for LastNameTextField1D.
  late CustomOutlinedTextFieldGeneralModel lastNameTextField1DModel;
  // Model for SSNTextField1D.
  late CustomOutlinedTextFieldSSNModel sSNTextField1DModel;
  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel;
  // Model for CommonCustomButtonD.
  late CommonCustomButtonModel commonCustomButtonDModel;
  // Stores action output result for [Backend Call - API (User Address)] action in CommonCustomButtonD widget.
  ApiCallResponse? apiResultUserAddressD;
  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel2;
  // Model for FirstNameTextField1M.
  late CustomOutlinedTextFieldGeneralModel firstNameTextField1MModel;
  // Model for MiddleNameTextField1M.
  late CustomOutlinedTextFieldGeneralModel middleNameTextField1MModel;
  // Model for LastNameTextField1M.
  late CustomOutlinedTextFieldGeneralModel lastNameTextField1MModel;
  // Model for SSNTextField1M.
  late CustomOutlinedTextFieldSSNModel sSNTextField1MModel;
  // Model for CommonCancelButtonM.
  late CommonCancelButtonModel commonCancelButtonMModel;
  // Model for CommonCustomButtonM.
  late CommonCustomButtonModel commonCustomButtonMModel;
  // Stores action output result for [Backend Call - API (User Address)] action in CommonCustomButtonM widget.
  ApiCallResponse? apiResultUserAddressM;

  @override
  void initState(BuildContext context) {
    errorBannerOutlinedModel1 =
        createModel(context, () => ErrorBannerOutlinedModel());
    firstNameTextField1DModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    middleNameTextField1DModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    lastNameTextField1DModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    sSNTextField1DModel =
        createModel(context, () => CustomOutlinedTextFieldSSNModel());
    commonCancelButtonModel =
        createModel(context, () => CommonCancelButtonModel());
    commonCustomButtonDModel =
        createModel(context, () => CommonCustomButtonModel());
    errorBannerOutlinedModel2 =
        createModel(context, () => ErrorBannerOutlinedModel());
    firstNameTextField1MModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    middleNameTextField1MModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    lastNameTextField1MModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    sSNTextField1MModel =
        createModel(context, () => CustomOutlinedTextFieldSSNModel());
    commonCancelButtonMModel =
        createModel(context, () => CommonCancelButtonModel());
    commonCustomButtonMModel =
        createModel(context, () => CommonCustomButtonModel());
  }

  @override
  void dispose() {
    errorBannerOutlinedModel1.dispose();
    firstNameTextField1DModel.dispose();
    middleNameTextField1DModel.dispose();
    lastNameTextField1DModel.dispose();
    sSNTextField1DModel.dispose();
    commonCancelButtonModel.dispose();
    commonCustomButtonDModel.dispose();
    errorBannerOutlinedModel2.dispose();
    firstNameTextField1MModel.dispose();
    middleNameTextField1MModel.dispose();
    lastNameTextField1MModel.dispose();
    sSNTextField1MModel.dispose();
    commonCancelButtonMModel.dispose();
    commonCustomButtonMModel.dispose();
  }
}
