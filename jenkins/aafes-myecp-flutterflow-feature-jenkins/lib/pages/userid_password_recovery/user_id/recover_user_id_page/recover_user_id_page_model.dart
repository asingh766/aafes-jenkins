import '/backend/api_requests/api_calls.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/components/screen_height_estimator/screen_height_estimator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/userid_password_recovery/components/custom_outlined_text_field_captcha/custom_outlined_text_field_captcha_widget.dart';
import '/pages/userid_password_recovery/components/custom_outlined_text_field_d_o_b_r/custom_outlined_text_field_d_o_b_r_widget.dart';
import '/pages/userid_password_recovery/components/last_name_text_field/last_name_text_field_widget.dart';
import '/pages/userid_password_recovery/components/s_s_n_plain_text_field/s_s_n_plain_text_field_widget.dart';
import 'dart:async';
import 'recover_user_id_page_widget.dart' show RecoverUserIdPageWidget;
import 'package:flutter/material.dart';

class RecoverUserIdPageModel extends FlutterFlowModel<RecoverUserIdPageWidget> {
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

  String captchaValue = '';

  bool isError = false;

  String? errorText;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ScreenHeightEstimator component.
  late ScreenHeightEstimatorModel screenHeightEstimatorModel;
  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel1;
  // Model for LastNameTextField-D.
  late LastNameTextFieldModel lastNameTextFieldDModel1;
  // Model for SSNPlainTextField-D.
  late SSNPlainTextFieldModel sSNPlainTextFieldDModel;
  // Model for DOBTextField-D.
  late CustomOutlinedTextFieldDOBRModel dOBTextFieldDModel1;
  // Model for CustomOutlinedTextFieldCaptcha-D.
  late CustomOutlinedTextFieldCaptchaModel
      customOutlinedTextFieldCaptchaDModel1;
  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel1;
  // Model for CValidateButton-D.
  late CommonCustomButtonModel cValidateButtonDModel;
  // Stores action output result for [Backend Call - API (forgotUserName)] action in CValidateButton-D widget.
  ApiCallResponse? forgotUserIDRes;
  // Model for Footer component.
  late FooterModel footerModel1;
  // Model for Header component.
  late HeaderModel headerModel1;
  // Model for Header component.
  late HeaderModel headerModel2;
  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel2;
  // Model for LastNameTextField-D.
  late LastNameTextFieldModel lastNameTextFieldDModel2;
  // Model for SSNPlainTextField-M.
  late SSNPlainTextFieldModel sSNPlainTextFieldMModel;
  // Model for DOBTextField-D.
  late CustomOutlinedTextFieldDOBRModel dOBTextFieldDModel2;
  // Model for CustomOutlinedTextFieldCaptcha-D.
  late CustomOutlinedTextFieldCaptchaModel
      customOutlinedTextFieldCaptchaDModel2;
  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel2;
  // Model for CValidateButton-M.
  late CommonCustomButtonModel cValidateButtonMModel;
  // Stores action output result for [Backend Call - API (forgotUserName)] action in CValidateButton-M widget.
  ApiCallResponse? responseForgotUserIdM;
  // Model for Footer component.
  late FooterModel footerModel2;

  @override
  void initState(BuildContext context) {
    screenHeightEstimatorModel =
        createModel(context, () => ScreenHeightEstimatorModel());
    errorBannerOutlinedModel1 =
        createModel(context, () => ErrorBannerOutlinedModel());
    lastNameTextFieldDModel1 =
        createModel(context, () => LastNameTextFieldModel());
    sSNPlainTextFieldDModel =
        createModel(context, () => SSNPlainTextFieldModel());
    dOBTextFieldDModel1 =
        createModel(context, () => CustomOutlinedTextFieldDOBRModel());
    customOutlinedTextFieldCaptchaDModel1 =
        createModel(context, () => CustomOutlinedTextFieldCaptchaModel());
    commonCancelButtonModel1 =
        createModel(context, () => CommonCancelButtonModel());
    cValidateButtonDModel =
        createModel(context, () => CommonCustomButtonModel());
    footerModel1 = createModel(context, () => FooterModel());
    headerModel1 = createModel(context, () => HeaderModel());
    headerModel2 = createModel(context, () => HeaderModel());
    errorBannerOutlinedModel2 =
        createModel(context, () => ErrorBannerOutlinedModel());
    lastNameTextFieldDModel2 =
        createModel(context, () => LastNameTextFieldModel());
    sSNPlainTextFieldMModel =
        createModel(context, () => SSNPlainTextFieldModel());
    dOBTextFieldDModel2 =
        createModel(context, () => CustomOutlinedTextFieldDOBRModel());
    customOutlinedTextFieldCaptchaDModel2 =
        createModel(context, () => CustomOutlinedTextFieldCaptchaModel());
    commonCancelButtonModel2 =
        createModel(context, () => CommonCancelButtonModel());
    cValidateButtonMModel =
        createModel(context, () => CommonCustomButtonModel());
    footerModel2 = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    screenHeightEstimatorModel.dispose();
    errorBannerOutlinedModel1.dispose();
    lastNameTextFieldDModel1.dispose();
    sSNPlainTextFieldDModel.dispose();
    dOBTextFieldDModel1.dispose();
    customOutlinedTextFieldCaptchaDModel1.dispose();
    commonCancelButtonModel1.dispose();
    cValidateButtonDModel.dispose();
    footerModel1.dispose();
    headerModel1.dispose();
    headerModel2.dispose();
    errorBannerOutlinedModel2.dispose();
    lastNameTextFieldDModel2.dispose();
    sSNPlainTextFieldMModel.dispose();
    dOBTextFieldDModel2.dispose();
    customOutlinedTextFieldCaptchaDModel2.dispose();
    commonCancelButtonModel2.dispose();
    cValidateButtonMModel.dispose();
    footerModel2.dispose();
  }

  /// Action blocks.
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
