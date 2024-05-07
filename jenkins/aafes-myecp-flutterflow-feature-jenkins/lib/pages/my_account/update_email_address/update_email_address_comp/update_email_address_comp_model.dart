import '/backend/api_requests/api_calls.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_circular_indicator/common_circular_indicator_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/custom_outlined_text_f_general_m_c/custom_outlined_text_f_general_m_c_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/components/success_banner_filled/success_banner_filled_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/my_account/update_email_address/added2_f_a_sec_comp/added2_f_a_sec_comp_widget.dart';
import 'update_email_address_comp_widget.dart'
    show UpdateEmailAddressCompWidget;
import 'package:flutter/material.dart';

class UpdateEmailAddressCompModel
    extends FlutterFlowModel<UpdateEmailAddressCompWidget> {
  ///  Local state fields for this component.

  bool? hasErrorCurrentPass = false;

  String? errorCurrentPass;

  bool? hasErrorConfirmEmail = false;

  String? errorConfirmEmail;

  bool? hasErrorEmail = false;

  String? errorEmail;

  bool? isEnabled = false;

  String? errorPassoword;

  bool? hasPasswordError = false;

  String? passwordText = '';

  dynamic getAddressRes;

  bool? isSuccess = false;

  bool? isError = false;

  String? emailText;

  bool? isTwoFactAuth = false;

  bool? isLoading = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (get email address)] action in UpdateEmailAddressComp widget.
  ApiCallResponse? getUserAddressAPIRes;
  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel;
  // Model for SuccessBannerFilled component.
  late SuccessBannerFilledModel successBannerFilledModel;
  // Model for EmailAddressDesktop.
  late CustomOutlinedTextFGeneralMCModel emailAddressDesktopModel;
  // Model for ConEmailAddressDesktop.
  late CustomOutlinedTextFGeneralMCModel conEmailAddressDesktopModel;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel1;
  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel2;
  // Stores action output result for [Backend Call - API (update email address)] action in CommonCustomButton widget.
  ApiCallResponse? updateUserAddressAPIRes;
  // Model for CommonCircularIndicator component.
  late CommonCircularIndicatorModel commonCircularIndicatorModel;
  // Model for Added2FASecComp component.
  late Added2FASecCompModel added2FASecCompModel;

  @override
  void initState(BuildContext context) {
    errorBannerOutlinedModel =
        createModel(context, () => ErrorBannerOutlinedModel());
    successBannerFilledModel =
        createModel(context, () => SuccessBannerFilledModel());
    emailAddressDesktopModel =
        createModel(context, () => CustomOutlinedTextFGeneralMCModel());
    conEmailAddressDesktopModel =
        createModel(context, () => CustomOutlinedTextFGeneralMCModel());
    commonCustomButtonModel1 =
        createModel(context, () => CommonCustomButtonModel());
    commonCancelButtonModel =
        createModel(context, () => CommonCancelButtonModel());
    commonCustomButtonModel2 =
        createModel(context, () => CommonCustomButtonModel());
    commonCircularIndicatorModel =
        createModel(context, () => CommonCircularIndicatorModel());
    added2FASecCompModel = createModel(context, () => Added2FASecCompModel());
  }

  @override
  void dispose() {
    errorBannerOutlinedModel.dispose();
    successBannerFilledModel.dispose();
    emailAddressDesktopModel.dispose();
    conEmailAddressDesktopModel.dispose();
    commonCustomButtonModel1.dispose();
    commonCancelButtonModel.dispose();
    commonCustomButtonModel2.dispose();
    commonCircularIndicatorModel.dispose();
    added2FASecCompModel.dispose();
  }
}
