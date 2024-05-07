import '/backend/api_requests/api_calls.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/components/screen_height_estimator/screen_height_estimator_widget.dart';
import '/components/text_field_with_title/text_field_with_title_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'recover_pass_security_questions_page_model.dart';
export 'recover_pass_security_questions_page_model.dart';

class RecoverPassSecurityQuestionsPageWidget extends StatefulWidget {
  const RecoverPassSecurityQuestionsPageWidget({
    super.key,
    required this.apiResponseFromForgotPasswordPage,
  });

  final dynamic apiResponseFromForgotPasswordPage;

  @override
  State<RecoverPassSecurityQuestionsPageWidget> createState() =>
      _RecoverPassSecurityQuestionsPageWidgetState();
}

class _RecoverPassSecurityQuestionsPageWidgetState
    extends State<RecoverPassSecurityQuestionsPageWidget> {
  late RecoverPassSecurityQuestionsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => RecoverPassSecurityQuestionsPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
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
        title: 'RecoverPassSecurityQuestionsPage',
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
                      width: double.infinity,
                      height: double.infinity,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    constraints: BoxConstraints(
                                      minHeight:
                                          FFAppState().screenBodyHeightDesktop,
                                    ),
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
                                                            .fromSTEB(8.0, 8.0,
                                                                8.0, 8.0),
                                                    child: Text(
                                                      'For Your Security',
                                                      style: FlutterFlowTheme
                                                              .of(context)
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
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 16.0,
                                                          16.0, 0.0),
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .errorBannerOutlinedModel1,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child:
                                                        ErrorBannerOutlinedWidget(
                                                      message: _model.errorText,
                                                    ),
                                                  ),
                                                ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 10.0,
                                                          10.0, 10.0),
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
                                                            fontFamily: 'Arial',
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 0.0, 16.0),
                                                child: Text(
                                                  'To verify and protect your account, please answer your security questions.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Arial',
                                                        color: Colors.black,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
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
                                                        const EdgeInsets.all(24.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Expanded(
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .securityQuestion1Model,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            updateOnChange:
                                                                true,
                                                            child:
                                                                TextFieldWithTitleWidget(
                                                              textFieldLabel:
                                                                  '',
                                                              isRequiredField:
                                                                  true,
                                                              title:
                                                                  getJsonField(
                                                                widget
                                                                    .apiResponseFromForgotPasswordPage,
                                                                r'''$["Question1Text"]''',
                                                              ).toString(),
                                                              isDatePicker:
                                                                  false,
                                                              width: double
                                                                  .infinity,
                                                              textColour:
                                                                  Colors.black,
                                                              onChange:
                                                                  (value) async {
                                                                if ((_model.securityQuestion1Model.textController.text !=
                                                                            '') &&
                                                                    (_model.securityQuestion2Model.textController.text !=
                                                                            '')) {
                                                                  setState(() {
                                                                    _model.isBothAnsFilled =
                                                                        true;
                                                                  });
                                                                } else {
                                                                  setState(() {
                                                                    _model.isBothAnsFilled =
                                                                        false;
                                                                  });
                                                                }
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 0.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
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
                                                        const EdgeInsets.all(24.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Expanded(
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .securityQuestion2Model,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            updateOnChange:
                                                                true,
                                                            child:
                                                                TextFieldWithTitleWidget(
                                                              textFieldLabel:
                                                                  '',
                                                              isRequiredField:
                                                                  true,
                                                              title:
                                                                  getJsonField(
                                                                widget
                                                                    .apiResponseFromForgotPasswordPage,
                                                                r'''$["Question2Text"]''',
                                                              ).toString(),
                                                              isDatePicker:
                                                                  false,
                                                              width: double
                                                                  .infinity,
                                                              textColour:
                                                                  Colors.black,
                                                              onChange:
                                                                  (value) async {
                                                                if ((_model.securityQuestion1Model.textController.text !=
                                                                            '') &&
                                                                    (_model.securityQuestion2Model.textController.text !=
                                                                            '')) {
                                                                  setState(() {
                                                                    _model.isBothAnsFilled =
                                                                        true;
                                                                  });
                                                                } else {
                                                                  setState(() {
                                                                    _model.isBothAnsFilled =
                                                                        false;
                                                                  });
                                                                }
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 16.0),
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
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .commonCustomButtonModel1,
                                                        updateCallback: () =>
                                                            setState(() {}),
                                                        child:
                                                            CommonCustomButtonWidget(
                                                          titile:
                                                              'Reset Password',
                                                          isDisabled: !((_model
                                                                          .securityQuestion1Model
                                                                          .textController
                                                                          .text !=
                                                                      '') &&
                                                              (_model
                                                                          .securityQuestion2Model
                                                                          .textController
                                                                          .text !=
                                                                      '')),
                                                          isEditIconVisible:
                                                              false,
                                                          onTap: () async {
                                                            setState(() {
                                                              _model.isError =
                                                                  false;
                                                              _model.errorText =
                                                                  null;
                                                            });
                                                            unawaited(
                                                              () async {
                                                                await action_blocks
                                                                    .showLoadingDialog(
                                                                        context);
                                                              }(),
                                                            );
                                                            _model.responseSecurityQuestions =
                                                                await AuthenticationGroup
                                                                    .forgotPasswordQuesCall
                                                                    .call(
                                                              question1Id:
                                                                  getJsonField(
                                                                widget
                                                                    .apiResponseFromForgotPasswordPage,
                                                                r'''$['Question1Id']''',
                                                              ).toString(),
                                                              question2Text:
                                                                  getJsonField(
                                                                widget
                                                                    .apiResponseFromForgotPasswordPage,
                                                                r'''$['Question2Text']''',
                                                              ).toString(),
                                                              question1Text:
                                                                  getJsonField(
                                                                widget
                                                                    .apiResponseFromForgotPasswordPage,
                                                                r'''$['Question1Text']''',
                                                              ).toString(),
                                                              question2Id:
                                                                  getJsonField(
                                                                widget
                                                                    .apiResponseFromForgotPasswordPage,
                                                                r'''$['Question2Id']''',
                                                              ).toString(),
                                                              answer2: _model
                                                                  .securityQuestion2Model
                                                                  .textController
                                                                  .text,
                                                              answer1: _model
                                                                  .securityQuestion1Model
                                                                  .textController
                                                                  .text,
                                                              userName:
                                                                  FFAppState()
                                                                      .username,
                                                              dynamicBaseURL:
                                                                  FFAppState()
                                                                      .dynamicBaseURL,
                                                            );
                                                            unawaited(
                                                              () async {
                                                                Navigator.pop(
                                                                    context);
                                                              }(),
                                                            );
                                                            if ((_model
                                                                    .responseSecurityQuestions
                                                                    ?.succeeded ??
                                                                true)) {
                                                              context.pushNamed(
                                                                'SetNewPasswordPage',
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
                                                                  (_model.responseSecurityQuestions
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
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                    child: wrapWithModel(
                                      model: _model.footerModel1,
                                      updateCallback: () => setState(() {}),
                                      child: const FooterWidget(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: wrapWithModel(
                              model: _model.headerModel1,
                              updateCallback: () => setState(() {}),
                              child: const HeaderWidget(),
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
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height,
                      constraints: const BoxConstraints(
                        maxWidth: FFAppConstants.maxScreenWidth,
                      ),
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
                                padding: const EdgeInsets.all(16.0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 3.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
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
                                                  'For Your Security',
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
                                                      16.0, 16.0, 16.0, 0.0),
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
                                                    16.0, 0.0, 16.0, 16.0),
                                            child: Text(
                                              'To verify and protect your account, please answer your security questions.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Arial',
                                                        color: Colors.black,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
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
                                                padding: const EdgeInsets.all(24.0),
                                                child: wrapWithModel(
                                                  model: _model
                                                      .securityQuestion1MModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  updateOnChange: true,
                                                  child:
                                                      TextFieldWithTitleWidget(
                                                    textFieldLabel: '',
                                                    isRequiredField: true,
                                                    title: getJsonField(
                                                      widget
                                                          .apiResponseFromForgotPasswordPage,
                                                      r'''$["Question1Text"]''',
                                                    ).toString(),
                                                    isDatePicker: false,
                                                    width: double.infinity,
                                                    textColour: Colors.black,
                                                    onChange: (value) async {
                                                      if ((_model
                                                                      .securityQuestion1MModel
                                                                      .textController
                                                                      .text !=
                                                                  '') &&
                                                          (_model
                                                                      .securityQuestion2MModel
                                                                      .textController
                                                                      .text !=
                                                                  '')) {
                                                        setState(() {
                                                          _model.isBothAnsFilled =
                                                              true;
                                                        });
                                                      } else {
                                                        setState(() {
                                                          _model.isBothAnsFilled =
                                                              false;
                                                        });
                                                      }
                                                    },
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
                                                        .primaryBackground,
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
                                                padding: const EdgeInsets.all(24.0),
                                                child: wrapWithModel(
                                                  model: _model
                                                      .securityQuestion2MModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  updateOnChange: true,
                                                  child:
                                                      TextFieldWithTitleWidget(
                                                    textFieldLabel: '',
                                                    isRequiredField: true,
                                                    title: getJsonField(
                                                      widget
                                                          .apiResponseFromForgotPasswordPage,
                                                      r'''$["Question2Text"]''',
                                                    ).toString(),
                                                    isDatePicker: false,
                                                    width: double.infinity,
                                                    textColour: Colors.black,
                                                    onChange: (value) async {
                                                      if ((_model
                                                                      .securityQuestion1MModel
                                                                      .textController
                                                                      .text !=
                                                                  '') &&
                                                          (_model
                                                                      .securityQuestion2MModel
                                                                      .textController
                                                                      .text !=
                                                                  '')) {
                                                        setState(() {
                                                          _model.isBothAnsFilled =
                                                              true;
                                                        });
                                                      } else {
                                                        setState(() {
                                                          _model.isBothAnsFilled =
                                                              false;
                                                        });
                                                      }
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 16.0, 16.0, 16.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
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
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                0.0, 0.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .commonCustomButtonModel2,
                                                      updateCallback: () =>
                                                          setState(() {}),
                                                      child:
                                                          CommonCustomButtonWidget(
                                                        titile:
                                                            'Reset Password',
                                                        isDisabled: !((_model
                                                                        .securityQuestion1MModel
                                                                        .textController
                                                                        .text !=
                                                                    '') &&
                                                            (_model
                                                                        .securityQuestion2MModel
                                                                        .textController
                                                                        .text !=
                                                                    '')),
                                                        isEditIconVisible:
                                                            false,
                                                        onTap: () async {
                                                          setState(() {
                                                            _model.isError =
                                                                false;
                                                            _model.errorText =
                                                                null;
                                                          });
                                                          unawaited(
                                                            () async {
                                                              await action_blocks
                                                                  .showLoadingDialog(
                                                                      context);
                                                            }(),
                                                          );
                                                          _model.responseSecurityQuestionsM =
                                                              await AuthenticationGroup
                                                                  .forgotPasswordQuesCall
                                                                  .call(
                                                            question1Id:
                                                                getJsonField(
                                                              widget
                                                                  .apiResponseFromForgotPasswordPage,
                                                              r'''$['Question1Id']''',
                                                            ).toString(),
                                                            question2Text:
                                                                getJsonField(
                                                              widget
                                                                  .apiResponseFromForgotPasswordPage,
                                                              r'''$['Question2Text']''',
                                                            ).toString(),
                                                            question1Text:
                                                                getJsonField(
                                                              widget
                                                                  .apiResponseFromForgotPasswordPage,
                                                              r'''$['Question1Text']''',
                                                            ).toString(),
                                                            question2Id:
                                                                getJsonField(
                                                              widget
                                                                  .apiResponseFromForgotPasswordPage,
                                                              r'''$['Question2Id']''',
                                                            ).toString(),
                                                            answer2: _model
                                                                .securityQuestion2MModel
                                                                .textController
                                                                .text,
                                                            answer1: _model
                                                                .securityQuestion1MModel
                                                                .textController
                                                                .text,
                                                            userName:
                                                                FFAppState()
                                                                    .username,
                                                            dynamicBaseURL:
                                                                FFAppState()
                                                                    .dynamicBaseURL,
                                                          );
                                                          unawaited(
                                                            () async {
                                                              Navigator.pop(
                                                                  context);
                                                            }(),
                                                          );
                                                          if ((_model
                                                                  .responseSecurityQuestionsM
                                                                  ?.succeeded ??
                                                              true)) {
                                                            context.pushNamed(
                                                              'SetNewPasswordPage',
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
                                                                (_model.responseSecurityQuestionsM
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
                                                  ),
                                                ],
                                              ),
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
