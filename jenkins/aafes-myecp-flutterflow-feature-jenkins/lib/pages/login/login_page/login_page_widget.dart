import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/common_circular_indicator/common_circular_indicator_widget.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/components/milistary_star_com/milistary_star_com_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/login/components/logout_banner/logout_banner_widget.dart';
import '/pages/login/for_your_added_security_comp/for_your_added_security_comp_widget.dart';
import '/pages/my_account/update_email_address/added2_f_a_sec_comp/added2_f_a_sec_comp_widget.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'login_page_model.dart';
export 'login_page_model.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({
    super.key,
    bool? isFromLogout,
  }) : isFromLogout = isFromLogout ?? false;

  final bool isFromLogout;

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          // Load UserID From App State
          setState(() {
            _model.userid = FFAppState().remUserID;
          });
          setState(() {
            FFAppState().isFroYourSecurity = false;
          });
        }),
        Future(() async {
          if (FFAppState().userLoggedOut) {
            // Reset App state
            FFAppState().userLoggedOut = false;
            FFAppState().isFroYourSecurity = false;
            // show logout banner
            setState(() {
              _model.showLogoutBanner = true;
              _model.userid = null;
              _model.password = '';
              _model.error = '';
            });
          } else {
            // show logout banner
            setState(() {
              _model.userid = null;
              _model.password = '';
              _model.error = '';
            });
          }
        }),
      ]);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'MyECP : ECP Home Page',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Stack(
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                  ))
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).height,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Builder(
                              builder: (context) {
                                if (!FFAppState().isFroYourSecurity &&
                                    !FFAppState().isFromTwoFacotrAuth) {
                                  return ListView(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      if (_model.showLogoutBanner)
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, -1.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 96.0, 0.0, 0.0),
                                            child: Container(
                                              width:
                                                  FFAppConstants.maxScreenWidth,
                                              decoration: const BoxDecoration(),
                                              child: wrapWithModel(
                                                model:
                                                    _model.logoutBannerModel1,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: const LogoutBannerWidget(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0,
                                                  valueOrDefault<double>(
                                                    _model.showLogoutBanner
                                                        ? 16.0
                                                        : 86.0,
                                                    0.0,
                                                  ),
                                                  0.0,
                                                  0.0),
                                          child: Container(
                                            width:
                                                FFAppConstants.maxScreenWidth,
                                            decoration: const BoxDecoration(),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Builder(
                                                    builder: (context) =>
                                                        custom_widgets
                                                            .LoginForm(
                                                      width: double.infinity,
                                                      height: 350.0,
                                                      remeberUserId:
                                                          _model.rememberUserId,
                                                      loginEnabled: (_model
                                                                      .userid !=
                                                                  null &&
                                                              _model.userid !=
                                                                  '') &&
                                                          (_model.password !=
                                                                  null &&
                                                              _model.password !=
                                                                  ''),
                                                      errorMessage:
                                                          _model.error,
                                                      isUnlockError:
                                                          (String? message) {
                                                        return message
                                                                ?.toLowerCase()
                                                                .contains(
                                                                    "locked") ??
                                                            false;
                                                      }(AuthenticationGroup
                                                              .loginCall
                                                              .messageDesc(
                                                        (_model.loginAPIDesktopRes
                                                                ?.jsonBody ??
                                                            ''),
                                                      )),
                                                      onFormRendered:
                                                          (value) async {
                                                        setState(() {
                                                          _model.formHeight =
                                                              value;
                                                        });
                                                      },
                                                      onRememberUserId:
                                                          (value) async {
                                                        setState(() {
                                                          _model.rememberUserId =
                                                              value;
                                                        });
                                                      },
                                                      onUpdateUserId:
                                                          (value) async {
                                                        setState(() {
                                                          _model.userid = value;
                                                        });
                                                      },
                                                      onUpdatePassword:
                                                          (value) async {
                                                        setState(() {
                                                          _model.password =
                                                              value;
                                                        });
                                                      },
                                                      onForgotUserId: () async {
                                                        context.pushNamed(
                                                            'RecoverUserIdPage');
                                                      },
                                                      onForgotPassword:
                                                          () async {
                                                        context.pushNamed(
                                                            'RecoverPassPage');
                                                      },
                                                      onRegisterHere: () async {
                                                        context.pushNamed(
                                                          'RegistrationPage',
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                const TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .fade,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      0),
                                                            ),
                                                          },
                                                        );
                                                      },
                                                      onLogin: () async {
                                                        var shouldSetState =
                                                            false;
                                                        showDialog(
                                                          barrierColor:
                                                              const Color(0x33042757),
                                                          barrierDismissible:
                                                              false,
                                                          context: context,
                                                          builder:
                                                              (dialogContext) {
                                                            return Dialog(
                                                              elevation: 0,
                                                              insetPadding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              alignment: const AlignmentDirectional(
                                                                      0.0, 0.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                              child:
                                                                  WebViewAware(
                                                                child:
                                                                    GestureDetector(
                                                                  onTap: () => _model
                                                                          .unfocusNode
                                                                          .canRequestFocus
                                                                      ? FocusScope.of(
                                                                              context)
                                                                          .requestFocus(_model
                                                                              .unfocusNode)
                                                                      : FocusScope.of(
                                                                              context)
                                                                          .unfocus(),
                                                                  child:
                                                                      const CommonCircularIndicatorWidget(),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            setState(() {}));

                                                        _model.loginAPIDesktopRes =
                                                            await AuthenticationGroup
                                                                .loginCall
                                                                .call(
                                                          userName:
                                                              _model.userid,
                                                          password:
                                                              _model.password,
                                                          isSecurityQuestionNeeded:
                                                              !FFAppState()
                                                                  .rememberUsersOnDevice
                                                                  .contains(_model
                                                                      .userid),
                                                          dynamicBaseURL:
                                                              FFAppState()
                                                                  .dynamicBaseURL,
                                                        );
                                                        shouldSetState = true;
                                                        if ((_model
                                                                .loginAPIDesktopRes
                                                                ?.succeeded ??
                                                            true)) {
                                                          if ((_model.loginAPIDesktopRes
                                                                      ?.statusCode ??
                                                                  200) ==
                                                              200) {
                                                            setState(() {
                                                              _model.error = '';
                                                            });
                                                            if (_model
                                                                .rememberUserId) {
                                                              setState(() {
                                                                FFAppState()
                                                                        .remUserID =
                                                                    _model
                                                                        .userid!;
                                                                FFAppState()
                                                                        .selectedUserId =
                                                                    AuthenticationGroup
                                                                        .loginCall
                                                                        .selelctedUserId(
                                                                  (_model.loginAPIDesktopRes
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                )!;
                                                                FFAppState()
                                                                    .selectedFirstName = AuthenticationGroup.loginCall
                                                                                .firstName(
                                                                              (_model.loginAPIDesktopRes?.jsonBody ?? ''),
                                                                            ) !=
                                                                            null &&
                                                                        AuthenticationGroup.loginCall
                                                                                .firstName(
                                                                              (_model.loginAPIDesktopRes?.jsonBody ?? ''),
                                                                            ) !=
                                                                            ''
                                                                    ? AuthenticationGroup
                                                                        .loginCall
                                                                        .firstName(
                                                                        (_model.loginAPIDesktopRes?.jsonBody ??
                                                                            ''),
                                                                      )!
                                                                    : '';
                                                                FFAppState()
                                                                    .selectedUserName = AuthenticationGroup.loginCall
                                                                                .userName(
                                                                              (_model.loginAPIDesktopRes?.jsonBody ?? ''),
                                                                            ) !=
                                                                            null &&
                                                                        AuthenticationGroup.loginCall
                                                                                .userName(
                                                                              (_model.loginAPIDesktopRes?.jsonBody ?? ''),
                                                                            ) !=
                                                                            ''
                                                                    ? AuthenticationGroup
                                                                        .loginCall
                                                                        .userName(
                                                                        (_model.loginAPIDesktopRes?.jsonBody ??
                                                                            ''),
                                                                      )!
                                                                    : _model
                                                                        .userid!;
                                                              });
                                                            } else {
                                                              setState(() {
                                                                FFAppState()
                                                                    .remUserID = '';
                                                                FFAppState()
                                                                        .selectedUserId =
                                                                    AuthenticationGroup
                                                                        .loginCall
                                                                        .selelctedUserId(
                                                                  (_model.loginAPIDesktopRes
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                )!;
                                                                FFAppState()
                                                                    .selectedFirstName = AuthenticationGroup.loginCall
                                                                                .firstName(
                                                                              (_model.loginAPIDesktopRes?.jsonBody ?? ''),
                                                                            ) !=
                                                                            null &&
                                                                        AuthenticationGroup.loginCall
                                                                                .firstName(
                                                                              (_model.loginAPIDesktopRes?.jsonBody ?? ''),
                                                                            ) !=
                                                                            ''
                                                                    ? AuthenticationGroup
                                                                        .loginCall
                                                                        .firstName(
                                                                        (_model.loginAPIDesktopRes?.jsonBody ??
                                                                            ''),
                                                                      )!
                                                                    : '';
                                                                FFAppState()
                                                                    .selectedUserName = AuthenticationGroup.loginCall
                                                                                .userName(
                                                                              (_model.loginAPIDesktopRes?.jsonBody ?? ''),
                                                                            ) !=
                                                                            null &&
                                                                        AuthenticationGroup.loginCall
                                                                                .userName(
                                                                              (_model.loginAPIDesktopRes?.jsonBody ?? ''),
                                                                            ) !=
                                                                            ''
                                                                    ? AuthenticationGroup
                                                                        .loginCall
                                                                        .userName(
                                                                        (_model.loginAPIDesktopRes?.jsonBody ??
                                                                            ''),
                                                                      )!
                                                                    : _model
                                                                        .userid!;
                                                              });
                                                            }

                                                            if (AuthenticationGroup
                                                                .loginCall
                                                                .is2FANeeded(
                                                              (_model.loginAPIDesktopRes
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )!) {
                                                              setState(() {
                                                                FFAppState()
                                                                        .login2FARes =
                                                                    Login2FAResStruct
                                                                        .maybeFromMap(
                                                                            getJsonField(
                                                                  (_model.loginAPIDesktopRes
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                  r'''$''',
                                                                ))!;
                                                                FFAppState()
                                                                        .isFromTwoFacotrAuth =
                                                                    true;
                                                              });
                                                              setState(() {});
                                                              Navigator.pop(
                                                                  context);
                                                            } else {
                                                              if (getJsonField(
                                                                        (_model.loginAPIDesktopRes?.jsonBody ??
                                                                            ''),
                                                                        r'''$.IsSecurityQuestionsNeeded''',
                                                                      ) !=
                                                                      null
                                                                  ? !getJsonField(
                                                                      (_model.loginAPIDesktopRes
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                      r'''$.IsSecurityQuestionsNeeded''',
                                                                    )
                                                                  : true) {
                                                                setState(() {
                                                                  _model.securityUserId =
                                                                      getJsonField(
                                                                    (_model.loginAPIDesktopRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.UserId''',
                                                                  );
                                                                  _model.error =
                                                                      '';
                                                                });
                                                                setState(() {
                                                                  FFAppState()
                                                                      .LastLoginDate = AuthenticationGroup.loginCall
                                                                                  .lastLoginDate(
                                                                                (_model.loginAPIDesktopRes?.jsonBody ?? ''),
                                                                              ) !=
                                                                              null &&
                                                                          AuthenticationGroup.loginCall
                                                                                  .lastLoginDate(
                                                                                (_model.loginAPIDesktopRes?.jsonBody ?? ''),
                                                                              ) !=
                                                                              ''
                                                                      ? AuthenticationGroup
                                                                          .loginCall
                                                                          .lastLoginDate(
                                                                          (_model.loginAPIDesktopRes?.jsonBody ??
                                                                              ''),
                                                                        )!
                                                                      : '';
                                                                  FFAppState()
                                                                          .isFroYourSecurity =
                                                                      false;
                                                                  FFAppState()
                                                                          .isFromTwoFacotrAuth =
                                                                      false;
                                                                });
                                                                GoRouter.of(
                                                                        context)
                                                                    .prepareAuthEvent();
                                                                await authManager
                                                                    .signIn(
                                                                  authenticationToken:
                                                                      AuthenticationGroup
                                                                          .loginCall
                                                                          .token(
                                                                    (_model.loginAPIDesktopRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  authUid: AuthenticationGroup
                                                                      .loginCall
                                                                      .selelctedUserId(
                                                                        (_model.loginAPIDesktopRes?.jsonBody ??
                                                                            ''),
                                                                      )
                                                                      ?.toString(),
                                                                );
                                                                Navigator.pop(
                                                                    context);

                                                                context
                                                                    .pushNamedAuth(
                                                                  'HomeDashboard',
                                                                  context
                                                                      .mounted,
                                                                  extra: <String,
                                                                      dynamic>{
                                                                    kTransitionInfoKey:
                                                                        const TransitionInfo(
                                                                      hasTransition:
                                                                          true,
                                                                      transitionType:
                                                                          PageTransitionType
                                                                              .fade,
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              0),
                                                                    ),
                                                                  },
                                                                );
                                                              } else {
                                                                setState(() {
                                                                  _model.securityQuestion =
                                                                      getJsonField(
                                                                    (_model.loginAPIDesktopRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.Question''',
                                                                  ).toString();
                                                                  _model.securityQuestionId =
                                                                      getJsonField(
                                                                    (_model.loginAPIDesktopRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.QuestionID''',
                                                                  );
                                                                  _model.securityUserId =
                                                                      getJsonField(
                                                                    (_model.loginAPIDesktopRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.UserId''',
                                                                  );
                                                                });
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                      .LastLoginDate = AuthenticationGroup.loginCall
                                                                                  .lastLoginDate(
                                                                                (_model.loginAPIDesktopRes?.jsonBody ?? ''),
                                                                              ) !=
                                                                              null &&
                                                                          AuthenticationGroup.loginCall
                                                                                  .lastLoginDate(
                                                                                (_model.loginAPIDesktopRes?.jsonBody ?? ''),
                                                                              ) !=
                                                                              ''
                                                                      ? AuthenticationGroup
                                                                          .loginCall
                                                                          .lastLoginDate(
                                                                          (_model.loginAPIDesktopRes?.jsonBody ??
                                                                              ''),
                                                                        )!
                                                                      : '';
                                                                  FFAppState()
                                                                          .isFroYourSecurity =
                                                                      true;
                                                                  FFAppState()
                                                                          .isFromTwoFacotrAuth =
                                                                      false;
                                                                });
                                                                Navigator.pop(
                                                                    context);
                                                              }
                                                            }
                                                          } else {
                                                            setState(() {
                                                              _model.error =
                                                                  AuthenticationGroup
                                                                      .loginCall
                                                                      .messageDesc(
                                                                (_model.loginAPIDesktopRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              );
                                                              _model.apiErrorMes =
                                                                  AuthenticationGroup
                                                                      .loginCall
                                                                      .message(
                                                                (_model.loginAPIDesktopRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              );
                                                              _model.apiErrorMesDes =
                                                                  AuthenticationGroup
                                                                      .loginCall
                                                                      .messageDesc(
                                                                (_model.loginAPIDesktopRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              );
                                                            });
                                                            setState(() {
                                                              FFAppState()
                                                                      .username =
                                                                  _model
                                                                      .userid!;
                                                              FFAppState()
                                                                      .selectedUserName =
                                                                  _model
                                                                      .userid!;
                                                            });
                                                            Navigator.pop(
                                                                context);
                                                            if (shouldSetState) {
                                                              setState(() {});
                                                            }
                                                            return;
                                                          }
                                                        } else {
                                                          setState(() {
                                                            _model.error =
                                                                AuthenticationGroup
                                                                    .loginCall
                                                                    .messageDesc(
                                                              (_model.loginAPIDesktopRes
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            );
                                                            _model.apiErrorMes =
                                                                AuthenticationGroup
                                                                    .loginCall
                                                                    .message(
                                                              (_model.loginAPIDesktopRes
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            );
                                                            _model
                                                                .apiErrorMesDes = AuthenticationGroup
                                                                            .loginCall
                                                                            .messageDesc(
                                                                          (_model.loginAPIDesktopRes?.jsonBody ??
                                                                              ''),
                                                                        ) !=
                                                                        null &&
                                                                    AuthenticationGroup
                                                                            .loginCall
                                                                            .messageDesc(
                                                                          (_model.loginAPIDesktopRes?.jsonBody ??
                                                                              ''),
                                                                        ) !=
                                                                        ''
                                                                ? AuthenticationGroup
                                                                    .loginCall
                                                                    .messageDesc(
                                                                    (_model.loginAPIDesktopRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )
                                                                : AuthenticationGroup
                                                                    .loginCall
                                                                    .message(
                                                                    (_model.loginAPIDesktopRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  );
                                                          });
                                                          setState(() {
                                                            FFAppState()
                                                                    .username =
                                                                _model.userid!;
                                                          });
                                                          Navigator.pop(
                                                              context);
                                                          if (shouldSetState) {
                                                            setState(() {});
                                                          }
                                                          return;
                                                        }

                                                        if (shouldSetState) {
                                                          setState(() {});
                                                        }
                                                      },
                                                    ),
                                                  ),
                                                ),
                                                if (MediaQuery.sizeOf(context)
                                                        .width >=
                                                    kBreakpointLarge)
                                                  Expanded(
                                                    flex: 2,
                                                    child: Container(
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: Visibility(
                                                        visible: MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width >=
                                                            kBreakpointLarge,
                                                        child: SizedBox(
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              _model.formHeight,
                                                          child: Stack(
                                                            children: [
                                                              SizedBox(
                                                                width: double
                                                                    .infinity,
                                                                height: double
                                                                    .infinity,
                                                                child:
                                                                    CarouselSlider(
                                                                  items: [
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/images/slider_img_3.webp',
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        fit: BoxFit
                                                                            .fill,
                                                                      ),
                                                                    ),
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/images/slider_img_1.webp',
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        fit: BoxFit
                                                                            .fill,
                                                                      ),
                                                                    ),
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/images/slider_img_2.webp',
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        fit: BoxFit
                                                                            .fill,
                                                                        errorBuilder: (context,
                                                                                error,
                                                                                stackTrace) =>
                                                                            Image.asset(
                                                                          'assets/images/error_image.png',
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              double.infinity,
                                                                          fit: BoxFit
                                                                              .fill,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                  carouselController:
                                                                      _model.carouselController ??=
                                                                          CarouselController(),
                                                                  options:
                                                                      CarouselOptions(
                                                                    initialPage:
                                                                        1,
                                                                    viewportFraction:
                                                                        1.0,
                                                                    disableCenter:
                                                                        true,
                                                                    enlargeCenterPage:
                                                                        true,
                                                                    enlargeFactor:
                                                                        0.25,
                                                                    enableInfiniteScroll:
                                                                        true,
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    autoPlay:
                                                                        true,
                                                                    autoPlayAnimationDuration:
                                                                        const Duration(
                                                                            milliseconds:
                                                                                800),
                                                                    autoPlayInterval:
                                                                        const Duration(
                                                                            milliseconds:
                                                                                (800 + 4000)),
                                                                    autoPlayCurve:
                                                                        Curves
                                                                            .linear,
                                                                    pauseAutoPlayInFiniteScroll:
                                                                        true,
                                                                    onPageChanged:
                                                                        (index,
                                                                            _) async {
                                                                      _model.carouselCurrentIndex =
                                                                          index;
                                                                      setState(
                                                                          () {
                                                                        _model.corousalIndex =
                                                                            _model.carouselCurrentIndex;
                                                                      });
                                                                    },
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      FlutterFlowIconButton(
                                                                    borderColor:
                                                                        Colors
                                                                            .transparent,
                                                                    borderRadius:
                                                                        20.0,
                                                                    borderWidth:
                                                                        0.0,
                                                                    buttonSize:
                                                                        40.0,
                                                                    fillColor:
                                                                        const Color(
                                                                            0x3D7D7D7D),
                                                                    icon: Icon(
                                                                      Icons
                                                                          .chevron_left,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    onPressed:
                                                                        () async {
                                                                      await _model
                                                                          .carouselController
                                                                          ?.previousPage(
                                                                        duration:
                                                                            const Duration(milliseconds: 300),
                                                                        curve: Curves
                                                                            .ease,
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        1.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                                  child:
                                                                      FlutterFlowIconButton(
                                                                    borderColor:
                                                                        Colors
                                                                            .transparent,
                                                                    borderRadius:
                                                                        20.0,
                                                                    borderWidth:
                                                                        0.0,
                                                                    buttonSize:
                                                                        40.0,
                                                                    fillColor:
                                                                        const Color(
                                                                            0x3D7D7D7D),
                                                                    icon: Icon(
                                                                      Icons
                                                                          .chevron_right,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    onPressed:
                                                                        () async {
                                                                      await _model
                                                                          .carouselController
                                                                          ?.nextPage(
                                                                        duration:
                                                                            const Duration(milliseconds: 300),
                                                                        curve: Curves
                                                                            .ease,
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        1.0),
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          8.0),
                                                                  child: custom_widgets
                                                                      .DotIndicator(
                                                                    width:
                                                                        100.0,
                                                                    height:
                                                                        30.0,
                                                                    count: 3,
                                                                    currentPosition:
                                                                        _model
                                                                            .corousalIndex,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                              ].divide(const SizedBox(width: 16.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -1.0),
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 4.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Container(
                                            width:
                                                FFAppConstants.maxScreenWidth,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              boxShadow: const [
                                                BoxShadow(
                                                  blurRadius: 3.0,
                                                  color: Color(0x26000000),
                                                  offset: Offset(
                                                    0.0,
                                                    1.0,
                                                  ),
                                                  spreadRadius: 1.0,
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(16.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      unawaited(
                                                        () async {
                                                          await action_blocks
                                                              .showLoadingDialog(
                                                                  context);
                                                        }(),
                                                      );
                                                      _model.askTwoFactorRes =
                                                          await ManageContactDetailsGroup
                                                              .askTwoFactorCall
                                                              .call(
                                                        userName: FFAppState()
                                                            .username,
                                                      );
                                                      if ((_model
                                                              .askTwoFactorRes
                                                              ?.succeeded ??
                                                          true)) {
                                                        if ((_model.askTwoFactorRes
                                                                    ?.statusCode ??
                                                                200) ==
                                                            FFAppState()
                                                                .successStatusCode) {
                                                          if (ManageContactDetailsGroup
                                                              .askTwoFactorCall
                                                              .is2FANeeded(
                                                            (_model.askTwoFactorRes
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )!) {
                                                            setState(() {
                                                              FFAppState()
                                                                  .selectedMCDrawerIndex = 9;
                                                              FFAppState()
                                                                      .isFromTwoFacotrAuth =
                                                                  true;
                                                              FFAppState()
                                                                      .login2FARes =
                                                                  Login2FAResStruct
                                                                      .maybeFromMap(
                                                                          getJsonField(
                                                                (_model.askTwoFactorRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$''',
                                                              ))!;
                                                            });
                                                            Navigator.pop(
                                                                context);

                                                            context.pushNamed(
                                                              'ManageContactDetails',
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    const TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .fade,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          0),
                                                                ),
                                                              },
                                                            );
                                                          } else {
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return WebViewAware(
                                                                  child:
                                                                      AlertDialog(
                                                                    title: const Text(
                                                                        'Two-factor authentication is not enabled'),
                                                                    actions: [
                                                                      TextButton(
                                                                        onPressed:
                                                                            () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                        child: const Text(
                                                                            'Ok'),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                            Navigator.pop(
                                                                context);
                                                          }
                                                        } else {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return WebViewAware(
                                                                child:
                                                                    AlertDialog(
                                                                  title: const Text(
                                                                      'Something went to wrong'),
                                                                  actions: [
                                                                    TextButton(
                                                                      onPressed:
                                                                          () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                      child: const Text(
                                                                          'Ok'),
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            },
                                                          );
                                                          Navigator.pop(
                                                              context);
                                                        }
                                                      } else {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return WebViewAware(
                                                              child:
                                                                  AlertDialog(
                                                                title: const Text(
                                                                    'Something went to wrong'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: const Text(
                                                                        'Ok'),
                                                                  ),
                                                                ],
                                                              ),
                                                            );
                                                          },
                                                        );
                                                        Navigator.pop(context);
                                                      }

                                                      setState(() {});
                                                    },
                                                    child: Text(
                                                      'MILITARY STAR',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Arial',
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .milistaryStarComModel1,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child:
                                                      const MilistaryStarComWidget(),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -1.0),
                                        child: Container(
                                          width: FFAppConstants.maxScreenWidth,
                                          decoration: const BoxDecoration(),
                                          alignment:
                                              const AlignmentDirectional(0.0, -1.0),
                                          child: wrapWithModel(
                                            model: _model.footerModel1,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: const FooterWidget(),
                                          ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 16.0)),
                                  );
                                } else if (FFAppState().isFromTwoFacotrAuth) {
                                  return SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: FFAppConstants.maxScreenWidth,
                                          constraints: BoxConstraints(
                                            minHeight:
                                                MediaQuery.sizeOf(context)
                                                        .height *
                                                    0.93,
                                          ),
                                          decoration: const BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 96.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  flex: 3,
                                                  child: Container(
                                                    decoration: const BoxDecoration(),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .added2FASecCompModel1,
                                                      updateCallback: () =>
                                                          setState(() {}),
                                                      child:
                                                          Added2FASecCompWidget(
                                                        isFromManageUserDetails:
                                                            false,
                                                        confirmCallBack:
                                                            () async {
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                    .isFromTwoFacotrAuth =
                                                                false;
                                                            FFAppState()
                                                                    .isFroYourSecurity =
                                                                false;
                                                          });
                                                        },
                                                        cancelCallBack:
                                                            () async {
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                    .isFromTwoFacotrAuth =
                                                                false;
                                                            FFAppState()
                                                                    .isFroYourSecurity =
                                                                false;
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 8.0),
                                                  child: Text(
                                                    'Last Login at 09:33 AM CST 08 Nov 2023',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Arial',
                                                          color: Colors
                                                              .transparent,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, -1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    valueOrDefault<double>(
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.7,
                                                      0.0,
                                                    ),
                                                    0.0,
                                                    valueOrDefault<double>(
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.7,
                                                      0.0,
                                                    ),
                                                    0.0),
                                            child: Container(
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: wrapWithModel(
                                                model: _model.footerModel2,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: const FooterWidget(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                } else {
                                  return SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: FFAppConstants.maxScreenWidth,
                                          constraints: BoxConstraints(
                                            minHeight:
                                                MediaQuery.sizeOf(context)
                                                        .height *
                                                    0.93,
                                          ),
                                          decoration: const BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 96.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  flex: 3,
                                                  child: Container(
                                                    decoration: const BoxDecoration(),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .forYourAddedSecurityCompModel1,
                                                      updateCallback: () =>
                                                          setState(() {}),
                                                      child:
                                                          ForYourAddedSecurityCompWidget(
                                                        question: _model
                                                            .securityQuestion!,
                                                        questionId: _model
                                                            .securityQuestionId,
                                                        userId: _model
                                                            .securityUserId,
                                                        username: _model.userid,
                                                        continueCallBack:
                                                            () async {},
                                                        cancelCallback:
                                                            () async {
                                                          setState(() {
                                                            FFAppState()
                                                                    .isFroYourSecurity =
                                                                false;
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 8.0),
                                                  child: Text(
                                                    'Last Login at 09:33 AM CST 08 Nov 2023',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Arial',
                                                          color: Colors
                                                              .transparent,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, -1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    valueOrDefault<double>(
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.7,
                                                      0.0,
                                                    ),
                                                    0.0,
                                                    valueOrDefault<double>(
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.7,
                                                      0.0,
                                                    ),
                                                    0.0),
                                            child: Container(
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: wrapWithModel(
                                                model: _model.footerModel3,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: const FooterWidget(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                          wrapWithModel(
                            model: _model.headerModel1,
                            updateCallback: () => setState(() {}),
                            child: const HeaderWidget(
                              option: 'login',
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    desktop: false,
                  ))
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).height,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.headerModel2,
                              updateCallback: () => setState(() {}),
                              child: const HeaderWidget(
                                option: 'login',
                              ),
                            ),
                            Builder(
                              builder: (context) {
                                if (!FFAppState().isFroYourSecurity &&
                                    !FFAppState().isFromTwoFacotrAuth) {
                                  return ListView(
                                    padding: const EdgeInsets.fromLTRB(
                                      0,
                                      16.0,
                                      0,
                                      0,
                                    ),
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      if (_model.showLogoutBanner)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.07,
                                                    0.0,
                                                  ),
                                                  0.0,
                                                  valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.07,
                                                    0.0,
                                                  ),
                                                  0.0),
                                          child: wrapWithModel(
                                            model: _model.logoutBannerModel2,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: const LogoutBannerWidget(),
                                          ),
                                        ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            valueOrDefault<double>(
                                              MediaQuery.sizeOf(context).width *
                                                  0.07,
                                              0.0,
                                            ),
                                            0.0,
                                            valueOrDefault<double>(
                                              MediaQuery.sizeOf(context).width *
                                                  0.07,
                                              0.0,
                                            ),
                                            0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Builder(
                                                builder: (context) =>
                                                    custom_widgets.LoginForm(
                                                  width: double.infinity,
                                                  height: 350.0,
                                                  remeberUserId:
                                                      _model.rememberUserId,
                                                  loginEnabled:
                                                      (_model.userid != null &&
                                                              _model.userid !=
                                                                  '') &&
                                                          (_model.password !=
                                                                  null &&
                                                              _model.password !=
                                                                  ''),
                                                  errorMessage: _model.error,
                                                  isUnlockError:
                                                      (String? message) {
                                                    return message
                                                            ?.toLowerCase()
                                                            .contains(
                                                                "locked") ??
                                                        false;
                                                  }(AuthenticationGroup
                                                          .loginCall
                                                          .messageDesc(
                                                    (_model.loginMobileRes
                                                            ?.jsonBody ??
                                                        ''),
                                                  )),
                                                  onFormRendered:
                                                      (value) async {
                                                    setState(() {
                                                      _model.formHeight = value;
                                                    });
                                                  },
                                                  onRememberUserId:
                                                      (value) async {
                                                    setState(() {
                                                      _model.rememberUserId =
                                                          value;
                                                    });
                                                  },
                                                  onUpdateUserId:
                                                      (value) async {
                                                    setState(() {
                                                      _model.userid = value;
                                                    });
                                                  },
                                                  onUpdatePassword:
                                                      (value) async {
                                                    setState(() {
                                                      _model.password = value;
                                                    });
                                                  },
                                                  onForgotUserId: () async {
                                                    context.pushNamed(
                                                        'RecoverUserIdPage');
                                                  },
                                                  onForgotPassword: () async {
                                                    context.pushNamed(
                                                        'RecoverPassPage');
                                                  },
                                                  onRegisterHere: () async {
                                                    context.goNamed(
                                                      'RegistrationPage',
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            const TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                          duration: Duration(
                                                              milliseconds: 0),
                                                        ),
                                                      },
                                                    );
                                                  },
                                                  onLogin: () async {
                                                    var shouldSetState = false;
                                                    showDialog(
                                                      barrierColor:
                                                          const Color(0x33042757),
                                                      barrierDismissible: false,
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: const AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child: WebViewAware(
                                                            child:
                                                                GestureDetector(
                                                              onTap: () => _model
                                                                      .unfocusNode
                                                                      .canRequestFocus
                                                                  ? FocusScope.of(
                                                                          context)
                                                                      .requestFocus(
                                                                          _model
                                                                              .unfocusNode)
                                                                  : FocusScope.of(
                                                                          context)
                                                                      .unfocus(),
                                                              child:
                                                                  const CommonCircularIndicatorWidget(),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));

                                                    _model.loginMobileRes =
                                                        await AuthenticationGroup
                                                            .loginCall
                                                            .call(
                                                      userName: _model.userid,
                                                      password: _model.password,
                                                      isSecurityQuestionNeeded:
                                                          !FFAppState()
                                                              .rememberUsersOnDevice
                                                              .contains(_model
                                                                  .userid),
                                                      dynamicBaseURL:
                                                          FFAppState()
                                                              .dynamicBaseURL,
                                                    );
                                                    shouldSetState = true;
                                                    if ((_model.loginMobileRes
                                                            ?.succeeded ??
                                                        true)) {
                                                      if ((_model.loginMobileRes
                                                                  ?.statusCode ??
                                                              200) ==
                                                          200) {
                                                        setState(() {
                                                          _model.error = '';
                                                        });
                                                        if (_model
                                                            .rememberUserId) {
                                                          setState(() {
                                                            FFAppState()
                                                                    .remUserID =
                                                                _model.userid!;
                                                            FFAppState()
                                                                    .selectedUserId =
                                                                AuthenticationGroup
                                                                    .loginCall
                                                                    .selelctedUserId(
                                                              (_model.loginMobileRes
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )!;
                                                            FFAppState()
                                                                .selectedFirstName = AuthenticationGroup
                                                                            .loginCall
                                                                            .firstName(
                                                                          (_model.loginMobileRes?.jsonBody ??
                                                                              ''),
                                                                        ) !=
                                                                        null &&
                                                                    AuthenticationGroup
                                                                            .loginCall
                                                                            .firstName(
                                                                          (_model.loginMobileRes?.jsonBody ??
                                                                              ''),
                                                                        ) !=
                                                                        ''
                                                                ? AuthenticationGroup
                                                                    .loginCall
                                                                    .firstName(
                                                                    (_model.loginMobileRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )!
                                                                : '';
                                                            FFAppState()
                                                                .selectedUserName = AuthenticationGroup
                                                                            .loginCall
                                                                            .userName(
                                                                          (_model.loginMobileRes?.jsonBody ??
                                                                              ''),
                                                                        ) !=
                                                                        null &&
                                                                    AuthenticationGroup
                                                                            .loginCall
                                                                            .userName(
                                                                          (_model.loginMobileRes?.jsonBody ??
                                                                              ''),
                                                                        ) !=
                                                                        ''
                                                                ? AuthenticationGroup
                                                                    .loginCall
                                                                    .userName(
                                                                    (_model.loginMobileRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )!
                                                                : '';
                                                          });
                                                        } else {
                                                          setState(() {
                                                            FFAppState()
                                                                .remUserID = '';
                                                            FFAppState()
                                                                    .selectedUserId =
                                                                AuthenticationGroup
                                                                    .loginCall
                                                                    .selelctedUserId(
                                                              (_model.loginMobileRes
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )!;
                                                            FFAppState()
                                                                .selectedFirstName = AuthenticationGroup
                                                                            .loginCall
                                                                            .firstName(
                                                                          (_model.loginMobileRes?.jsonBody ??
                                                                              ''),
                                                                        ) !=
                                                                        null &&
                                                                    AuthenticationGroup
                                                                            .loginCall
                                                                            .firstName(
                                                                          (_model.loginMobileRes?.jsonBody ??
                                                                              ''),
                                                                        ) !=
                                                                        ''
                                                                ? AuthenticationGroup
                                                                    .loginCall
                                                                    .firstName(
                                                                    (_model.loginMobileRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )!
                                                                : '';
                                                            FFAppState()
                                                                .selectedUserName = AuthenticationGroup
                                                                            .loginCall
                                                                            .userName(
                                                                          (_model.loginMobileRes?.jsonBody ??
                                                                              ''),
                                                                        ) !=
                                                                        null &&
                                                                    AuthenticationGroup
                                                                            .loginCall
                                                                            .userName(
                                                                          (_model.loginMobileRes?.jsonBody ??
                                                                              ''),
                                                                        ) !=
                                                                        ''
                                                                ? AuthenticationGroup
                                                                    .loginCall
                                                                    .userName(
                                                                    (_model.loginMobileRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )!
                                                                : '';
                                                          });
                                                        }

                                                        if (AuthenticationGroup
                                                                    .loginCall
                                                                    .isTwoFAOtpIn(
                                                                  (_model.loginMobileRes
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ) !=
                                                                null
                                                            ? AuthenticationGroup
                                                                .loginCall
                                                                .isTwoFAOtpIn(
                                                                (_model.loginMobileRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )!
                                                            : false) {
                                                          setState(() {
                                                            FFAppState()
                                                                .selectedMCDrawerIndex = 9;
                                                            FFAppState()
                                                                    .login2FARes =
                                                                Login2FAResStruct
                                                                    .maybeFromMap(
                                                                        getJsonField(
                                                              (_model.loginMobileRes
                                                                      ?.jsonBody ??
                                                                  ''),
                                                              r'''$''',
                                                            ))!;
                                                            FFAppState()
                                                                    .isFromTwoFacotrAuth =
                                                                true;
                                                          });
                                                          Navigator.pop(
                                                              context);

                                                          context.goNamedAuth(
                                                            'ManageContactDetails',
                                                            context.mounted,
                                                            extra: <String,
                                                                dynamic>{
                                                              kTransitionInfoKey:
                                                                  const TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .fade,
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        0),
                                                              ),
                                                            },
                                                          );
                                                        } else {
                                                          if (getJsonField(
                                                                    (_model.loginMobileRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.IsSecurityQuestionsNeeded''',
                                                                  ) !=
                                                                  null
                                                              ? !getJsonField(
                                                                  (_model.loginMobileRes
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                  r'''$.IsSecurityQuestionsNeeded''',
                                                                )
                                                              : true) {
                                                            setState(() {
                                                              _model.securityUserId =
                                                                  AuthenticationGroup
                                                                      .loginCall
                                                                      .selelctedUserId(
                                                                (_model.loginMobileRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              );
                                                              _model.error = '';
                                                            });
                                                            setState(() {
                                                              FFAppState()
                                                                  .LastLoginDate = AuthenticationGroup
                                                                              .loginCall
                                                                              .lastLoginDate(
                                                                            (_model.loginMobileRes?.jsonBody ??
                                                                                ''),
                                                                          ) !=
                                                                          null &&
                                                                      AuthenticationGroup
                                                                              .loginCall
                                                                              .lastLoginDate(
                                                                            (_model.loginMobileRes?.jsonBody ??
                                                                                ''),
                                                                          ) !=
                                                                          ''
                                                                  ? AuthenticationGroup
                                                                      .loginCall
                                                                      .lastLoginDate(
                                                                      (_model.loginMobileRes
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )!
                                                                  : '';
                                                              FFAppState()
                                                                      .isFroYourSecurity =
                                                                  false;
                                                              FFAppState()
                                                                      .isFromTwoFacotrAuth =
                                                                  false;
                                                            });
                                                            GoRouter.of(context)
                                                                .prepareAuthEvent();
                                                            await authManager
                                                                .signIn(
                                                              authenticationToken:
                                                                  AuthenticationGroup
                                                                      .loginCall
                                                                      .token(
                                                                (_model.loginMobileRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              authUid: AuthenticationGroup
                                                                  .loginCall
                                                                  .selelctedUserId(
                                                                    (_model.loginMobileRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )
                                                                  ?.toString(),
                                                            );
                                                            Navigator.pop(
                                                                context);

                                                            context
                                                                .pushNamedAuth(
                                                              'HomeDashboard',
                                                              context.mounted,
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    const TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .fade,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          0),
                                                                ),
                                                              },
                                                            );
                                                          } else {
                                                            setState(() {
                                                              _model.securityQuestion =
                                                                  getJsonField(
                                                                (_model.loginMobileRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.Question''',
                                                              ).toString();
                                                              _model.securityQuestionId =
                                                                  getJsonField(
                                                                (_model.loginMobileRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.QuestionID''',
                                                              );
                                                              _model.securityUserId =
                                                                  getJsonField(
                                                                (_model.loginMobileRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.UserId''',
                                                              );
                                                            });
                                                            setState(() {
                                                              FFAppState()
                                                                  .LastLoginDate = AuthenticationGroup
                                                                              .loginCall
                                                                              .lastLoginDate(
                                                                            (_model.loginMobileRes?.jsonBody ??
                                                                                ''),
                                                                          ) !=
                                                                          null &&
                                                                      AuthenticationGroup
                                                                              .loginCall
                                                                              .lastLoginDate(
                                                                            (_model.loginMobileRes?.jsonBody ??
                                                                                ''),
                                                                          ) !=
                                                                          ''
                                                                  ? AuthenticationGroup
                                                                      .loginCall
                                                                      .lastLoginDate(
                                                                      (_model.loginMobileRes
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )!
                                                                  : '';
                                                              FFAppState()
                                                                      .isFroYourSecurity =
                                                                  true;
                                                              FFAppState()
                                                                      .isFromTwoFacotrAuth =
                                                                  false;
                                                            });
                                                            Navigator.pop(
                                                                context);
                                                          }
                                                        }
                                                      } else {
                                                        setState(() {
                                                          _model.error =
                                                              AuthenticationGroup
                                                                  .loginCall
                                                                  .messageDesc(
                                                            (_model.loginMobileRes
                                                                    ?.jsonBody ??
                                                                ''),
                                                          );
                                                          _model.apiErrorMes =
                                                              AuthenticationGroup
                                                                  .loginCall
                                                                  .message(
                                                            (_model.loginMobileRes
                                                                    ?.jsonBody ??
                                                                ''),
                                                          );
                                                          _model.apiErrorMesDes =
                                                              AuthenticationGroup
                                                                  .loginCall
                                                                  .messageDesc(
                                                            (_model.loginMobileRes
                                                                    ?.jsonBody ??
                                                                ''),
                                                          );
                                                        });
                                                        setState(() {
                                                          FFAppState()
                                                              .username = (String?
                                                                  message) {
                                                            return message
                                                                    ?.toLowerCase()
                                                                    .contains(
                                                                        "locked") ??
                                                                false;
                                                          }(AuthenticationGroup
                                                                  .loginCall
                                                                  .messageDesc(
                                                            (_model.loginMobileRes
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ))
                                                              ? _model.userid!
                                                              : '';
                                                          FFAppState()
                                                                  .selectedUserName =
                                                              _model.userid!;
                                                        });
                                                        Navigator.pop(context);
                                                        if (shouldSetState) {
                                                          setState(() {});
                                                        }
                                                        return;
                                                      }
                                                    } else {
                                                      setState(() {
                                                        _model.error =
                                                            AuthenticationGroup
                                                                .loginCall
                                                                .messageDesc(
                                                          (_model.loginMobileRes
                                                                  ?.jsonBody ??
                                                              ''),
                                                        );
                                                        _model.apiErrorMes =
                                                            AuthenticationGroup
                                                                .loginCall
                                                                .message(
                                                          (_model.loginMobileRes
                                                                  ?.jsonBody ??
                                                              ''),
                                                        );
                                                        _model.apiErrorMesDes =
                                                            AuthenticationGroup
                                                                .loginCall
                                                                .messageDesc(
                                                          (_model.loginMobileRes
                                                                  ?.jsonBody ??
                                                              ''),
                                                        );
                                                      });
                                                      setState(() {
                                                        FFAppState()
                                                            .username = (String?
                                                                message) {
                                                          return message
                                                                  ?.toLowerCase()
                                                                  .contains(
                                                                      "locked") ??
                                                              false;
                                                        }(AuthenticationGroup
                                                                .loginCall
                                                                .messageDesc(
                                                          (_model.loginMobileRes
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ))
                                                            ? _model.userid!
                                                            : '';
                                                      });
                                                      Navigator.pop(context);
                                                      if (shouldSetState) {
                                                        setState(() {});
                                                      }
                                                      return;
                                                    }

                                                    if (shouldSetState) {
                                                      setState(() {});
                                                    }
                                                  },
                                                ),
                                              ),
                                            ),
                                          ].divide(const SizedBox(width: 16.0)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            valueOrDefault<double>(
                                              MediaQuery.sizeOf(context).width *
                                                  0.07,
                                              0.0,
                                            ),
                                            0.0,
                                            valueOrDefault<double>(
                                              MediaQuery.sizeOf(context).width *
                                                  0.07,
                                              0.0,
                                            ),
                                            0.0),
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 4.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              boxShadow: const [
                                                BoxShadow(
                                                  blurRadius: 3.0,
                                                  color: Color(0x26000000),
                                                  offset: Offset(
                                                    0.0,
                                                    1.0,
                                                  ),
                                                  spreadRadius: 1.0,
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(16.0),
                                                  child: Text(
                                                    'MILITARY STAR',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Arial',
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .milistaryStarComModel2,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child:
                                                      const MilistaryStarComWidget(),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            valueOrDefault<double>(
                                              MediaQuery.sizeOf(context).width *
                                                  0.07,
                                              0.0,
                                            ),
                                            0.0,
                                            valueOrDefault<double>(
                                              MediaQuery.sizeOf(context).width *
                                                  0.07,
                                              0.0,
                                            ),
                                            0.0),
                                        child: wrapWithModel(
                                          model: _model.footerModel4,
                                          updateCallback: () => setState(() {}),
                                          child: const FooterWidget(),
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 16.0)),
                                  );
                                } else if (FFAppState().isFromTwoFacotrAuth) {
                                  return SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.07,
                                                    0.0,
                                                  ),
                                                  16.0,
                                                  valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.07,
                                                    0.0,
                                                  ),
                                                  0.0),
                                          child: Container(
                                            constraints: BoxConstraints(
                                              minHeight:
                                                  MediaQuery.sizeOf(context)
                                                          .height *
                                                      0.93,
                                            ),
                                            decoration: const BoxDecoration(),
                                            child: wrapWithModel(
                                              model:
                                                  _model.added2FASecCompModel2,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: Added2FASecCompWidget(
                                                isFromManageUserDetails: false,
                                                confirmCallBack: () async {
                                                  setState(() {
                                                    FFAppState()
                                                            .isFromTwoFacotrAuth =
                                                        false;
                                                  });
                                                },
                                                cancelCallBack: () async {
                                                  setState(() {
                                                    FFAppState()
                                                            .isFromTwoFacotrAuth =
                                                        false;
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, -1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    valueOrDefault<double>(
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                      0.0,
                                                    ),
                                                    0.0,
                                                    valueOrDefault<double>(
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                      0.0,
                                                    ),
                                                    0.0),
                                            child: Container(
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: wrapWithModel(
                                                model: _model.footerModel5,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: const FooterWidget(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                } else {
                                  return SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.07,
                                                    0.0,
                                                  ),
                                                  16.0,
                                                  valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.07,
                                                    0.0,
                                                  ),
                                                  0.0),
                                          child: Container(
                                            constraints: BoxConstraints(
                                              minHeight:
                                                  MediaQuery.sizeOf(context)
                                                          .height *
                                                      0.93,
                                            ),
                                            decoration: const BoxDecoration(),
                                            child: wrapWithModel(
                                              model: _model
                                                  .forYourAddedSecurityCompModel2,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child:
                                                  ForYourAddedSecurityCompWidget(
                                                question:
                                                    _model.securityQuestion!,
                                                questionId:
                                                    _model.securityQuestionId,
                                                userId:
                                                    FFAppState().selectedUserId,
                                                username: _model.userid,
                                                continueCallBack: () async {},
                                                cancelCallback: () async {
                                                  setState(() {
                                                    FFAppState()
                                                            .isFroYourSecurity =
                                                        false;
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, -1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    valueOrDefault<double>(
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                      0.0,
                                                    ),
                                                    0.0,
                                                    valueOrDefault<double>(
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                      0.0,
                                                    ),
                                                    0.0),
                                            child: Container(
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: wrapWithModel(
                                                model: _model.footerModel6,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: const FooterWidget(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ));
  }
}
