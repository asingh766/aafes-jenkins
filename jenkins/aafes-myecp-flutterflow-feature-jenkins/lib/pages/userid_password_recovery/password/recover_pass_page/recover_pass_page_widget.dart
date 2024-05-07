import '/backend/api_requests/api_calls.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/userid_password_recovery/components/custom_outlined_text_field_captcha/custom_outlined_text_field_captcha_widget.dart';
import '/pages/userid_password_recovery/components/custom_outlined_text_field_d_o_b_r/custom_outlined_text_field_d_o_b_r_widget.dart';
import '/pages/userid_password_recovery/components/last_name_text_field/last_name_text_field_widget.dart';
import '/pages/userid_password_recovery/components/s_s_n_plain_text_field/s_s_n_plain_text_field_widget.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'recover_pass_page_model.dart';
export 'recover_pass_page_model.dart';

class RecoverPassPageWidget extends StatefulWidget {
  const RecoverPassPageWidget({super.key});

  @override
  State<RecoverPassPageWidget> createState() => _RecoverPassPageWidgetState();
}

class _RecoverPassPageWidgetState extends State<RecoverPassPageWidget>
    with TickerProviderStateMixin {
  late RecoverPassPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecoverPassPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await _model.actionAPI(context);
      setState(() {});
    });

    animationsMap.addAll({
      'columnOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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
        title: 'MyECP : Forgot Password',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
                      decoration: const BoxDecoration(),
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
                                          0.0, 16.0, 0.0, 0.0),
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
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
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
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(8.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Text(
                                                            key: const ValueKey(
                                                                'newRecoverPassPageForgetPasswordText_jnol'),
                                                            'Forgot Password?',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                const Divider(
                                                  height: 2.0,
                                                  thickness: 2.0,
                                                  color: Color(0xFF801B0E),
                                                ),
                                              ],
                                            ),
                                            if (_model.isError ?? true)
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
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
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  8.0),
                                                      child: RichText(
                                                        textScaler:
                                                            MediaQuery.of(
                                                                    context)
                                                                .textScaler,
                                                        key: const ValueKey(
                                                            'newRecoverPassPageRequiredFieldsID_jnol'),
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
                                                                  ' Required Fields',
                                                              style:
                                                                  TextStyle(),
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
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                5.0, 10.0),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 2.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 2.0,
                                                              color: Color(
                                                                  0x33000000),
                                                              offset: Offset(
                                                                1.0,
                                                                2.0,
                                                              ),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  22.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Flexible(
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                      child:
                                                                          wrapWithModel(
                                                                        model: _model
                                                                            .userIDTextFieldDModel,
                                                                        updateCallback:
                                                                            () =>
                                                                                setState(() {}),
                                                                        child:
                                                                            LastNameTextFieldWidget(
                                                                          enabled:
                                                                              true,
                                                                          title:
                                                                              'User ID',
                                                                          icon:
                                                                              const Icon(
                                                                            Icons.ten_k,
                                                                            color:
                                                                                Colors.transparent,
                                                                            size:
                                                                                22.0,
                                                                          ),
                                                                          hasIconAction:
                                                                              false,
                                                                          isRequired:
                                                                              true,
                                                                          infoMessage:
                                                                              '',
                                                                          errorMessage:
                                                                              _model.errorUserID,
                                                                          hasError:
                                                                              _model.hasErrorUserID,
                                                                          onIconTap:
                                                                              () async {},
                                                                          validate:
                                                                              () async {},
                                                                          resetError:
                                                                              () async {
                                                                            setState(() {
                                                                              _model.hasErrorUserID = false;
                                                                            });
                                                                          },
                                                                          onChange:
                                                                              (value) async {
                                                                            setState(() {
                                                                              _model.userIdValue = value;
                                                                            });
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                      child:
                                                                          Visibility(
                                                                        visible:
                                                                            MediaQuery.sizeOf(context).width >=
                                                                                kBreakpointLarge,
                                                                        child:
                                                                            wrapWithModel(
                                                                          model:
                                                                              _model.sSNPlainTextFieldModel,
                                                                          updateCallback: () =>
                                                                              setState(() {}),
                                                                          child:
                                                                              SSNPlainTextFieldWidget(
                                                                            enabled:
                                                                                true,
                                                                            title:
                                                                                'Last 5 digits of SSN',
                                                                            icon:
                                                                                const Icon(
                                                                              Icons.ten_k,
                                                                              color: Colors.transparent,
                                                                            ),
                                                                            hasIconAction:
                                                                                false,
                                                                            isRequired:
                                                                                true,
                                                                            infoMessage:
                                                                                '',
                                                                            errorMessage:
                                                                                _model.errorLast5DigitsSSN,
                                                                            hasError:
                                                                                _model.hasErrorLast5DigitsSSN,
                                                                            onIconTap:
                                                                                () async {},
                                                                            validate:
                                                                                () async {
                                                                              if (((_model.sSNPlainTextFieldModel.value!).length ?? 0) == 5) {
                                                                                setState(() {
                                                                                  _model.hasErrorLast5DigitsSSN = false;
                                                                                });
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.errorLast5DigitsSSN = 'SSN must contain 5 digits';
                                                                                  _model.hasErrorLast5DigitsSSN = true;
                                                                                });
                                                                              }
                                                                            },
                                                                            resetError:
                                                                                () async {
                                                                              setState(() {
                                                                                _model.hasErrorLast5DigitsSSN = false;
                                                                                _model.errorLast5DigitsSSN = ' ';
                                                                              });
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    width:
                                                                        10.0)),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                5.0, 10.0),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 2.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 2.0,
                                                              color: Color(
                                                                  0x33000000),
                                                              offset: Offset(
                                                                1.0,
                                                                2.0,
                                                              ),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  22.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Flexible(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .dOBTextFieldModel,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        CustomOutlinedTextFieldDOBRWidget(
                                                                      enabled:
                                                                          true,
                                                                      title:
                                                                          'Date of Birth',
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .calendar_today,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        size:
                                                                            22.0,
                                                                      ),
                                                                      hasIconAction:
                                                                          true,
                                                                      isRequired:
                                                                          true,
                                                                      infoMessage:
                                                                          'The date of birth you enter\nmust match our records.',
                                                                      errorMessage:
                                                                          _model
                                                                              .errorDOB,
                                                                      hasError:
                                                                          _model
                                                                              .hasErrorDOB,
                                                                      calendarHasFocus:
                                                                          _model
                                                                              .calendarHasFocus,
                                                                      isShowInfoIcon:
                                                                          false,
                                                                      titleColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryText,
                                                                      onIconTap:
                                                                          () async {
                                                                        setState(
                                                                            () {
                                                                          _model.errorDOB =
                                                                              ' ';
                                                                          _model.hasErrorDOB =
                                                                              false;
                                                                        });
                                                                      },
                                                                      validate:
                                                                          () async {
                                                                        if (functions.dateValidator(_model
                                                                            .dOBTextFieldModel
                                                                            .value!)) {
                                                                          setState(
                                                                              () {
                                                                            _model.errorText =
                                                                                '  ';
                                                                            _model.hasErrorDOB =
                                                                                false;
                                                                          });
                                                                        } else {
                                                                          setState(
                                                                              () {
                                                                            _model.errorDOB =
                                                                                'Please enter a valid DOB';
                                                                            _model.hasErrorDOB =
                                                                                true;
                                                                            _model.calendarHasFocus =
                                                                                true;
                                                                          });
                                                                        }
                                                                      },
                                                                      resetError:
                                                                          () async {
                                                                        setState(
                                                                            () {
                                                                          _model.errorDOB =
                                                                              ' ';
                                                                          _model.hasErrorDOB =
                                                                              false;
                                                                        });
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              if (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width >
                                                                  kBreakpointMedium)
                                                                Expanded(
                                                                  flex: 1,
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        60.0,
                                                                    decoration:
                                                                        const BoxDecoration(),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                5.0, 0.0),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 2.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 2.0,
                                                              color: Color(
                                                                  0x33000000),
                                                              offset: Offset(
                                                                1.0,
                                                                2.0,
                                                              ),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  22.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Flexible(
                                                                flex: 1,
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .customOutlinedTextFieldCaptchaDModel1,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        CustomOutlinedTextFieldCaptchaWidget(
                                                                      enabled:
                                                                          true,
                                                                      icon:
                                                                          const Icon(
                                                                        Icons
                                                                            .ten_k,
                                                                        color: Colors
                                                                            .transparent,
                                                                      ),
                                                                      hasIconAction:
                                                                          false,
                                                                      isRequired:
                                                                          false,
                                                                      infoMessage:
                                                                          '',
                                                                      hasError:
                                                                          _model
                                                                              .hasErrorCaptcha,
                                                                      captchaValue:
                                                                          _model
                                                                              .captchaValue,
                                                                      onIconTap:
                                                                          () async {},
                                                                      validate:
                                                                          () async {},
                                                                      resetError:
                                                                          () async {
                                                                        setState(
                                                                            () {
                                                                          _model.hasErrorCaptcha =
                                                                              false;
                                                                        });
                                                                      },
                                                                      refreshIconAction:
                                                                          () async {
                                                                        await _model
                                                                            .actionAPI(context);
                                                                        setState(
                                                                            () {});
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              if (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width >
                                                                  kBreakpointMedium)
                                                                Flexible(
                                                                  flex: 1,
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        60.0,
                                                                    decoration:
                                                                        const BoxDecoration(),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 10.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.safePop();
                                                          },
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .commonCancelButtonModel1,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                CommonCancelButtonWidget(
                                                              key: const ValueKey(
                                                                  'newRecoverPassPagePagecancel-button'),
                                                              title: 'Cancel',
                                                              onTap: () async {
                                                                context
                                                                    .safePop();
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                        wrapWithModel(
                                                          model: _model
                                                              .commonCustomButtonModel1,
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          child:
                                                              CommonCustomButtonWidget(
                                                            key: const ValueKey(
                                                                'newRecoverPassPagevalidate-button'),
                                                            titile: 'Validate',
                                                            isDisabled: !((_model
                                                                            .userIDTextFieldDModel
                                                                            .value !=
                                                                        null &&
                                                                    _model.userIDTextFieldDModel.value !=
                                                                        '') &&
                                                                !_model
                                                                    .hasErrorUserID &&
                                                                (_model.sSNPlainTextFieldModel
                                                                            .value !=
                                                                        null &&
                                                                    _model.sSNPlainTextFieldModel
                                                                            .value !=
                                                                        '') &&
                                                                !_model
                                                                    .hasErrorLast5DigitsSSN &&
                                                                (_model.dOBTextFieldModel
                                                                            .value !=
                                                                        null &&
                                                                    _model.dOBTextFieldModel
                                                                            .value !=
                                                                        '') &&
                                                                !_model
                                                                    .hasErrorDOB &&
                                                                (_model.customOutlinedTextFieldCaptchaDModel1
                                                                            .value !=
                                                                        null &&
                                                                    _model.customOutlinedTextFieldCaptchaDModel1
                                                                            .value !=
                                                                        '') &&
                                                                !_model
                                                                    .hasErrorCaptcha),
                                                            isEditIconVisible:
                                                                false,
                                                            onTap: () async {
                                                              var shouldSetState =
                                                                  false;
                                                              setState(() {
                                                                _model.isError =
                                                                    false;
                                                                _model.errorText =
                                                                    '  ';
                                                                _model.hasErrorDOB =
                                                                    false;
                                                                _model.hasErrorUserID =
                                                                    false;
                                                                _model.hasErrorCaptcha =
                                                                    false;
                                                                _model.hasErrorLast5DigitsSSN =
                                                                    false;
                                                              });
                                                              if ((((_model.customOutlinedTextFieldCaptchaDModel1.value!)
                                                                              .length ??
                                                                          0) ==
                                                                      6) &&
                                                                  ((_model.customOutlinedTextFieldCaptchaDModel1
                                                                          .value!) ==
                                                                      _model
                                                                          .captchaValue)) {
                                                                unawaited(
                                                                  () async {
                                                                    await action_blocks
                                                                        .showLoadingDialog(
                                                                            context);
                                                                  }(),
                                                                );
                                                                _model.forgetpassApiRes =
                                                                    await AuthenticationGroup
                                                                        .forgotPasswordCall
                                                                        .call(
                                                                  userName: _model
                                                                      .userIDTextFieldDModel
                                                                      .value,
                                                                  sSNLast5: _model
                                                                      .sSNPlainTextFieldModel
                                                                      .value,
                                                                  dOBDay: (String
                                                                      enteredDOB) {
                                                                    return enteredDOB
                                                                        .split(
                                                                            '/')[1];
                                                                  }(_model
                                                                      .dOBTextFieldModel
                                                                      .value!),
                                                                  dOBMonth: (String
                                                                      enteredDOB) {
                                                                    return enteredDOB
                                                                        .split(
                                                                            '/')[0];
                                                                  }(_model
                                                                      .dOBTextFieldModel
                                                                      .value!),
                                                                  dOBYear: (String
                                                                      enteredDOB) {
                                                                    return enteredDOB
                                                                        .split(
                                                                            '/')[2];
                                                                  }(_model
                                                                      .dOBTextFieldModel
                                                                      .value!),
                                                                  dynamicBaseURL:
                                                                      FFAppState()
                                                                          .dynamicBaseURL,
                                                                );
                                                                shouldSetState =
                                                                    true;
                                                                if ((_model
                                                                        .forgetpassApiRes
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  if ((_model.forgetpassApiRes
                                                                              ?.statusCode ??
                                                                          200) !=
                                                                      FFAppState()
                                                                          .successStatusCode) {
                                                                    setState(
                                                                        () {
                                                                      _model.isError =
                                                                          true;
                                                                      _model.errorText =
                                                                          'The information you entered does not match our records. Please try again. For additional assistance, please contact customer service 24/7 at 1-877-891-7827.';
                                                                      _model.hasErrorDOB =
                                                                          true;
                                                                      _model.hasErrorUserID =
                                                                          true;
                                                                      _model.hasErrorLast5DigitsSSN =
                                                                          true;
                                                                    });
                                                                    Navigator.pop(
                                                                        context);
                                                                  } else {
                                                                    setState(
                                                                        () {
                                                                      _model.isError =
                                                                          true;
                                                                      _model.errorText =
                                                                          'The information you entered does not match our records. Please try again. For additional assistance, please contact customer service 24/7 at 1-877-891-7827.';
                                                                      _model.hasErrorDOB =
                                                                          true;
                                                                      _model.hasErrorUserID =
                                                                          true;
                                                                      _model.hasErrorLast5DigitsSSN =
                                                                          true;
                                                                    });
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .username =
                                                                          _model
                                                                              .userIDTextFieldDModel
                                                                              .value!;
                                                                    });
                                                                    Navigator.pop(
                                                                        context);

                                                                    context
                                                                        .pushNamed(
                                                                      'RecoverPassSecurityQuestionsPage',
                                                                      queryParameters:
                                                                          {
                                                                        'apiResponseFromForgotPasswordPage':
                                                                            serializeParam(
                                                                          (_model.forgetpassApiRes?.jsonBody ??
                                                                              ''),
                                                                          ParamType
                                                                              .JSON,
                                                                        ),
                                                                      }.withoutNulls,
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        kTransitionInfoKey:
                                                                            const TransitionInfo(
                                                                          hasTransition:
                                                                              true,
                                                                          transitionType:
                                                                              PageTransitionType.fade,
                                                                          duration:
                                                                              Duration(milliseconds: 0),
                                                                        ),
                                                                      },
                                                                    );
                                                                  }
                                                                } else {
                                                                  setState(() {
                                                                    _model.isError =
                                                                        true;
                                                                    _model.errorText =
                                                                        'The information you entered does not match our records. Please try again. For additional assistance, please contact customer service 24/7 at 1-877-891-7827.';
                                                                    _model.hasErrorDOB =
                                                                        true;
                                                                    _model.hasErrorUserID =
                                                                        true;
                                                                    _model.hasErrorLast5DigitsSSN =
                                                                        true;
                                                                  });
                                                                  Navigator.pop(
                                                                      context);
                                                                }

                                                                if (shouldSetState) {
                                                                  setState(
                                                                      () {});
                                                                }
                                                                return;
                                                              } else {
                                                                setState(() {
                                                                  _model.hasErrorCaptcha =
                                                                      true;
                                                                  _model.isError =
                                                                      true;
                                                                  _model.errorText =
                                                                      'Please enter verification code shown below.';
                                                                });
                                                                if (shouldSetState) {
                                                                  setState(
                                                                      () {});
                                                                }
                                                                return;
                                                              }

                                                              if (shouldSetState) {
                                                                setState(() {});
                                                              }
                                                            },
                                                          ),
                                                        ),
                                                      ].divide(
                                                          const SizedBox(width: 8.0)),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(height: 8.0)),
                                              ).animateOnPageLoad(animationsMap[
                                                  'columnOnPageLoadAnimation1']!),
                                            ),
                                          ].divide(const SizedBox(height: 16.0)),
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
                      decoration: const BoxDecoration(),
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
                                    16.0, 16.0, 16.0, 16.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
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
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Text(
                                                      key: const ValueKey(
                                                          'newRecoverPassPageForgetPasswordText_jnol'),
                                                      'Forgot Password?',
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
                                                ],
                                              ),
                                            ),
                                          ),
                                          const Divider(
                                            height: 2.0,
                                            thickness: 2.0,
                                            color: Color(0xFF801B0E),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 8.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (_model.isError ?? true)
                                              wrapWithModel(
                                                model: _model
                                                    .errorBannerOutlinedModel2,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child:
                                                    ErrorBannerOutlinedWidget(
                                                  message: _model.errorText,
                                                ),
                                              ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 8.0, 0.0, 8.0),
                                                child: RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  key: const ValueKey(
                                                      'newRecoverPassPageRequiredFieldsID_jnol'),
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: '*',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                            ' Required Fields',
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
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      5.0, 0.0, 5.0, 10.0),
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 2.0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        blurRadius: 2.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(
                                                          1.0,
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
                                                        const EdgeInsets.all(22.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        wrapWithModel(
                                                          model: _model
                                                              .userIDTextFieldMModel,
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          child:
                                                              LastNameTextFieldWidget(
                                                            enabled: true,
                                                            title: 'User ID',
                                                            icon: const Icon(
                                                              Icons.ten_k,
                                                              color: Colors
                                                                  .transparent,
                                                              size: 22.0,
                                                            ),
                                                            hasIconAction:
                                                                false,
                                                            isRequired: true,
                                                            infoMessage: '',
                                                            errorMessage: _model
                                                                .errorUserID,
                                                            hasError: _model
                                                                .hasErrorUserID,
                                                            onIconTap:
                                                                () async {},
                                                            validate:
                                                                () async {},
                                                            resetError:
                                                                () async {
                                                              setState(() {
                                                                _model.hasErrorUserID =
                                                                    false;
                                                              });
                                                            },
                                                            onChange:
                                                                (value) async {
                                                              setState(() {
                                                                _model.userIdValue =
                                                                    value;
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                        wrapWithModel(
                                                          model: _model
                                                              .sSNPlainTextFieldMModel,
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          child:
                                                              SSNPlainTextFieldWidget(
                                                            enabled: true,
                                                            title:
                                                                'Last 5 digits of SSN',
                                                            icon: const Icon(
                                                              Icons.ten_k,
                                                              color: Colors
                                                                  .transparent,
                                                            ),
                                                            hasIconAction:
                                                                false,
                                                            isRequired: true,
                                                            infoMessage: '',
                                                            errorMessage: _model
                                                                .errorLast5DigitsSSN,
                                                            hasError: _model
                                                                .hasErrorLast5DigitsSSN,
                                                            onIconTap:
                                                                () async {},
                                                            validate: () async {
                                                              if (((_model.sSNPlainTextFieldMModel
                                                                              .value!)
                                                                          .length ??
                                                                      0) ==
                                                                  5) {
                                                                setState(() {
                                                                  _model.hasErrorLast5DigitsSSN =
                                                                      false;
                                                                });
                                                              } else {
                                                                setState(() {
                                                                  _model.errorLast5DigitsSSN =
                                                                      'SSN must contain 5 digits';
                                                                  _model.hasErrorLast5DigitsSSN =
                                                                      true;
                                                                });
                                                              }
                                                            },
                                                            resetError:
                                                                () async {
                                                              setState(() {
                                                                _model.hasErrorLast5DigitsSSN =
                                                                    false;
                                                                _model.errorLast5DigitsSSN =
                                                                    ' ';
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      5.0, 0.0, 5.0, 10.0),
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 2.0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        blurRadius: 2.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(
                                                          1.0,
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
                                                        const EdgeInsets.all(22.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Flexible(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .dOBTextFieldMModel,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  CustomOutlinedTextFieldDOBRWidget(
                                                                enabled: true,
                                                                title:
                                                                    'Date of Birth',
                                                                icon: Icon(
                                                                  Icons
                                                                      .calendar_today,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  size: 22.0,
                                                                ),
                                                                hasIconAction:
                                                                    true,
                                                                isRequired:
                                                                    true,
                                                                infoMessage:
                                                                    'The date of birth you enter\nmust match our records.',
                                                                errorMessage:
                                                                    _model
                                                                        .errorDOB,
                                                                hasError: _model
                                                                    .hasErrorDOB,
                                                                calendarHasFocus:
                                                                    _model
                                                                        .calendarHasFocus,
                                                                isShowInfoIcon:
                                                                    false,
                                                                titleColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                onIconTap:
                                                                    () async {
                                                                  setState(() {
                                                                    _model.errorDOB =
                                                                        ' ';
                                                                    _model.hasErrorDOB =
                                                                        false;
                                                                  });
                                                                },
                                                                validate:
                                                                    () async {
                                                                  if (functions
                                                                      .dateValidator(_model
                                                                          .dOBTextFieldMModel
                                                                          .value!)) {
                                                                    setState(
                                                                        () {
                                                                      _model.hasErrorDOB =
                                                                          false;
                                                                    });
                                                                  } else {
                                                                    setState(
                                                                        () {
                                                                      _model.errorDOB =
                                                                          'Please enter a valid DOB';
                                                                      _model.hasErrorDOB =
                                                                          true;
                                                                      _model.calendarHasFocus =
                                                                          true;
                                                                    });
                                                                  }
                                                                },
                                                                resetError:
                                                                    () async {
                                                                  setState(() {
                                                                    _model.errorDOB =
                                                                        ' ';
                                                                    _model.hasErrorDOB =
                                                                        false;
                                                                  });
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 5.0, 0.0),
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 2.0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        blurRadius: 2.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(
                                                          1.0,
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
                                                        const EdgeInsets.all(22.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Flexible(
                                                          flex: 1,
                                                          child: Container(
                                                            decoration:
                                                                const BoxDecoration(),
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .customOutlinedTextFieldCaptchaDModel2,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  CustomOutlinedTextFieldCaptchaWidget(
                                                                enabled: true,
                                                                icon: const Icon(
                                                                  Icons.ten_k,
                                                                  color: Colors
                                                                      .transparent,
                                                                ),
                                                                hasIconAction:
                                                                    false,
                                                                isRequired:
                                                                    false,
                                                                infoMessage: '',
                                                                hasError: _model
                                                                    .hasErrorCaptcha,
                                                                captchaValue: _model
                                                                    .captchaValue,
                                                                onIconTap:
                                                                    () async {},
                                                                validate:
                                                                    () async {},
                                                                resetError:
                                                                    () async {
                                                                  setState(() {
                                                                    _model.hasErrorCaptcha =
                                                                        false;
                                                                  });
                                                                },
                                                                refreshIconAction:
                                                                    () async {
                                                                  await _model
                                                                      .actionAPI(
                                                                          context);
                                                                  setState(
                                                                      () {});
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 10.0),
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
                                                      key: const ValueKey(
                                                          'newRecoverPassPagePagecancel-button'),
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
                                                      key: const ValueKey(
                                                          'newRecoverPassPagevalidate-button'),
                                                      titile: 'Validate',
                                                      isDisabled: !((_model
                                                                      .userIDTextFieldMModel
                                                                      .value !=
                                                                  null &&
                                                              _model.userIDTextFieldMModel.value !=
                                                                  '') &&
                                                          !_model
                                                              .hasErrorUserID &&
                                                          (_model.sSNPlainTextFieldMModel.value != null &&
                                                              _model.sSNPlainTextFieldMModel
                                                                      .value !=
                                                                  '') &&
                                                          !_model
                                                              .hasErrorLast5DigitsSSN &&
                                                          (_model.dOBTextFieldMModel
                                                                      .value !=
                                                                  null &&
                                                              _model.dOBTextFieldMModel
                                                                      .value !=
                                                                  '') &&
                                                          !_model.hasErrorDOB &&
                                                          (_model.customOutlinedTextFieldCaptchaDModel2
                                                                      .value !=
                                                                  null &&
                                                              _model.customOutlinedTextFieldCaptchaDModel2
                                                                      .value !=
                                                                  '') &&
                                                          !_model
                                                              .hasErrorCaptcha),
                                                      isEditIconVisible: false,
                                                      onTap: () async {
                                                        var shouldSetState =
                                                            false;
                                                        if ((((_model.customOutlinedTextFieldCaptchaDModel2
                                                                            .value!)
                                                                        .length ??
                                                                    0) ==
                                                                6) &&
                                                            ((_model.customOutlinedTextFieldCaptchaDModel2
                                                                    .value!) ==
                                                                _model
                                                                    .captchaValue)) {
                                                          unawaited(
                                                            () async {
                                                              await action_blocks
                                                                  .showLoadingDialog(
                                                                      context);
                                                            }(),
                                                          );
                                                          _model.fromForgotPassM =
                                                              await AuthenticationGroup
                                                                  .forgotPasswordCall
                                                                  .call(
                                                            userName: _model
                                                                .userIDTextFieldMModel
                                                                .value,
                                                            sSNLast5: _model
                                                                .sSNPlainTextFieldMModel
                                                                .value,
                                                            dOBDay: (String
                                                                enteredDOB) {
                                                              return enteredDOB
                                                                  .split(
                                                                      '/')[1];
                                                            }(_model
                                                                .dOBTextFieldMModel
                                                                .value!),
                                                            dOBMonth: (String
                                                                enteredDOB) {
                                                              return enteredDOB
                                                                  .split(
                                                                      '/')[0];
                                                            }(_model
                                                                .dOBTextFieldMModel
                                                                .value!),
                                                            dOBYear: (String
                                                                enteredDOB) {
                                                              return enteredDOB
                                                                  .split(
                                                                      '/')[2];
                                                            }(_model
                                                                .dOBTextFieldMModel
                                                                .value!),
                                                            dynamicBaseURL:
                                                                FFAppState()
                                                                    .dynamicBaseURL,
                                                          );
                                                          shouldSetState =
                                                              true;
                                                          if ((_model
                                                                  .fromForgotPassM
                                                                  ?.succeeded ??
                                                              true)) {
                                                            if ((_model.fromForgotPassM
                                                                        ?.statusCode ??
                                                                    200) !=
                                                                FFAppState()
                                                                    .successStatusCode) {
                                                              setState(() {
                                                                _model.isError =
                                                                    true;
                                                                _model.errorText =
                                                                    'The information you entered does not match our records. Please try again. For additional assistance, please contact customer service 24/7 at 1-877-891-7827.';
                                                                _model.hasErrorDOB =
                                                                    true;
                                                                _model.hasErrorUserID =
                                                                    true;
                                                                _model.hasErrorLast5DigitsSSN =
                                                                    true;
                                                              });
                                                              Navigator.pop(
                                                                  context);
                                                            } else {
                                                              setState(() {
                                                                _model.isError =
                                                                    true;
                                                                _model.errorText =
                                                                    'The information you entered does not match our records. Please try again. For additional assistance, please contact customer service 24/7 at 1-877-891-7827.';
                                                              });
                                                              setState(() {
                                                                FFAppState()
                                                                        .username =
                                                                    _model
                                                                        .userIDTextFieldMModel
                                                                        .value!;
                                                              });
                                                              Navigator.pop(
                                                                  context);

                                                              context.pushNamed(
                                                                'RecoverPassSecurityQuestionsPage',
                                                                queryParameters:
                                                                    {
                                                                  'apiResponseFromForgotPasswordPage':
                                                                      serializeParam(
                                                                    (_model.fromForgotPassM
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    ParamType
                                                                        .JSON,
                                                                  ),
                                                                }.withoutNulls,
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
                                                            }
                                                          } else {
                                                            setState(() {
                                                              _model.isError =
                                                                  true;
                                                              _model.errorText =
                                                                  'The information you entered does not match our records. Please try again. For additional assistance, please contact customer service 24/7 at 1-877-891-7827.';
                                                              _model.hasErrorDOB =
                                                                  true;
                                                              _model.hasErrorUserID =
                                                                  true;
                                                              _model.hasErrorLast5DigitsSSN =
                                                                  true;
                                                            });
                                                            Navigator.pop(
                                                                context);
                                                          }
                                                        } else {
                                                          setState(() {
                                                            _model.hasErrorCaptcha =
                                                                true;
                                                            _model.isError =
                                                                true;
                                                            _model.errorText =
                                                                'Please enter verification code shown below.';
                                                          });
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
                                                ].divide(const SizedBox(width: 8.0)),
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 8.0)),
                                        ).animateOnPageLoad(animationsMap[
                                            'columnOnPageLoadAnimation2']!),
                                      ),
                                    ].divide(const SizedBox(height: 16.0)),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.footerModel2,
                                  updateCallback: () => setState(() {}),
                                  child: const FooterWidget(),
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
        ));
  }
}
