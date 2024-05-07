import '/backend/api_requests/api_calls.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/components/text_field_with_title/text_field_with_title_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'for_your_added_security_comp_widget.dart'
    show ForYourAddedSecurityCompWidget;
import 'package:flutter/material.dart';

class ForYourAddedSecurityCompModel
    extends FlutterFlowModel<ForYourAddedSecurityCompWidget> {
  ///  Local state fields for this component.

  bool? hasError = false;

  String? errorText;

  bool? isError = false;

  ///  State fields for stateful widgets in this component.

  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel;
  // Model for SecurityQuestion1.
  late TextFieldWithTitleModel securityQuestion1Model;
  // State field(s) for DesktopCheckbox widget.
  bool? desktopCheckboxValue;
  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel;
  // Stores action output result for [Backend Call - API (verifysecurityquestions)] action in CommonCustomButton widget.
  ApiCallResponse? askSecurityQuestionsAPiRes;

  @override
  void initState(BuildContext context) {
    errorBannerOutlinedModel =
        createModel(context, () => ErrorBannerOutlinedModel());
    securityQuestion1Model =
        createModel(context, () => TextFieldWithTitleModel());
    commonCancelButtonModel =
        createModel(context, () => CommonCancelButtonModel());
    commonCustomButtonModel =
        createModel(context, () => CommonCustomButtonModel());
  }

  @override
  void dispose() {
    errorBannerOutlinedModel.dispose();
    securityQuestion1Model.dispose();
    commonCancelButtonModel.dispose();
    commonCustomButtonModel.dispose();
  }
}
