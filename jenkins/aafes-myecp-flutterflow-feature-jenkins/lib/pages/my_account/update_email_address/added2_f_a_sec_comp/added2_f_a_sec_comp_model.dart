import '/backend/api_requests/api_calls.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_circular_indicator/common_circular_indicator_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/custom_outlined_text_f_m_c_auth_code/custom_outlined_text_f_m_c_auth_code_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/components/select_delivery_method_comp/select_delivery_method_comp_widget.dart';
import '/components/success_banner_filled/success_banner_filled_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'added2_f_a_sec_comp_widget.dart' show Added2FASecCompWidget;
import 'package:flutter/material.dart';

class Added2FASecCompModel extends FlutterFlowModel<Added2FASecCompWidget> {
  ///  Local state fields for this component.

  bool? isEnabled = false;

  bool? isSuccess = false;

  bool? isError = false;

  bool? isPhoneSelected = false;

  bool? isSendCode = false;

  bool? hasErrorCode = false;

  String? codeErrorMes;

  String successText = '      ';

  String errorText = '     ';

  String? otpKey;

  bool isLoading = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (AskTwoFactor)] action in Added2FASecComp widget.
  ApiCallResponse? askTwoFactorRes;
  // Model for SuccessBannerFilled component.
  late SuccessBannerFilledModel successBannerFilledModel;
  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel;
  // Model for SelectDeliveryMethodComp component.
  late SelectDeliveryMethodCompModel selectDeliveryMethodCompModel1;
  // Model for SelectDeliveryMethodComp component.
  late SelectDeliveryMethodCompModel selectDeliveryMethodCompModel2;
  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel1;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel1;
  // Stores action output result for [Action Block - codeSent] action in CommonCustomButton widget.
  dynamic sendOTPApiRes;
  // Model for CustomOutlinedTextFMCAuthCode component.
  late CustomOutlinedTextFMCAuthCodeModel customOutlinedTextFMCAuthCodeModel;
  // Stores action output result for [Action Block - codeSent] action in Text widget.
  dynamic reSendOTPApiRes;
  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel2;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel2;
  // Stores action output result for [Backend Call - API (Verify Otp)] action in CommonCustomButton widget.
  ApiCallResponse? verfiyOtpRes;
  // Model for CommonCircularIndicator component.
  late CommonCircularIndicatorModel commonCircularIndicatorModel;

  @override
  void initState(BuildContext context) {
    successBannerFilledModel =
        createModel(context, () => SuccessBannerFilledModel());
    errorBannerOutlinedModel =
        createModel(context, () => ErrorBannerOutlinedModel());
    selectDeliveryMethodCompModel1 =
        createModel(context, () => SelectDeliveryMethodCompModel());
    selectDeliveryMethodCompModel2 =
        createModel(context, () => SelectDeliveryMethodCompModel());
    commonCancelButtonModel1 =
        createModel(context, () => CommonCancelButtonModel());
    commonCustomButtonModel1 =
        createModel(context, () => CommonCustomButtonModel());
    customOutlinedTextFMCAuthCodeModel =
        createModel(context, () => CustomOutlinedTextFMCAuthCodeModel());
    commonCancelButtonModel2 =
        createModel(context, () => CommonCancelButtonModel());
    commonCustomButtonModel2 =
        createModel(context, () => CommonCustomButtonModel());
    commonCircularIndicatorModel =
        createModel(context, () => CommonCircularIndicatorModel());
  }

  @override
  void dispose() {
    successBannerFilledModel.dispose();
    errorBannerOutlinedModel.dispose();
    selectDeliveryMethodCompModel1.dispose();
    selectDeliveryMethodCompModel2.dispose();
    commonCancelButtonModel1.dispose();
    commonCustomButtonModel1.dispose();
    customOutlinedTextFMCAuthCodeModel.dispose();
    commonCancelButtonModel2.dispose();
    commonCustomButtonModel2.dispose();
    commonCircularIndicatorModel.dispose();
  }
}
