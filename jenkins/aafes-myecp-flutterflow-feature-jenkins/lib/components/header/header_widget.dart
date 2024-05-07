import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/header_options_mobile/header_options_mobile_widget.dart';
import '/components/mobile_header_sub_item/mobile_header_sub_item_widget.dart';
import '/components/screen_height_estimator/screen_height_estimator_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'header_model.dart';
export 'header_model.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({
    super.key,
    this.option,
  });

  final String? option;

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  late HeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.drawerOpen = false;
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      children: [
        // Since the header is used in all of the screens, I have added this component here so that it can caluclate the screen sizes and save it in the appstate
        wrapWithModel(
          model: _model.screenHeightEstimatorModel,
          updateCallback: () => setState(() {}),
          child: const ScreenHeightEstimatorWidget(),
        ),
        if (responsiveVisibility(
          context: context,
          desktop: false,
        ))
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 3.0,
                  color: Color(0x7F000000),
                  offset: Offset(
                    0.0,
                    1.0,
                  ),
                  spreadRadius: 1.0,
                )
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 55.0,
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            var shouldSetState = false;
                            if (loggedIn) {
                              _model.accountDashboardValidationResult =
                                  await actions.isAccountDashboardPage(
                                'myecp://myecp.com${GoRouterState.of(context).uri.toString()}',
                              );
                              shouldSetState = true;
                              if (_model.accountDashboardValidationResult!) {
                                FFAppState().update(() {
                                  FFAppState().selelctedHeaderIndex = -1;
                                  FFAppState().deleteSelectedSubHeaderItem();
                                  FFAppState().selectedSubHeaderItem = '';

                                  FFAppState().isFroYourSecurity = false;
                                  FFAppState().isFromTwoFacotrAuth = false;
                                });

                                context.pushNamed(
                                  'LoginPage',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              } else {
                                FFAppState().update(() {
                                  FFAppState().selelctedHeaderIndex = -1;
                                  FFAppState().deleteSelectedSubHeaderItem();
                                  FFAppState().selectedSubHeaderItem = '';

                                  FFAppState().isFroYourSecurity = false;
                                  FFAppState().isFromTwoFacotrAuth = false;
                                });

                                context.pushNamed('AccountDashboard');
                              }

                              if (shouldSetState) setState(() {});
                              return;
                            } else {
                              _model.isLoginPageResultCopy =
                                  await actions.isLoginPage(
                                'myecp://myecp.com${GoRouterState.of(context).uri.toString()}',
                              );
                              shouldSetState = true;
                              if (_model.isLoginPageResultCopy!) {
                                FFAppState().update(() {
                                  FFAppState().isFroYourSecurity = false;
                                  FFAppState().isFromTwoFacotrAuth = false;
                                });

                                context.pushNamed(
                                  'LoginPage',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              } else {
                                FFAppState().update(() {
                                  FFAppState().selelctedHeaderIndex = -1;
                                  FFAppState().deleteSelectedSubHeaderItem();
                                  FFAppState().selectedSubHeaderItem = '';

                                  FFAppState().isFromTwoFacotrAuth = false;
                                });

                                context.pushNamed(
                                  'LoginPage',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );

                                setState(() {
                                  _model.drawerOpen = false;
                                });
                                if (shouldSetState) setState(() {});
                                return;
                              }

                              if (shouldSetState) setState(() {});
                              return;
                            }

                            if (shouldSetState) setState(() {});
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.asset(
                              'assets/images/military_star_logo.png',
                              height: 30.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 0.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.menu,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            if (_model.drawerOpen == false) {
                              setState(() {
                                _model.drawerOpen = true;
                              });
                            } else {
                              setState(() {
                                _model.drawerOpen = false;
                              });
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                if (_model.drawerOpen)
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 530),
                      curve: Curves.bounceOut,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            if (loggedIn)
                              wrapWithModel(
                                model: _model.myAccountOptionModel,
                                updateCallback: () => setState(() {}),
                                child: HeaderOptionsMobileWidget(
                                  isChecked:
                                      FFAppState().selelctedHeaderIndex == 0,
                                  label: 'My Account',
                                  onSelect: () async {
                                    setState(() {
                                      _model.selectedMobileIndex = 0;
                                    });
                                  },
                                ),
                              ),
                            if (((FFAppState().selelctedHeaderIndex == 0) ||
                                    (_model.selectedMobileIndex == 0)) &&
                                loggedIn)
                              Container(
                                decoration: const BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.mobileHeaderSubItemModel1,
                                  updateCallback: () => setState(() {}),
                                  child: MobileHeaderSubItemWidget(
                                    isSeelcted:
                                        FFAppState().selelctedHeaderIndex == 0,
                                    subItemList:
                                        FFAppState().myAccountSubitemList,
                                    onSelect: (item) async {
                                      FFAppState().update(() {
                                        FFAppState().selelctedHeaderIndex = 0;
                                        FFAppState().isFromTwoFacotrAuth =
                                            false;
                                        FFAppState().isFroYourSecurity = false;
                                      });
                                      if (FFAppState().selectedSubHeaderItem ==
                                          'My Profile') {
                                        setState(() {
                                          FFAppState().selectedMCDrawerIndex =
                                              0;
                                          FFAppState().isFromTwoFacotrAuth =
                                              false;
                                        });

                                        context.pushNamed(
                                          'ManageContactDetails',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      } else {
                                        context.pushNamed(
                                          'HomeDashboard',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      }
                                    },
                                  ),
                                ),
                              ),
                            if (loggedIn)
                              wrapWithModel(
                                model: _model.paymentsOptionModel,
                                updateCallback: () => setState(() {}),
                                child: HeaderOptionsMobileWidget(
                                  isChecked:
                                      FFAppState().selelctedHeaderIndex == 1,
                                  label: 'Payments',
                                  onSelect: () async {
                                    setState(() {
                                      _model.selectedMobileIndex = 1;
                                    });
                                  },
                                ),
                              ),
                            if (((FFAppState().selelctedHeaderIndex == 1) ||
                                    (_model.selectedMobileIndex == 1)) &&
                                loggedIn)
                              Container(
                                decoration: const BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.mobileHeaderSubItemModel2,
                                  updateCallback: () => setState(() {}),
                                  child: MobileHeaderSubItemWidget(
                                    isSeelcted:
                                        FFAppState().selelctedHeaderIndex == 1,
                                    subItemList:
                                        FFAppState().paymentSubitemList,
                                    onSelect: (item) async {
                                      FFAppState().update(() {
                                        FFAppState().selelctedHeaderIndex = 1;
                                        FFAppState().isFroYourSecurity = false;
                                        FFAppState().isFromTwoFacotrAuth =
                                            false;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            wrapWithModel(
                              model: _model.productsOptionModel,
                              updateCallback: () => setState(() {}),
                              child: HeaderOptionsMobileWidget(
                                isChecked:
                                    FFAppState().selelctedHeaderIndex == 2,
                                label: 'Products',
                                onSelect: () async {
                                  setState(() {
                                    _model.selectedMobileIndex = 2;
                                  });
                                },
                              ),
                            ),
                            if ((FFAppState().selelctedHeaderIndex == 2) ||
                                (_model.selectedMobileIndex == 2))
                              Container(
                                decoration: const BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.mobileHeaderSubItemModel3,
                                  updateCallback: () => setState(() {}),
                                  child: MobileHeaderSubItemWidget(
                                    isSeelcted:
                                        FFAppState().selelctedHeaderIndex == 2,
                                    subItemList:
                                        FFAppState().productsSubItemList,
                                    onSelect: (item) async {
                                      FFAppState().update(() {
                                        FFAppState().selelctedHeaderIndex = 2;
                                        FFAppState().isFroYourSecurity = false;
                                        FFAppState().isFromTwoFacotrAuth =
                                            false;
                                      });
                                      if (FFAppState().selectedSubHeaderItem ==
                                          'militaryStar') {
                                        context.pushNamed(
                                          'Static',
                                          queryParameters: {
                                            'pageName': serializeParam(
                                              item,
                                              ParamType.String,
                                            ),
                                            'title': serializeParam(
                                              'MILITARY STAR',
                                              ParamType.String,
                                            ),
                                            'id': serializeParam(
                                              2,
                                              ParamType.int,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      } else {
                                        context.pushNamed('ApplyNowPage');
                                      }
                                    },
                                  ),
                                ),
                              ),
                            wrapWithModel(
                              model: _model.promotionsOptionModel,
                              updateCallback: () => setState(() {}),
                              child: HeaderOptionsMobileWidget(
                                isChecked:
                                    FFAppState().selelctedHeaderIndex == 3,
                                label: 'Promotions',
                                onSelect: () async {
                                  setState(() {
                                    _model.selectedMobileIndex = 3;
                                  });
                                },
                              ),
                            ),
                            if ((FFAppState().selelctedHeaderIndex == 3) ||
                                (_model.selectedMobileIndex == 3))
                              Container(
                                decoration: const BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.mobileHeaderSubItemModel4,
                                  updateCallback: () => setState(() {}),
                                  child: MobileHeaderSubItemWidget(
                                    isSeelcted:
                                        FFAppState().selelctedHeaderIndex == 3,
                                    subItemList:
                                        FFAppState().promotionsSubItemList,
                                    onSelect: (item) async {
                                      FFAppState().update(() {
                                        FFAppState().selelctedHeaderIndex = 3;
                                        FFAppState().isFroYourSecurity = false;
                                        FFAppState().isFromTwoFacotrAuth =
                                            false;
                                      });

                                      context.pushNamed(
                                        'PromotionPage',
                                        queryParameters: {
                                          'page': serializeParam(
                                            FFAppState().selectedSubHeaderItem,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: const TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            wrapWithModel(
                              model: _model.calculatorOptionModel,
                              updateCallback: () => setState(() {}),
                              child: HeaderOptionsMobileWidget(
                                isChecked:
                                    FFAppState().selelctedHeaderIndex == 4,
                                label: 'Calculator',
                                onSelect: () async {
                                  setState(() {
                                    _model.selectedMobileIndex = 4;
                                  });
                                  FFAppState().update(() {
                                    FFAppState().selelctedHeaderIndex = 4;
                                    FFAppState().isFroYourSecurity = false;
                                  });

                                  context.pushNamed(
                                    'calculator_default',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                              ),
                            ),
                            if (false)
                              Container(
                                decoration: const BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.mobileHeaderSubItemModel5,
                                  updateCallback: () => setState(() {}),
                                  child: MobileHeaderSubItemWidget(
                                    isSeelcted:
                                        FFAppState().selelctedHeaderIndex == 4,
                                    subItemList: FFAppState().emptyOptionList,
                                    onSelect: (item) async {
                                      FFAppState().update(() {
                                        FFAppState().selelctedHeaderIndex = 4;
                                        FFAppState().isFroYourSecurity = false;
                                        FFAppState().isFromTwoFacotrAuth =
                                            false;
                                      });

                                      context.pushNamed(
                                        'calculator_default',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: const TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            wrapWithModel(
                              model: _model.aboutMyECPOptionModel,
                              updateCallback: () => setState(() {}),
                              child: HeaderOptionsMobileWidget(
                                isChecked:
                                    FFAppState().selelctedHeaderIndex == 5,
                                label: 'About MyECP',
                                onSelect: () async {
                                  setState(() {
                                    _model.selectedMobileIndex = 5;
                                  });
                                },
                              ),
                            ),
                            if ((FFAppState().selelctedHeaderIndex == 5) ||
                                (_model.selectedMobileIndex == 5))
                              Container(
                                decoration: const BoxDecoration(),
                                child: Visibility(
                                  visible: (FFAppState().selelctedHeaderIndex ==
                                          5) ||
                                      (_model.selectedMobileIndex == 5),
                                  child: wrapWithModel(
                                    model: _model.mobileHeaderSubItemModel6,
                                    updateCallback: () => setState(() {}),
                                    child: MobileHeaderSubItemWidget(
                                      isSeelcted:
                                          FFAppState().selelctedHeaderIndex ==
                                              5,
                                      subItemList:
                                          FFAppState().aboutMyEcpSubItemList,
                                      onSelect: (item) async {
                                        FFAppState().update(() {
                                          FFAppState().selelctedHeaderIndex = 5;
                                          FFAppState().isPasswordValid = false;
                                          FFAppState().isFroYourSecurity =
                                              false;
                                          FFAppState().isFromTwoFacotrAuth =
                                              false;
                                        });

                                        context.pushNamed(
                                          'Static',
                                          queryParameters: {
                                            'pageName': serializeParam(
                                              FFAppState()
                                                  .selectedSubHeaderItem,
                                              ParamType.String,
                                            ),
                                            'title': serializeParam(
                                              FFAppState()
                                                  .aboutMyEcpSubItemList
                                                  .where((e) =>
                                                      e.value ==
                                                      FFAppState()
                                                          .selectedSubHeaderItem)
                                                  .toList()
                                                  .first
                                                  .label,
                                              ParamType.String,
                                            ),
                                            'id': serializeParam(
                                              5,
                                              ParamType.int,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            wrapWithModel(
                              model: _model.contactUsOptionModel,
                              updateCallback: () => setState(() {}),
                              child: HeaderOptionsMobileWidget(
                                isChecked:
                                    FFAppState().selelctedHeaderIndex == 6,
                                label: 'Contact Us',
                                onSelect: () async {
                                  setState(() {
                                    _model.selectedMobileIndex = 6;
                                  });
                                },
                              ),
                            ),
                            if ((FFAppState().selelctedHeaderIndex == 6) ||
                                (_model.selectedMobileIndex == 6))
                              Container(
                                decoration: const BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.mobileHeaderSubItemModel7,
                                  updateCallback: () => setState(() {}),
                                  child: MobileHeaderSubItemWidget(
                                    isSeelcted:
                                        FFAppState().selelctedHeaderIndex == 6,
                                    subItemList:
                                        FFAppState().contactUsSubItemList,
                                    onSelect: (item) async {
                                      FFAppState().update(() {
                                        FFAppState().selelctedHeaderIndex = 6;
                                        FFAppState().isFroYourSecurity = false;
                                        FFAppState().isFromTwoFacotrAuth =
                                            false;
                                      });
                                      if (FFAppState().selectedSubHeaderItem ==
                                          'Contact Us') {
                                        context.pushNamed(
                                          'ContactUsStatement',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      } else {
                                        if (FFAppState()
                                                .selectedSubHeaderItem ==
                                            'FAQs') {
                                          context.pushNamed(
                                            'ContactFAQ',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        }
                                      }
                                    },
                                  ),
                                ),
                              ),
                            wrapWithModel(
                              model: _model.loginlogoutOptionModel,
                              updateCallback: () => setState(() {}),
                              child: HeaderOptionsMobileWidget(
                                isChecked: widget.option == 'login',
                                label: loggedIn ? 'Log Out' : 'Log In',
                                onSelect: () async {
                                  var shouldSetState = false;
                                  if (loggedIn) {
                                    await action_blocks
                                        .showLoadingDialog(context);
                                    _model.logoutMobileRes =
                                        await AuthenticationGroup.logoutCall
                                            .call(
                                      authorization:
                                          'Bearer $currentAuthenticationToken',
                                      dynamicBaseURL:
                                          FFAppState().dynamicBaseURL,
                                    );
                                    shouldSetState = true;
                                    if ((_model.logoutMobileRes?.succeeded ??
                                        true)) {
                                      setState(() {});
                                    }
                                    GoRouter.of(context).prepareAuthEvent();
                                    await authManager.signOut();
                                    GoRouter.of(context)
                                        .clearRedirectLocation();

                                    FFAppState().update(() {
                                      FFAppState().userLoggedOut = true;
                                      FFAppState().isFroYourSecurity = false;
                                      FFAppState().selelctedHeaderIndex = -1;
                                      FFAppState().selectedSubHeaderItem = '';
                                      FFAppState().deleteLogin2FARes();
                                      FFAppState().login2FARes = Login2FAResStruct
                                          .fromSerializableMap(jsonDecode(
                                              '{\"UserId\":\"5414\",\"IsSecurityQuestionsNeeded\":\"false\",\"Is2FANeeded\":\"false\",\"IsTwoFAOtpIn\":\"false\"}'));

                                      FFAppState().isFromTwoFacotrAuth = false;
                                    });
                                    Navigator.pop(context);

                                    context.pushNamedAuth(
                                      'LoginPage',
                                      context.mounted,
                                      queryParameters: {
                                        'isFromLogout': serializeParam(
                                          true,
                                          ParamType.bool,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  } else {
                                    // Check if current page is login
                                    _model.loginPageValidationResultCopyCopy =
                                        await actions.isLoginPage(
                                      'myecp://myecp.com${GoRouterState.of(context).uri.toString()}',
                                    );
                                    shouldSetState = true;
                                    if (_model
                                        .loginPageValidationResultCopyCopy!) {
                                      setState(() {
                                        _model.drawerOpen = false;
                                      });
                                      FFAppState().update(() {
                                        FFAppState().isFroYourSecurity = false;
                                        FFAppState().isFromTwoFacotrAuth =
                                            false;
                                      });
                                    } else {
                                      FFAppState().update(() {
                                        FFAppState().selectedSubHeaderItem = '';
                                        FFAppState().selelctedHeaderIndex = -1;
                                        FFAppState().isFromTwoFacotrAuth =
                                            false;
                                      });

                                      context.pushNamedAuth(
                                          'LoginPage', context.mounted);

                                      setState(() {
                                        _model.drawerOpen = !_model.drawerOpen;
                                      });
                                    }

                                    if (shouldSetState) setState(() {});
                                    return;
                                  }

                                  if (shouldSetState) setState(() {});
                                },
                              ),
                            ),
                          ]
                              .divide(const SizedBox(height: 18.0))
                              .around(const SizedBox(height: 18.0)),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          tabletLandscape: false,
        ))
          Container(
            width: double.infinity,
            height: 70.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 3.0,
                  color: Color(0x7F000000),
                  offset: Offset(
                    0.0,
                    1.0,
                  ),
                  spreadRadius: 1.0,
                )
              ],
            ),
            child: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: FFAppConstants.maxScreenWidth,
                decoration: const BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            var shouldSetState = false;
                            if (loggedIn) {
                              _model.accountDashValidationResult =
                                  await actions.isAccountDashboardPage(
                                'myecp://myecp.com${GoRouterState.of(context).uri.toString()}',
                              );
                              shouldSetState = true;
                              if (_model.accountDashValidationResult!) {
                                FFAppState().update(() {
                                  FFAppState().selelctedHeaderIndex = -1;
                                  FFAppState().deleteSelectedSubHeaderItem();
                                  FFAppState().selectedSubHeaderItem = '';

                                  FFAppState().isFroYourSecurity = false;
                                  FFAppState().isFromTwoFacotrAuth = false;
                                });

                                context.pushNamed(
                                  'LoginPage',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              } else {
                                FFAppState().update(() {
                                  FFAppState().selelctedHeaderIndex = -1;
                                  FFAppState().deleteSelectedSubHeaderItem();
                                  FFAppState().selectedSubHeaderItem = '';

                                  FFAppState().isFroYourSecurity = false;
                                  FFAppState().isFromTwoFacotrAuth = false;
                                });

                                context.pushNamed(
                                  'AccountDashboard',
                                  queryParameters: {
                                    'isFromLogout': serializeParam(
                                      false,
                                      ParamType.bool,
                                    ),
                                  }.withoutNulls,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              }

                              if (shouldSetState) setState(() {});
                              return;
                            } else {
                              _model.isLoginPageResult =
                                  await actions.isLoginPage(
                                'myecp://myecp.com${GoRouterState.of(context).uri.toString()}',
                              );
                              shouldSetState = true;
                              if (_model.isLoginPageResult!) {
                                FFAppState().update(() {
                                  FFAppState().isFroYourSecurity = false;
                                  FFAppState().isFromTwoFacotrAuth = false;
                                });

                                context.pushNamed(
                                  'LoginPage',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              } else {
                                FFAppState().update(() {
                                  FFAppState().selelctedHeaderIndex = -1;
                                  FFAppState().deleteSelectedSubHeaderItem();
                                  FFAppState().selectedSubHeaderItem = '';

                                  FFAppState().isFroYourSecurity = false;
                                  FFAppState().isFromTwoFacotrAuth = false;
                                });

                                context.pushNamed(
                                  'LoginPage',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );

                                if (shouldSetState) setState(() {});
                                return;
                              }
                            }

                            if (shouldSetState) setState(() {});
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.asset(
                              'assets/images/military_star_logo.png',
                              height: 35.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        if (loggedIn)
                          Container(
                            decoration: const BoxDecoration(),
                            child: custom_widgets.CustomMenuSelector(
                              width: 20.0,
                              height: 20.0,
                              hintText: 'My Account',
                              isSelected:
                                  FFAppState().selelctedHeaderIndex == 0,
                              listData: FFAppState().myAccountSubitemList,
                              onMenuStateCallBack: (isOpen) async {},
                              onChange: (text) async {
                                FFAppState().update(() {
                                  FFAppState().selelctedHeaderIndex = 0;
                                  FFAppState().isFromTwoFacotrAuth = false;
                                  FFAppState().isFroYourSecurity = false;
                                });
                                if (FFAppState().selectedSubHeaderItem ==
                                    'My Profile') {
                                  FFAppState().update(() {
                                    FFAppState().selectedMCDrawerIndex = 0;
                                    FFAppState().isFromTwoFacotrAuth = false;
                                  });

                                  context.pushNamed(
                                    'ManageContactDetails',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                } else {
                                  context.pushNamed(
                                    'HomeDashboard',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                }
                              },
                            ),
                          ),
                        if (loggedIn)
                          Container(
                            decoration: const BoxDecoration(),
                            child: custom_widgets.CustomMenuSelector(
                              width: 20.0,
                              height: 20.0,
                              hintText: 'Payments',
                              isSelected:
                                  FFAppState().selelctedHeaderIndex == 1,
                              listData: FFAppState().paymentSubitemList,
                              onMenuStateCallBack: (isOpen) async {},
                              onChange: (text) async {
                                FFAppState().update(() {
                                  FFAppState().selectedSubHeaderItem = text!;
                                  FFAppState().selelctedHeaderIndex = 1;
                                  FFAppState().isFroYourSecurity = false;
                                  FFAppState().isFromTwoFacotrAuth = false;
                                });
                                if (FFAppState().selectedSubHeaderItem ==
                                    'Auto Payment') {
                                  context.pushNamed('payment_manage_autopay');
                                } else {
                                  context.pushNamed('payment_otp');
                                }
                              },
                            ),
                          ),
                        Container(
                          decoration: const BoxDecoration(),
                          child: custom_widgets.CustomMenuSelector(
                            width: 20.0,
                            height: 20.0,
                            hintText: 'Products',
                            isSelected: FFAppState().selelctedHeaderIndex == 2,
                            listData: FFAppState().productsSubItemList,
                            onMenuStateCallBack: (isOpen) async {},
                            onChange: (text) async {
                              FFAppState().update(() {
                                FFAppState().selectedSubHeaderItem = text!;
                                FFAppState().selelctedHeaderIndex = 2;
                                FFAppState().isFroYourSecurity = false;
                                FFAppState().isFromTwoFacotrAuth = false;
                              });
                              if (FFAppState().selectedSubHeaderItem ==
                                  'militaryStar') {
                                context.pushNamed(
                                  'Static',
                                  queryParameters: {
                                    'pageName': serializeParam(
                                      text,
                                      ParamType.String,
                                    ),
                                    'title': serializeParam(
                                      'MILITARY STAR',
                                      ParamType.String,
                                    ),
                                    'id': serializeParam(
                                      2,
                                      ParamType.int,
                                    ),
                                  }.withoutNulls,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              } else {
                                context.pushNamed('ApplyNowPage');
                              }
                            },
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(),
                          child: custom_widgets.CustomMenuSelector(
                            width: 20.0,
                            height: 20.0,
                            hintText: 'Promotions',
                            isSelected: FFAppState().selelctedHeaderIndex == 3,
                            listData: FFAppState().promotionsSubItemList,
                            onMenuStateCallBack: (isOpen) async {},
                            onChange: (text) async {
                              FFAppState().update(() {
                                FFAppState().selectedSubHeaderItem = text!;
                                FFAppState().selelctedHeaderIndex = 3;
                                FFAppState().isFroYourSecurity = false;
                                FFAppState().isFromTwoFacotrAuth = false;
                              });

                              context.pushNamed(
                                'PromotionPage',
                                queryParameters: {
                                  'page': serializeParam(
                                    FFAppState().selectedSubHeaderItem,
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().update(() {
                              FFAppState().selectedSubHeaderItem = '';
                              FFAppState().selelctedHeaderIndex = 4;
                              FFAppState().isFroYourSecurity = false;
                              FFAppState().isFromTwoFacotrAuth = false;
                            });

                            context.pushNamed(
                              'calculator_default',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: const TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: custom_widgets.CustomMenuSelector(
                              width: 20.0,
                              height: 20.0,
                              hintText: 'Calculator',
                              isSelected:
                                  FFAppState().selelctedHeaderIndex == 4,
                              listData: FFAppState().emptyOptionList,
                              onMenuStateCallBack: (isOpen) async {},
                              onChange: (text) async {},
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(),
                          child: custom_widgets.CustomMenuSelector(
                            width: 20.0,
                            height: 20.0,
                            hintText: 'About MyECP',
                            isSelected: FFAppState().selelctedHeaderIndex == 5,
                            listData: FFAppState().aboutMyEcpSubItemList,
                            onMenuStateCallBack: (isOpen) async {},
                            onChange: (text) async {
                              FFAppState().update(() {
                                FFAppState().selectedSubHeaderItem = text!;
                                FFAppState().selelctedHeaderIndex = 5;
                                FFAppState().isFroYourSecurity = false;
                                FFAppState().isFromTwoFacotrAuth = false;
                              });

                              context.pushNamed(
                                'Static',
                                queryParameters: {
                                  'pageName': serializeParam(
                                    FFAppState().selectedSubHeaderItem,
                                    ParamType.String,
                                  ),
                                  'title': serializeParam(
                                    FFAppState()
                                        .aboutMyEcpSubItemList
                                        .where((e) =>
                                            e.value ==
                                            FFAppState().selectedSubHeaderItem)
                                        .toList()
                                        .first
                                        .label,
                                    ParamType.String,
                                  ),
                                  'id': serializeParam(
                                    5,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(),
                          child: custom_widgets.CustomMenuSelector(
                            width: 20.0,
                            height: 20.0,
                            hintText: 'Contact Us',
                            isSelected: FFAppState().selelctedHeaderIndex == 6,
                            listData: FFAppState().contactUsSubItemList,
                            onMenuStateCallBack: (isOpen) async {},
                            onChange: (text) async {
                              FFAppState().update(() {
                                FFAppState().selectedSubHeaderItem = text!;
                                FFAppState().selelctedHeaderIndex = 6;
                                FFAppState().isFroYourSecurity = false;
                                FFAppState().isFromTwoFacotrAuth = false;
                              });
                              if (FFAppState().selectedSubHeaderItem ==
                                  'Contact Us') {
                                context.pushNamed(
                                  'ContactUsStatement',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              } else {
                                if (FFAppState().selectedSubHeaderItem ==
                                    'FAQs') {
                                  context.pushNamed(
                                    'ContactFAQ',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                }
                              }
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 3.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              var shouldSetState = false;
                              if (loggedIn) {
                                await action_blocks.showLoadingDialog(context);
                                _model.logoutRes =
                                    await AuthenticationGroup.logoutCall.call(
                                  authorization:
                                      'Bearer $currentAuthenticationToken',
                                  dynamicBaseURL: FFAppState().dynamicBaseURL,
                                );
                                shouldSetState = true;
                                if ((_model.logoutRes?.succeeded ?? true)) {
                                  setState(() {});
                                }
                                GoRouter.of(context).prepareAuthEvent();
                                await authManager.signOut();
                                GoRouter.of(context).clearRedirectLocation();

                                FFAppState().update(() {
                                  FFAppState().userLoggedOut = true;
                                  FFAppState().isFroYourSecurity = false;
                                  FFAppState().selelctedHeaderIndex = -1;
                                  FFAppState().deleteLogin2FARes();
                                  FFAppState().login2FARes = Login2FAResStruct
                                      .fromSerializableMap(jsonDecode(
                                          '{\"UserId\":\"5414\",\"IsSecurityQuestionsNeeded\":\"false\",\"Is2FANeeded\":\"false\",\"IsTwoFAOtpIn\":\"false\"}'));

                                  FFAppState().isFromTwoFacotrAuth = false;
                                });
                                Navigator.pop(context);

                                context.pushNamedAuth(
                                  'LoginPage',
                                  context.mounted,
                                  queryParameters: {
                                    'isFromLogout': serializeParam(
                                      true,
                                      ParamType.bool,
                                    ),
                                  }.withoutNulls,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              } else {
                                // Check if current page is login
                                _model.isLoginPage = await actions.isLoginPage(
                                  'myecp://myecp.com${GoRouterState.of(context).uri.toString()}',
                                );
                                shouldSetState = true;
                                if (_model.isLoginPage!) {
                                  FFAppState().update(() {
                                    FFAppState().isFroYourSecurity = false;
                                    FFAppState().isFromTwoFacotrAuth = false;
                                  });

                                  context.pushNamedAuth(
                                    'LoginPage',
                                    context.mounted,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                } else {
                                  FFAppState().update(() {
                                    FFAppState().selectedSubHeaderItem = '';
                                    FFAppState().selelctedHeaderIndex = -1;
                                    FFAppState().isFromTwoFacotrAuth = false;
                                  });

                                  context.pushNamedAuth(
                                    'LoginPage',
                                    context.mounted,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                }

                                if (shouldSetState) setState(() {});
                                return;
                              }

                              if (shouldSetState) setState(() {});
                            },
                            child: Text(
                              loggedIn ? 'Log Out' : 'Log In',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Arial',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(width: 20.0)),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/our_honor_caption.png',
                        width: 127.0,
                        height: 37.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
