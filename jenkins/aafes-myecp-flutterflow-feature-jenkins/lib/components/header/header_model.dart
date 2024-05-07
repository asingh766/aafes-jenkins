import '/backend/api_requests/api_calls.dart';
import '/components/header_options_mobile/header_options_mobile_widget.dart';
import '/components/mobile_header_sub_item/mobile_header_sub_item_widget.dart';
import '/components/screen_height_estimator/screen_height_estimator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'header_widget.dart' show HeaderWidget;
import 'package:flutter/material.dart';

class HeaderModel extends FlutterFlowModel<HeaderWidget> {
  ///  Local state fields for this component.

  bool drawerOpen = true;

  int? selectedMobileIndex = -1;

  ///  State fields for stateful widgets in this component.

  // Model for ScreenHeightEstimator component.
  late ScreenHeightEstimatorModel screenHeightEstimatorModel;
  // Stores action output result for [Custom Action - isAccountDashboardPage] action in logoImage widget.
  bool? accountDashboardValidationResult;
  // Stores action output result for [Custom Action - isLoginPage] action in logoImage widget.
  bool? isLoginPageResultCopy;
  // Model for myAccountOption.
  late HeaderOptionsMobileModel myAccountOptionModel;
  // Model for mobileHeaderSubItem component.
  late MobileHeaderSubItemModel mobileHeaderSubItemModel1;
  // Model for paymentsOption.
  late HeaderOptionsMobileModel paymentsOptionModel;
  // Model for mobileHeaderSubItem component.
  late MobileHeaderSubItemModel mobileHeaderSubItemModel2;
  // Model for productsOption.
  late HeaderOptionsMobileModel productsOptionModel;
  // Model for mobileHeaderSubItem component.
  late MobileHeaderSubItemModel mobileHeaderSubItemModel3;
  // Model for promotionsOption.
  late HeaderOptionsMobileModel promotionsOptionModel;
  // Model for mobileHeaderSubItem component.
  late MobileHeaderSubItemModel mobileHeaderSubItemModel4;
  // Model for calculatorOption.
  late HeaderOptionsMobileModel calculatorOptionModel;
  // Model for mobileHeaderSubItem component.
  late MobileHeaderSubItemModel mobileHeaderSubItemModel5;
  // Model for aboutMyECPOption.
  late HeaderOptionsMobileModel aboutMyECPOptionModel;
  // Model for mobileHeaderSubItem component.
  late MobileHeaderSubItemModel mobileHeaderSubItemModel6;
  // Model for contactUsOption.
  late HeaderOptionsMobileModel contactUsOptionModel;
  // Model for mobileHeaderSubItem component.
  late MobileHeaderSubItemModel mobileHeaderSubItemModel7;
  // Model for loginlogoutOption.
  late HeaderOptionsMobileModel loginlogoutOptionModel;
  // Stores action output result for [Backend Call - API (logout)] action in loginlogoutOption widget.
  ApiCallResponse? logoutMobileRes;
  // Stores action output result for [Custom Action - isLoginPage] action in loginlogoutOption widget.
  bool? loginPageValidationResultCopyCopy;
  // Stores action output result for [Custom Action - isAccountDashboardPage] action in logoImage widget.
  bool? accountDashValidationResult;
  // Stores action output result for [Custom Action - isLoginPage] action in logoImage widget.
  bool? isLoginPageResult;
  // Stores action output result for [Backend Call - API (logout)] action in login_logout widget.
  ApiCallResponse? logoutRes;
  // Stores action output result for [Custom Action - isLoginPage] action in login_logout widget.
  bool? isLoginPage;

  @override
  void initState(BuildContext context) {
    screenHeightEstimatorModel =
        createModel(context, () => ScreenHeightEstimatorModel());
    myAccountOptionModel =
        createModel(context, () => HeaderOptionsMobileModel());
    mobileHeaderSubItemModel1 =
        createModel(context, () => MobileHeaderSubItemModel());
    paymentsOptionModel =
        createModel(context, () => HeaderOptionsMobileModel());
    mobileHeaderSubItemModel2 =
        createModel(context, () => MobileHeaderSubItemModel());
    productsOptionModel =
        createModel(context, () => HeaderOptionsMobileModel());
    mobileHeaderSubItemModel3 =
        createModel(context, () => MobileHeaderSubItemModel());
    promotionsOptionModel =
        createModel(context, () => HeaderOptionsMobileModel());
    mobileHeaderSubItemModel4 =
        createModel(context, () => MobileHeaderSubItemModel());
    calculatorOptionModel =
        createModel(context, () => HeaderOptionsMobileModel());
    mobileHeaderSubItemModel5 =
        createModel(context, () => MobileHeaderSubItemModel());
    aboutMyECPOptionModel =
        createModel(context, () => HeaderOptionsMobileModel());
    mobileHeaderSubItemModel6 =
        createModel(context, () => MobileHeaderSubItemModel());
    contactUsOptionModel =
        createModel(context, () => HeaderOptionsMobileModel());
    mobileHeaderSubItemModel7 =
        createModel(context, () => MobileHeaderSubItemModel());
    loginlogoutOptionModel =
        createModel(context, () => HeaderOptionsMobileModel());
  }

  @override
  void dispose() {
    screenHeightEstimatorModel.dispose();
    myAccountOptionModel.dispose();
    mobileHeaderSubItemModel1.dispose();
    paymentsOptionModel.dispose();
    mobileHeaderSubItemModel2.dispose();
    productsOptionModel.dispose();
    mobileHeaderSubItemModel3.dispose();
    promotionsOptionModel.dispose();
    mobileHeaderSubItemModel4.dispose();
    calculatorOptionModel.dispose();
    mobileHeaderSubItemModel5.dispose();
    aboutMyECPOptionModel.dispose();
    mobileHeaderSubItemModel6.dispose();
    contactUsOptionModel.dispose();
    mobileHeaderSubItemModel7.dispose();
    loginlogoutOptionModel.dispose();
  }
}
