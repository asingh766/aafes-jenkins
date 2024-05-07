import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/components/screen_height_estimator/screen_height_estimator_widget.dart';
import '/components/success_banner_filled/success_banner_filled_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'password_success_page_widget.dart' show PasswordSuccessPageWidget;
import 'package:flutter/material.dart';

class PasswordSuccessPageModel
    extends FlutterFlowModel<PasswordSuccessPageWidget> {
  ///  Local state fields for this page.

  bool isRequired = true;

  String title = '';

  double bodyHeightMobile = 0.0;

  double bodyHeightDesktop = 0.0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ScreenHeightEstimator component.
  late ScreenHeightEstimatorModel screenHeightEstimatorModel;
  // Model for SuccessBannerFilled component.
  late SuccessBannerFilledModel successBannerFilledModel1;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel1;
  // Model for Footer component.
  late FooterModel footerModel1;
  // Model for Header component.
  late HeaderModel headerModel1;
  // Model for Header component.
  late HeaderModel headerModel2;
  // Model for SuccessBannerFilled component.
  late SuccessBannerFilledModel successBannerFilledModel2;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel2;
  // Model for Footer component.
  late FooterModel footerModel2;

  @override
  void initState(BuildContext context) {
    screenHeightEstimatorModel =
        createModel(context, () => ScreenHeightEstimatorModel());
    successBannerFilledModel1 =
        createModel(context, () => SuccessBannerFilledModel());
    commonCustomButtonModel1 =
        createModel(context, () => CommonCustomButtonModel());
    footerModel1 = createModel(context, () => FooterModel());
    headerModel1 = createModel(context, () => HeaderModel());
    headerModel2 = createModel(context, () => HeaderModel());
    successBannerFilledModel2 =
        createModel(context, () => SuccessBannerFilledModel());
    commonCustomButtonModel2 =
        createModel(context, () => CommonCustomButtonModel());
    footerModel2 = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    screenHeightEstimatorModel.dispose();
    successBannerFilledModel1.dispose();
    commonCustomButtonModel1.dispose();
    footerModel1.dispose();
    headerModel1.dispose();
    headerModel2.dispose();
    successBannerFilledModel2.dispose();
    commonCustomButtonModel2.dispose();
    footerModel2.dispose();
  }
}
