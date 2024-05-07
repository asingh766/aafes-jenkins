import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/common_circular_indicator/common_circular_indicator_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/components/success_banner_filled/success_banner_filled_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'communication_preference_comp_widget.dart'
    show CommunicationPreferenceCompWidget;
import 'package:flutter/material.dart';

class CommunicationPreferenceCompModel
    extends FlutterFlowModel<CommunicationPreferenceCompWidget> {
  ///  Local state fields for this component.

  dynamic preferenceRes;

  bool isEnabled = false;

  bool isSuccess = false;

  bool? isError = false;

  String? successText;

  bool? isLoading = false;

  PreferenceStruct? preference;
  void updatePreferenceStruct(Function(PreferenceStruct) updateFn) =>
      updateFn(preference ??= PreferenceStruct());

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (preferences)] action in CommunicationPreferenceComp widget.
  ApiCallResponse? preferenceAPIRes;
  // Model for SuccessBannerFilled component.
  late SuccessBannerFilledModel successBannerFilledModel;
  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel;
  // State field(s) for statementCheckbox widget.
  bool? statementCheckboxValue;
  // State field(s) for LegalCheckbox widget.
  bool? legalCheckboxValue;
  // State field(s) for ExchangeCheckbox widget.
  bool? exchangeCheckboxValue;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel;
  // Stores action output result for [Backend Call - API (update preferences)] action in CommonCustomButton widget.
  ApiCallResponse? updatePreferencesAPIRes;
  // Stores action output result for [Backend Call - API (preferences)] action in CommonCustomButton widget.
  ApiCallResponse? preferenceAPIRes1;
  // Model for CommonCircularIndicator component.
  late CommonCircularIndicatorModel commonCircularIndicatorModel;

  @override
  void initState(BuildContext context) {
    successBannerFilledModel =
        createModel(context, () => SuccessBannerFilledModel());
    errorBannerOutlinedModel =
        createModel(context, () => ErrorBannerOutlinedModel());
    commonCustomButtonModel =
        createModel(context, () => CommonCustomButtonModel());
    commonCircularIndicatorModel =
        createModel(context, () => CommonCircularIndicatorModel());
  }

  @override
  void dispose() {
    successBannerFilledModel.dispose();
    errorBannerOutlinedModel.dispose();
    commonCustomButtonModel.dispose();
    commonCircularIndicatorModel.dispose();
  }
}
