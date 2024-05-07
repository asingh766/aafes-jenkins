import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/components/milistary_star_com/milistary_star_com_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/login/components/logout_banner/logout_banner_widget.dart';
import '/pages/login/for_your_added_security_comp/for_your_added_security_comp_widget.dart';
import '/pages/my_account/update_email_address/added2_f_a_sec_comp/added2_f_a_sec_comp_widget.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  Local state fields for this page.

  bool isAccountLocked = false;

  String? password = '';

  String? userid;

  double formHeight = 0.0;

  bool rememberUserId = false;

  String? error = '';

  int corousalIndex = 1;

  String? apiErrorMes;

  String? apiErrorMesDes;

  bool showLogoutBanner = false;

  String? securityQuestion;

  int? securityQuestionId;

  int? securityUserId;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for LogoutBanner component.
  late LogoutBannerModel logoutBannerModel1;
  // Stores action output result for [Backend Call - API (login)] action in LoginForm widget.
  ApiCallResponse? loginAPIDesktopRes;
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  // Stores action output result for [Backend Call - API (AskTwoFactor)] action in PromtionsHeading widget.
  ApiCallResponse? askTwoFactorRes;
  // Model for milistaryStarCom component.
  late MilistaryStarComModel milistaryStarComModel1;
  // Model for Footer component.
  late FooterModel footerModel1;
  // Model for Added2FASecComp component.
  late Added2FASecCompModel added2FASecCompModel1;
  // Model for Footer component.
  late FooterModel footerModel2;
  // Model for ForYourAddedSecurityComp component.
  late ForYourAddedSecurityCompModel forYourAddedSecurityCompModel1;
  // Model for Footer component.
  late FooterModel footerModel3;
  // Model for Header component.
  late HeaderModel headerModel1;
  // Model for Header component.
  late HeaderModel headerModel2;
  // Model for LogoutBanner component.
  late LogoutBannerModel logoutBannerModel2;
  // Stores action output result for [Backend Call - API (login)] action in LoginForm widget.
  ApiCallResponse? loginMobileRes;
  // Model for milistaryStarCom component.
  late MilistaryStarComModel milistaryStarComModel2;
  // Model for Footer component.
  late FooterModel footerModel4;
  // Model for Added2FASecComp component.
  late Added2FASecCompModel added2FASecCompModel2;
  // Model for Footer component.
  late FooterModel footerModel5;
  // Model for ForYourAddedSecurityComp component.
  late ForYourAddedSecurityCompModel forYourAddedSecurityCompModel2;
  // Model for Footer component.
  late FooterModel footerModel6;

  @override
  void initState(BuildContext context) {
    logoutBannerModel1 = createModel(context, () => LogoutBannerModel());
    milistaryStarComModel1 =
        createModel(context, () => MilistaryStarComModel());
    footerModel1 = createModel(context, () => FooterModel());
    added2FASecCompModel1 = createModel(context, () => Added2FASecCompModel());
    footerModel2 = createModel(context, () => FooterModel());
    forYourAddedSecurityCompModel1 =
        createModel(context, () => ForYourAddedSecurityCompModel());
    footerModel3 = createModel(context, () => FooterModel());
    headerModel1 = createModel(context, () => HeaderModel());
    headerModel2 = createModel(context, () => HeaderModel());
    logoutBannerModel2 = createModel(context, () => LogoutBannerModel());
    milistaryStarComModel2 =
        createModel(context, () => MilistaryStarComModel());
    footerModel4 = createModel(context, () => FooterModel());
    added2FASecCompModel2 = createModel(context, () => Added2FASecCompModel());
    footerModel5 = createModel(context, () => FooterModel());
    forYourAddedSecurityCompModel2 =
        createModel(context, () => ForYourAddedSecurityCompModel());
    footerModel6 = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    logoutBannerModel1.dispose();
    milistaryStarComModel1.dispose();
    footerModel1.dispose();
    added2FASecCompModel1.dispose();
    footerModel2.dispose();
    forYourAddedSecurityCompModel1.dispose();
    footerModel3.dispose();
    headerModel1.dispose();
    headerModel2.dispose();
    logoutBannerModel2.dispose();
    milistaryStarComModel2.dispose();
    footerModel4.dispose();
    added2FASecCompModel2.dispose();
    footerModel5.dispose();
    forYourAddedSecurityCompModel2.dispose();
    footerModel6.dispose();
  }
}
