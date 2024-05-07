import '/backend/api_requests/api_calls.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/components/screen_height_estimator/screen_height_estimator_widget.dart';
import '/components/text_field_with_title/text_field_with_title_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'recover_pass_security_questions_page_widget.dart'
    show RecoverPassSecurityQuestionsPageWidget;
import 'package:flutter/material.dart';

class RecoverPassSecurityQuestionsPageModel
    extends FlutterFlowModel<RecoverPassSecurityQuestionsPageWidget> {
  ///  Local state fields for this page.

  bool isRequired = true;

  String title = '';

  bool isBothAnsFilled = false;

  double bodyHeightMobile = 0.0;

  double bodyHeightDesktop = 0.0;

  bool isError = false;

  String? errorText;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ScreenHeightEstimator component.
  late ScreenHeightEstimatorModel screenHeightEstimatorModel;
  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel1;
  // Model for SecurityQuestion1.
  late TextFieldWithTitleModel securityQuestion1Model;
  // Model for SecurityQuestion2.
  late TextFieldWithTitleModel securityQuestion2Model;
  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel1;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel1;
  // Stores action output result for [Backend Call - API (forgotPasswordQues)] action in CommonCustomButton widget.
  ApiCallResponse? responseSecurityQuestions;
  // Model for Footer component.
  late FooterModel footerModel1;
  // Model for Header component.
  late HeaderModel headerModel1;
  // Model for Header component.
  late HeaderModel headerModel2;
  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel2;
  // Model for SecurityQuestion1M.
  late TextFieldWithTitleModel securityQuestion1MModel;
  // Model for SecurityQuestion2M.
  late TextFieldWithTitleModel securityQuestion2MModel;
  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel2;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel2;
  // Stores action output result for [Backend Call - API (forgotPasswordQues)] action in CommonCustomButton widget.
  ApiCallResponse? responseSecurityQuestionsM;
  // Model for Footer component.
  late FooterModel footerModel2;

  @override
  void initState(BuildContext context) {
    screenHeightEstimatorModel =
        createModel(context, () => ScreenHeightEstimatorModel());
    errorBannerOutlinedModel1 =
        createModel(context, () => ErrorBannerOutlinedModel());
    securityQuestion1Model =
        createModel(context, () => TextFieldWithTitleModel());
    securityQuestion2Model =
        createModel(context, () => TextFieldWithTitleModel());
    commonCancelButtonModel1 =
        createModel(context, () => CommonCancelButtonModel());
    commonCustomButtonModel1 =
        createModel(context, () => CommonCustomButtonModel());
    footerModel1 = createModel(context, () => FooterModel());
    headerModel1 = createModel(context, () => HeaderModel());
    headerModel2 = createModel(context, () => HeaderModel());
    errorBannerOutlinedModel2 =
        createModel(context, () => ErrorBannerOutlinedModel());
    securityQuestion1MModel =
        createModel(context, () => TextFieldWithTitleModel());
    securityQuestion2MModel =
        createModel(context, () => TextFieldWithTitleModel());
    commonCancelButtonModel2 =
        createModel(context, () => CommonCancelButtonModel());
    commonCustomButtonModel2 =
        createModel(context, () => CommonCustomButtonModel());
    footerModel2 = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    screenHeightEstimatorModel.dispose();
    errorBannerOutlinedModel1.dispose();
    securityQuestion1Model.dispose();
    securityQuestion2Model.dispose();
    commonCancelButtonModel1.dispose();
    commonCustomButtonModel1.dispose();
    footerModel1.dispose();
    headerModel1.dispose();
    headerModel2.dispose();
    errorBannerOutlinedModel2.dispose();
    securityQuestion1MModel.dispose();
    securityQuestion2MModel.dispose();
    commonCancelButtonModel2.dispose();
    commonCustomButtonModel2.dispose();
    footerModel2.dispose();
  }
}
