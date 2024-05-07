import '/backend/api_requests/api_calls.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/userid_password_recovery/components/custom_outlined_text_field_captcha/custom_outlined_text_field_captcha_widget.dart';
import '/pages/userid_password_recovery/components/custom_outlined_text_field_d_o_b_r/custom_outlined_text_field_d_o_b_r_widget.dart';
import '/pages/userid_password_recovery/components/last_name_text_field/last_name_text_field_widget.dart';
import '/pages/userid_password_recovery/components/s_s_n_plain_text_field/s_s_n_plain_text_field_widget.dart';
import 'dart:async';
import 'recover_pass_page_widget.dart' show RecoverPassPageWidget;
import 'package:flutter/material.dart';

class RecoverPassPageModel extends FlutterFlowModel<RecoverPassPageWidget> {
  ///  Local state fields for this page.

  String errorUserID = ' ';

  bool hasErrorUserID = false;

  String errorLast5DigitsSSN = ' ';

  bool hasErrorLast5DigitsSSN = false;

  String errorDOB = ' ';

  bool hasErrorDOB = false;

  String captchaMessage = ' ';

  bool hasErrorCaptcha = false;

  bool calendarHasFocus = true;

  String? userIdValue;

  String? errorText = '  ';

  bool? isError = false;

  String captchaValue = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel1;
  // Model for UserIDTextFieldD.
  late LastNameTextFieldModel userIDTextFieldDModel;
  // Model for SSNPlainTextField component.
  late SSNPlainTextFieldModel sSNPlainTextFieldModel;
  // Model for DOBTextField.
  late CustomOutlinedTextFieldDOBRModel dOBTextFieldModel;
  // Model for CustomOutlinedTextFieldCaptchaD.
  late CustomOutlinedTextFieldCaptchaModel
      customOutlinedTextFieldCaptchaDModel1;
  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel1;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel1;
  // Stores action output result for [Backend Call - API (forgotPassword)] action in CommonCustomButton widget.
  ApiCallResponse? forgetpassApiRes;
  // Model for Footer component.
  late FooterModel footerModel1;
  // Model for Header component.
  late HeaderModel headerModel1;
  // Model for Header component.
  late HeaderModel headerModel2;
  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel2;
  // Model for UserIDTextFieldM.
  late LastNameTextFieldModel userIDTextFieldMModel;
  // Model for SSNPlainTextFieldM.
  late SSNPlainTextFieldModel sSNPlainTextFieldMModel;
  // Model for DOBTextFieldM.
  late CustomOutlinedTextFieldDOBRModel dOBTextFieldMModel;
  // Model for CustomOutlinedTextFieldCaptchaD.
  late CustomOutlinedTextFieldCaptchaModel
      customOutlinedTextFieldCaptchaDModel2;
  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel2;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel2;
  // Stores action output result for [Backend Call - API (forgotPassword)] action in CommonCustomButton widget.
  ApiCallResponse? fromForgotPassM;
  // Model for Footer component.
  late FooterModel footerModel2;

  @override
  void initState(BuildContext context) {
    errorBannerOutlinedModel1 =
        createModel(context, () => ErrorBannerOutlinedModel());
    userIDTextFieldDModel =
        createModel(context, () => LastNameTextFieldModel());
    sSNPlainTextFieldModel =
        createModel(context, () => SSNPlainTextFieldModel());
    dOBTextFieldModel =
        createModel(context, () => CustomOutlinedTextFieldDOBRModel());
    customOutlinedTextFieldCaptchaDModel1 =
        createModel(context, () => CustomOutlinedTextFieldCaptchaModel());
    commonCancelButtonModel1 =
        createModel(context, () => CommonCancelButtonModel());
    commonCustomButtonModel1 =
        createModel(context, () => CommonCustomButtonModel());
    footerModel1 = createModel(context, () => FooterModel());
    headerModel1 = createModel(context, () => HeaderModel());
    headerModel2 = createModel(context, () => HeaderModel());
    errorBannerOutlinedModel2 =
        createModel(context, () => ErrorBannerOutlinedModel());
    userIDTextFieldMModel =
        createModel(context, () => LastNameTextFieldModel());
    sSNPlainTextFieldMModel =
        createModel(context, () => SSNPlainTextFieldModel());
    dOBTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldDOBRModel());
    customOutlinedTextFieldCaptchaDModel2 =
        createModel(context, () => CustomOutlinedTextFieldCaptchaModel());
    commonCancelButtonModel2 =
        createModel(context, () => CommonCancelButtonModel());
    commonCustomButtonModel2 =
        createModel(context, () => CommonCustomButtonModel());
    footerModel2 = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    errorBannerOutlinedModel1.dispose();
    userIDTextFieldDModel.dispose();
    sSNPlainTextFieldModel.dispose();
    dOBTextFieldModel.dispose();
    customOutlinedTextFieldCaptchaDModel1.dispose();
    commonCancelButtonModel1.dispose();
    commonCustomButtonModel1.dispose();
    footerModel1.dispose();
    headerModel1.dispose();
    headerModel2.dispose();
    errorBannerOutlinedModel2.dispose();
    userIDTextFieldMModel.dispose();
    sSNPlainTextFieldMModel.dispose();
    dOBTextFieldMModel.dispose();
    customOutlinedTextFieldCaptchaDModel2.dispose();
    commonCancelButtonModel2.dispose();
    commonCustomButtonModel2.dispose();
    footerModel2.dispose();
  }

  /// Action blocks.
  Future validatePasswordForm(BuildContext context) async {}

  Future actionAPI(BuildContext context) async {
    ApiCallResponse? apiResultCaptcha;

    apiResultCaptcha = await AuthenticationGroup.captchaCall.call(
      dynamicBaseURL: FFAppState().dynamicBaseURL,
    );
    if ((apiResultCaptcha.succeeded ?? true)) {
      captchaValue = (apiResultCaptcha.getHeader('captcha') ?? '');
    }
  }
}
