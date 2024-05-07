import '/backend/api_requests/api_calls.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/components/screen_height_estimator/screen_height_estimator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'set_new_password_page_widget.dart' show SetNewPasswordPageWidget;
import 'package:flutter/material.dart';

class SetNewPasswordPageModel
    extends FlutterFlowModel<SetNewPasswordPageWidget> {
  ///  Local state fields for this page.

  String errorPassword = ' ';

  String errorConfirmPassword = ' ';

  bool hasErrorPassword = false;

  bool hasConfirmErrorPassword = false;

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
  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel1;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel1;
  // Stores action output result for [Backend Call - API (resetPassword)] action in CommonCustomButton widget.
  ApiCallResponse? apiResponseResetPassworda;
  // Model for Footer component.
  late FooterModel footerModel1;
  // Model for Header component.
  late HeaderModel headerModel1;
  // Model for Header component.
  late HeaderModel headerModel2;
  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel2;
  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel2;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel2;
  // Stores action output result for [Backend Call - API (resetPassword)] action in CommonCustomButton widget.
  ApiCallResponse? apiResponseMobile;
  // Model for Footer component.
  late FooterModel footerModel2;

  @override
  void initState(BuildContext context) {
    screenHeightEstimatorModel =
        createModel(context, () => ScreenHeightEstimatorModel());
    errorBannerOutlinedModel1 =
        createModel(context, () => ErrorBannerOutlinedModel());
    commonCancelButtonModel1 =
        createModel(context, () => CommonCancelButtonModel());
    commonCustomButtonModel1 =
        createModel(context, () => CommonCustomButtonModel());
    footerModel1 = createModel(context, () => FooterModel());
    headerModel1 = createModel(context, () => HeaderModel());
    headerModel2 = createModel(context, () => HeaderModel());
    errorBannerOutlinedModel2 =
        createModel(context, () => ErrorBannerOutlinedModel());
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
    commonCancelButtonModel1.dispose();
    commonCustomButtonModel1.dispose();
    footerModel1.dispose();
    headerModel1.dispose();
    headerModel2.dispose();
    errorBannerOutlinedModel2.dispose();
    commonCancelButtonModel2.dispose();
    commonCustomButtonModel2.dispose();
    footerModel2.dispose();
  }

  /// Action blocks.
  Future validatePasswordFlow(BuildContext context) async {
    if (FFAppState().password != '') {
      if (FFAppState().isPasswordValid) {
        if ((FFAppState().confirmPassword != '') &&
            FFAppState().isConfirmPasswordValid) {
          if (FFAppState().password == FFAppState().confirmPassword) {
            // Reset errors
            errorPassword = ' ';
            errorConfirmPassword = ' ';
            hasErrorPassword = false;
            hasConfirmErrorPassword = false;
          } else {
            // Triiger equality error
            errorPassword = '';
            errorConfirmPassword =
                'Your passwords do not match. Please re-enter your passwords.';
            hasErrorPassword = true;
            hasConfirmErrorPassword = true;
          }

          return;
        } else {
          return;
        }
      } else {
        // Validation error
        errorPassword = 'Password does not meet all requirements ';
        hasErrorPassword = true;
        return;
      }
    } else {
      return;
    }
  }

  Future validateConfirmPasswordFlow(BuildContext context) async {
    if (FFAppState().confirmPassword != '') {
      if (FFAppState().isConfirmPasswordValid) {
        if (FFAppState().isPasswordValid) {
          if (FFAppState().password == FFAppState().confirmPassword) {
            // Reset Errors
            errorPassword = ' ';
            errorConfirmPassword = ' ';
            hasErrorPassword = false;
            hasConfirmErrorPassword = false;
          } else {
            // Triiger equality error
            errorPassword = '';
            errorConfirmPassword =
                'Your passwords do not match. Please re-enter your passwords.';
            hasErrorPassword = true;
            hasConfirmErrorPassword = true;
          }

          return;
        } else {
          return;
        }
      } else {
        // Trigger Errors
        errorConfirmPassword = 'Password does not meet all requirements ';
        hasConfirmErrorPassword = true;
        return;
      }
    } else {
      return;
    }
  }
}
