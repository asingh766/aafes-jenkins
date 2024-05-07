import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/components/screen_height_estimator/screen_height_estimator_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'set_new_password_page_model.dart';
export 'set_new_password_page_model.dart';

class SetNewPasswordPageWidget extends StatefulWidget {
  const SetNewPasswordPageWidget({super.key});

  @override
  State<SetNewPasswordPageWidget> createState() =>
      _SetNewPasswordPageWidgetState();
}

class _SetNewPasswordPageWidgetState extends State<SetNewPasswordPageWidget> {
  late SetNewPasswordPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SetNewPasswordPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // Reset App State Data
      setState(() {
        FFAppState().password = '';
        FFAppState().confirmPassword = '';
        FFAppState().isPasswordValid = false;
        FFAppState().isConfirmPasswordValid = false;
      });
      // Caluclate Content Height
      setState(() {
        _model.bodyHeightMobile = functions
            .calculateMobileBodyHeight(MediaQuery.sizeOf(context).height);
        _model.bodyHeightDesktop = functions
            .calculateDesktopBodyHeight(MediaQuery.sizeOf(context).height);
      });
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
        title: 'SetNewPasswordPage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: const Color(0xFFE8E8E8),
            body: SafeArea(
              top: true,
              child: Stack(
                children: [
                  wrapWithModel(
                    model: _model.screenHeightEstimatorModel,
                    updateCallback: () => setState(() {}),
                    child: const ScreenHeightEstimatorWidget(),
                  ),
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
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 70.0, 0.0, 0.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    height: _model.bodyHeightDesktop,
                                    decoration: const BoxDecoration(),
                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 16.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 3.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Container(
                                          width: FFAppConstants.maxScreenWidth,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    1.0, 0.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  decoration: const BoxDecoration(
                                                    color: Color(0xFF0F2654),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(8.0),
                                                      topRight:
                                                          Radius.circular(8.0),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  8.0,
                                                                  8.0,
                                                                  8.0),
                                                      child: Text(
                                                        'Reset Password',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Arial',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const Divider(
                                                  height: 2.5,
                                                  thickness: 2.0,
                                                  color: Color(0xFF801B0E),
                                                ),
                                                if (_model.isError)
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 16.0,
                                                                8.0, 0.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .errorBannerOutlinedModel1,
                                                      updateCallback: () =>
                                                          setState(() {}),
                                                      child:
                                                          ErrorBannerOutlinedWidget(
                                                        message:
                                                            _model.errorText,
                                                      ),
                                                    ),
                                                  ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10.0,
                                                                10.0,
                                                                10.0,
                                                                10.0),
                                                    child: RichText(
                                                      textScaler:
                                                          MediaQuery.of(context)
                                                              .textScaler,
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text: '*',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Arial',
                                                                  color: const Color(
                                                                      0xFFEA3423),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                          const TextSpan(
                                                            text:
                                                                'Required Fields',
                                                            style: TextStyle(),
                                                          )
                                                        ],
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Arial',
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 16.0,
                                                          16.0, 0.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .white,
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          blurRadius: 4.0,
                                                          color:
                                                              Color(0x33000000),
                                                          offset: Offset(
                                                            0.0,
                                                            2.0,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  16.0,
                                                                  16.0,
                                                                  16.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Expanded(
                                                            flex: 1,
                                                            child: custom_widgets
                                                                .PasswordField(
                                                              width: 1.0,
                                                              height: 100.0,
                                                              matchWidth: false,
                                                              label:
                                                                  'New Password',
                                                              error: _model
                                                                  .errorPassword,
                                                              hasError: _model
                                                                  .hasErrorPassword,
                                                              alignment:
                                                                  PSIAlignment
                                                                      .right,
                                                              onFocusChange:
                                                                  () async {
                                                                await _model
                                                                    .validatePasswordFlow(
                                                                        context);
                                                                setState(() {});
                                                              },
                                                              onResetError:
                                                                  () async {
                                                                setState(() {
                                                                  _model.errorPassword =
                                                                      ' ';
                                                                  _model.hasErrorPassword =
                                                                      false;
                                                                });
                                                              },
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 1,
                                                            child: custom_widgets
                                                                .ConfirmPasswordField(
                                                              width: 1.0,
                                                              height: 100.0,
                                                              matchWidth: false,
                                                              label:
                                                                  'Confirm Password',
                                                              error: _model
                                                                  .errorConfirmPassword,
                                                              hasError: _model
                                                                  .hasConfirmErrorPassword,
                                                              alignment:
                                                                  PSIAlignment
                                                                      .right,
                                                              onFocusChange:
                                                                  () async {
                                                                await _model
                                                                    .validateConfirmPasswordFlow(
                                                                        context);
                                                                setState(() {});
                                                              },
                                                              onResetError:
                                                                  () async {
                                                                setState(() {
                                                                  _model.errorConfirmPassword =
                                                                      ' ';
                                                                  _model.hasConfirmErrorPassword =
                                                                      false;
                                                                });
                                                              },
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 10.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0.0, 16.0, 16.0,
                                                          16.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      wrapWithModel(
                                                        model: _model
                                                            .commonCancelButtonModel1,
                                                        updateCallback: () =>
                                                            setState(() {}),
                                                        child:
                                                            CommonCancelButtonWidget(
                                                          title: 'Cancel',
                                                          onTap: () async {
                                                            context.safePop();
                                                          },
                                                        ),
                                                      ),
                                                      wrapWithModel(
                                                        model: _model
                                                            .commonCustomButtonModel1,
                                                        updateCallback: () =>
                                                            setState(() {}),
                                                        child:
                                                            CommonCustomButtonWidget(
                                                          titile: 'Submit',
                                                          isDisabled: !((FFAppState()
                                                                          .password !=
                                                                      '') &&
                                                              (FFAppState()
                                                                          .confirmPassword !=
                                                                      '') &&
                                                              FFAppState()
                                                                  .isPasswordValid &&
                                                              FFAppState()
                                                                  .isConfirmPasswordValid &&
                                                              (FFAppState()
                                                                      .password ==
                                                                  FFAppState()
                                                                      .confirmPassword)),
                                                          isEditIconVisible:
                                                              false,
                                                          onTap: () async {
                                                            await action_blocks
                                                                .showLoadingDialog(
                                                                    context);
                                                            setState(() {
                                                              _model.isError =
                                                                  false;
                                                              _model.errorText =
                                                                  null;
                                                            });
                                                            _model.apiResponseResetPassworda =
                                                                await AuthenticationGroup
                                                                    .resetPasswordCall
                                                                    .call(
                                                              userName:
                                                                  FFAppState()
                                                                      .username,
                                                              newPassword:
                                                                  FFAppState()
                                                                      .password,
                                                              confirmPassword:
                                                                  FFAppState()
                                                                      .confirmPassword,
                                                              dynamicBaseURL:
                                                                  FFAppState()
                                                                      .dynamicBaseURL,
                                                            );
                                                            Navigator.pop(
                                                                context);
                                                            if ((_model
                                                                    .apiResponseResetPassworda
                                                                    ?.succeeded ??
                                                                true)) {
                                                              context.pushNamed(
                                                                'PasswordSuccessPage',
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
                                                                _model.isError =
                                                                    true;
                                                                _model.errorText =
                                                                    getJsonField(
                                                                  (_model.apiResponseResetPassworda
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                  r'''$.Message''',
                                                                ).toString();
                                                              });
                                                            }

                                                            setState(() {});
                                                          },
                                                        ),
                                                      ),
                                                    ].divide(
                                                        const SizedBox(width: 8.0)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.footerModel1,
                                    updateCallback: () => setState(() {}),
                                    child: const FooterWidget(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.headerModel1,
                            updateCallback: () => setState(() {}),
                            child: const HeaderWidget(),
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
                              child: const HeaderWidget(),
                            ),
                            Container(
                              constraints: BoxConstraints(
                                minHeight: FFAppState().screenBodyHeightMobile,
                              ),
                              decoration: const BoxDecoration(),
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 16.0, 16.0, 10.0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 3.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          1.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: const BoxDecoration(
                                              color: Color(0xFF0F2654),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(0.0),
                                                topLeft: Radius.circular(8.0),
                                                topRight: Radius.circular(8.0),
                                              ),
                                            ),
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 8.0, 8.0, 8.0),
                                                child: Text(
                                                  'Reset Password',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Arial',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Divider(
                                            height: 2.5,
                                            thickness: 2.0,
                                            color: Color(0xFF801B0E),
                                          ),
                                          if (_model.isError)
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      8.0, 16.0, 8.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .errorBannerOutlinedModel2,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child:
                                                    ErrorBannerOutlinedWidget(
                                                  message: _model.errorText,
                                                ),
                                              ),
                                            ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 10.0, 10.0, 10.0),
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: '*',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Arial',
                                                            color: const Color(
                                                                0xFFEA3423),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                    const TextSpan(
                                                      text: 'Required Fields',
                                                      style: TextStyle(),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Arial',
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 16.0, 16.0, 0.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .white,
                                                boxShadow: const [
                                                  BoxShadow(
                                                    blurRadius: 4.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(
                                                      0.0,
                                                      2.0,
                                                    ),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 16.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    custom_widgets
                                                        .PasswordField(
                                                      width: double.infinity,
                                                      height: 70.0,
                                                      matchWidth: true,
                                                      label: 'New Password',
                                                      error:
                                                          _model.errorPassword,
                                                      hasError: _model
                                                          .hasErrorPassword,
                                                      alignment:
                                                          PSIAlignment.bottom,
                                                      onFocusChange: () async {
                                                        await _model
                                                            .validatePasswordFlow(
                                                                context);
                                                      },
                                                      onResetError: () async {
                                                        setState(() {
                                                          _model.errorPassword =
                                                              ' ';
                                                          _model.hasErrorPassword =
                                                              false;
                                                        });
                                                      },
                                                    ),
                                                    custom_widgets
                                                        .ConfirmPasswordField(
                                                      width: double.infinity,
                                                      height: 70.0,
                                                      matchWidth: true,
                                                      label: 'Confirm Password',
                                                      error: _model
                                                          .errorConfirmPassword,
                                                      hasError: _model
                                                          .hasConfirmErrorPassword,
                                                      alignment:
                                                          PSIAlignment.bottom,
                                                      onFocusChange: () async {
                                                        await _model
                                                            .validateConfirmPasswordFlow(
                                                                context);
                                                        setState(() {});
                                                      },
                                                      onResetError: () async {
                                                        setState(() {
                                                          _model.errorConfirmPassword =
                                                              ' ';
                                                          _model.hasConfirmErrorPassword =
                                                              false;
                                                        });
                                                      },
                                                    ),
                                                  ].divide(
                                                      const SizedBox(height: 16.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 16.0, 16.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                wrapWithModel(
                                                  model: _model
                                                      .commonCancelButtonModel2,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child:
                                                      CommonCancelButtonWidget(
                                                    title: 'Cancel',
                                                    onTap: () async {
                                                      context.safePop();
                                                    },
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .commonCustomButtonModel2,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child:
                                                      CommonCustomButtonWidget(
                                                    titile: 'Submit',
                                                    isDisabled: !(((FFAppState()
                                                                        .password !=
                                                                    '') &&
                                                            (FFAppState()
                                                                        .confirmPassword !=
                                                                    '')) &&
                                                        (!_model.hasErrorPassword &&
                                                            !_model
                                                                .hasConfirmErrorPassword)),
                                                    isEditIconVisible: false,
                                                    onTap: () async {
                                                      await action_blocks
                                                          .showLoadingDialog(
                                                              context);
                                                      setState(() {
                                                        _model.isError = false;
                                                        _model.errorText = null;
                                                      });
                                                      _model.apiResponseMobile =
                                                          await AuthenticationGroup
                                                              .resetPasswordCall
                                                              .call(
                                                        userName: FFAppState()
                                                            .username,
                                                        newPassword:
                                                            FFAppState()
                                                                .password,
                                                        confirmPassword:
                                                            FFAppState()
                                                                .confirmPassword,
                                                        dynamicBaseURL:
                                                            FFAppState()
                                                                .dynamicBaseURL,
                                                      );
                                                      Navigator.pop(context);
                                                      if ((_model
                                                              .apiResponseMobile
                                                              ?.succeeded ??
                                                          true)) {
                                                        context.pushNamed(
                                                          'PasswordSuccessPage',
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
                                                          _model.isError = true;
                                                          _model.errorText =
                                                              getJsonField(
                                                            (_model.apiResponseMobile
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.Message''',
                                                          ).toString();
                                                        });
                                                      }

                                                      setState(() {});
                                                    },
                                                  ),
                                                ),
                                              ].divide(const SizedBox(width: 8.0)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: wrapWithModel(
                                model: _model.footerModel2,
                                updateCallback: () => setState(() {}),
                                child: const FooterWidget(),
                              ),
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
