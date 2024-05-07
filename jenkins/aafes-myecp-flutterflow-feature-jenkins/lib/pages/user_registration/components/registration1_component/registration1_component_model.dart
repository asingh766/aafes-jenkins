import '/backend/api_requests/api_calls.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/user_registration/customised_fields/custom_date_selector/custom_date_selector_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_captchax/custom_outlined_text_field_captchax_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_card_number/custom_outlined_text_field_card_number_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_d_o_b/custom_outlined_text_field_d_o_b_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_email/custom_outlined_text_field_email_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_s_s_n/custom_outlined_text_field_s_s_n_widget.dart';
import 'dart:async';
import 'registration1_component_widget.dart' show Registration1ComponentWidget;
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class Registration1ComponentModel
    extends FlutterFlowModel<Registration1ComponentWidget> {
  ///  Local state fields for this component.

  String errorCardNumber = ' ';

  bool hasErrorCardNumber = false;

  String errorExpirationCardNumber = ' ';

  bool hasErrorExpirationCardNumber = false;

  String errorSocialSecurityNumber = ' ';

  bool hasErrorSocialSecurityNumber = false;

  String errorEmail = ' ';

  bool hasErrorEmail = false;

  String errorConfirmEmail = ' ';

  bool hasErrorConfirmEmail = false;

  bool hasErrorCaptcha = false;

  bool agreementCheck = false;

  String errorDOB = ' ';

  bool hasErrorDOB = false;

  String captchaValue = '';

  String errorAPI = ' ';

  bool hasErrorAPI = false;

  ///  State fields for stateful widgets in this component.

  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel1;
  // Model for CardNumberTextFieldD.
  late CustomOutlinedTextFieldCardNumberModel cardNumberTextFieldDModel;
  // Model for CustomDateSelectorD.
  late CustomDateSelectorModel customDateSelectorDModel;
  // Model for SSNTextFieldD.
  late CustomOutlinedTextFieldSSNModel sSNTextFieldDModel;
  // Model for DobTextFieldD.
  late CustomOutlinedTextFieldDOBModel dobTextFieldDModel;
  // Model for EmailTextFieldD.
  late CustomOutlinedTextFieldEmailModel emailTextFieldDModel;
  // Model for ConfirmEmailTextFieldD.
  late CustomOutlinedTextFieldEmailModel confirmEmailTextFieldDModel;
  // State field(s) for AgreementCheckboxD widget.
  bool? agreementCheckboxDValue;
  // Model for CaptchaTextFieldD.
  late CustomOutlinedTextFieldCaptchaxModel captchaTextFieldDModel;
  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel1;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel1;
  // Stores action output result for [Backend Call - API (cardInfo)] action in CommonCustomButton widget.
  ApiCallResponse? apiResponseCardInfo;
  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel2;
  // Model for CardNumberTextFieldM.
  late CustomOutlinedTextFieldCardNumberModel cardNumberTextFieldMModel;
  // Model for CustomDateSelectorM.
  late CustomDateSelectorModel customDateSelectorMModel;
  // Model for SSNTextFieldM.
  late CustomOutlinedTextFieldSSNModel sSNTextFieldMModel;
  // Model for DobTextFieldM.
  late CustomOutlinedTextFieldDOBModel dobTextFieldMModel;
  // Model for EmailTextFieldM.
  late CustomOutlinedTextFieldEmailModel emailTextFieldMModel;
  // Model for ConfirmEmailTextFieldM.
  late CustomOutlinedTextFieldEmailModel confirmEmailTextFieldMModel;
  // State field(s) for AgreementCheckboxM widget.
  bool? agreementCheckboxMValue;
  // Model for CaptchaTextFieldM.
  late CustomOutlinedTextFieldCaptchaxModel captchaTextFieldMModel;
  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel2;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel2;
  // Stores action output result for [Backend Call - API (cardInfo)] action in CommonCustomButton widget.
  ApiCallResponse? apiResponseCardInfoM;

  @override
  void initState(BuildContext context) {
    errorBannerOutlinedModel1 =
        createModel(context, () => ErrorBannerOutlinedModel());
    cardNumberTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldCardNumberModel());
    customDateSelectorDModel =
        createModel(context, () => CustomDateSelectorModel());
    sSNTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldSSNModel());
    dobTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldDOBModel());
    emailTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldEmailModel());
    confirmEmailTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldEmailModel());
    captchaTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldCaptchaxModel());
    commonCancelButtonModel1 =
        createModel(context, () => CommonCancelButtonModel());
    commonCustomButtonModel1 =
        createModel(context, () => CommonCustomButtonModel());
    errorBannerOutlinedModel2 =
        createModel(context, () => ErrorBannerOutlinedModel());
    cardNumberTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldCardNumberModel());
    customDateSelectorMModel =
        createModel(context, () => CustomDateSelectorModel());
    sSNTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldSSNModel());
    dobTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldDOBModel());
    emailTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldEmailModel());
    confirmEmailTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldEmailModel());
    captchaTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldCaptchaxModel());
    commonCancelButtonModel2 =
        createModel(context, () => CommonCancelButtonModel());
    commonCustomButtonModel2 =
        createModel(context, () => CommonCustomButtonModel());
  }

  @override
  void dispose() {
    errorBannerOutlinedModel1.dispose();
    cardNumberTextFieldDModel.dispose();
    customDateSelectorDModel.dispose();
    sSNTextFieldDModel.dispose();
    dobTextFieldDModel.dispose();
    emailTextFieldDModel.dispose();
    confirmEmailTextFieldDModel.dispose();
    captchaTextFieldDModel.dispose();
    commonCancelButtonModel1.dispose();
    commonCustomButtonModel1.dispose();
    errorBannerOutlinedModel2.dispose();
    cardNumberTextFieldMModel.dispose();
    customDateSelectorMModel.dispose();
    sSNTextFieldMModel.dispose();
    dobTextFieldMModel.dispose();
    emailTextFieldMModel.dispose();
    confirmEmailTextFieldMModel.dispose();
    captchaTextFieldMModel.dispose();
    commonCancelButtonModel2.dispose();
    commonCustomButtonModel2.dispose();
  }

  /// Action blocks.
  Future actionCaptcha(BuildContext context) async {
    ApiCallResponse? apiResultCaptcha;

    apiResultCaptcha = await AuthenticationGroup.captchaCall.call(
      dynamicBaseURL: FFAppState().dynamicBaseURL,
    );
    if ((apiResultCaptcha.succeeded ?? true)) {
      captchaValue = (apiResultCaptcha.getHeader('captcha') ?? '');
    } else {
      unawaited(
        () async {
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return WebViewAware(
                child: AlertDialog(
                  title: const Text('Error'),
                  content:
                      const Text('Something went wrong, please try agian later.'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(alertDialogContext),
                      child: const Text('Ok'),
                    ),
                  ],
                ),
              );
            },
          );
        }(),
      );
    }
  }
}
