import '/backend/api_requests/api_calls.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/components/screen_height_estimator/screen_height_estimator_widget.dart';
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
import 'recover_user_id_page_model.dart';
export 'recover_user_id_page_model.dart';

class RecoverUserIdPageWidget extends StatefulWidget {
  const RecoverUserIdPageWidget({super.key});

  @override
  State<RecoverUserIdPageWidget> createState() =>
      _RecoverUserIdPageWidgetState();
}

class _RecoverUserIdPageWidgetState extends State<RecoverUserIdPageWidget>
    with TickerProviderStateMixin {
  late RecoverUserIdPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecoverUserIdPageModel());

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
        title: 'MyECP : Forgot Username',
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
                      decoration: const BoxDecoration(),
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
                                    constraints: BoxConstraints(
                                      minHeight:
                                          FFAppState().screenBodyHeightDesktop,
                                    ),
                                    decoration: const BoxDecoration(),
                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
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
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
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
                                                                  'recoverUserIDPageForgetIDText_jnol'),
                                                              'Forgot User ID?',
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
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 0.0, 8.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    if (_model.isError)
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    16.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .errorBannerOutlinedModel1,
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          child:
                                                              ErrorBannerOutlinedWidget(
                                                            message: _model
                                                                .errorText,
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
                                                              'recoverUserIDPageRequiredFieldsID_jnol'),
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text: '*',
                                                                style: FlutterFlowTheme.of(
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
                                                                  fontSize:
                                                                      12.0,
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
                                                              .fromSTEB(
                                                                  5.0,
                                                                  0.0,
                                                                  5.0,
                                                                  10.0),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 2.0,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
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
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                        ),
                                                                        child:
                                                                            wrapWithModel(
                                                                          model:
                                                                              _model.lastNameTextFieldDModel1,
                                                                          updateCallback: () =>
                                                                              setState(() {}),
                                                                          child:
                                                                              LastNameTextFieldWidget(
                                                                            enabled:
                                                                                true,
                                                                            title:
                                                                                'Last Name',
                                                                            icon:
                                                                                const Icon(
                                                                              Icons.ten_k,
                                                                              color: Colors.transparent,
                                                                              size: 22.0,
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
                                                                                _model.hasErrorUserID = false;
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
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                        ),
                                                                        child:
                                                                            wrapWithModel(
                                                                          model:
                                                                              _model.sSNPlainTextFieldDModel,
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
                                                                              if (!(((_model.sSNPlainTextFieldDModel.value!).length ?? 0) == 5)) {
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
                                                                  ].divide(const SizedBox(
                                                                      width:
                                                                          10.0)),
                                                                ),
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge)
                                                                  Container(
                                                                    decoration:
                                                                        const BoxDecoration(),
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
                                                              .fromSTEB(
                                                                  5.0,
                                                                  0.0,
                                                                  5.0,
                                                                  10.0),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 2.0,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
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
                                                                          .dOBTextFieldDModel1,
                                                                      updateCallback:
                                                                          () =>
                                                                              setState(() {}),
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
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
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
                                                                            _model.errorDOB,
                                                                        hasError:
                                                                            _model.hasErrorDOB,
                                                                        calendarHasFocus:
                                                                            _model.calendarHasFocus,
                                                                        isShowInfoIcon:
                                                                            false,
                                                                        titleColor:
                                                                            FlutterFlowTheme.of(context).secondaryText,
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
                                                                              .dOBTextFieldDModel1
                                                                              .value!)) {
                                                                            setState(() {
                                                                              _model.hasErrorDOB = false;
                                                                            });
                                                                          } else {
                                                                            setState(() {
                                                                              _model.errorDOB = 'Please enter a valid DOB';
                                                                              _model.hasErrorDOB = true;
                                                                              _model.calendarHasFocus = true;
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
                                                              .fromSTEB(
                                                                  5.0,
                                                                  0.0,
                                                                  5.0,
                                                                  0.0),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 2.0,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
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
                                                                      updateCallback:
                                                                          () =>
                                                                              setState(() {}),
                                                                      child:
                                                                          CustomOutlinedTextFieldCaptchaWidget(
                                                                        enabled:
                                                                            true,
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .ten_k,
                                                                          color:
                                                                              Colors.transparent,
                                                                        ),
                                                                        hasIconAction:
                                                                            false,
                                                                        isRequired:
                                                                            false,
                                                                        infoMessage:
                                                                            '',
                                                                        hasError:
                                                                            _model.hasErrorCaptcha,
                                                                        captchaValue:
                                                                            _model.captchaValue,
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
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  10.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          wrapWithModel(
                                                            model: _model
                                                                .commonCancelButtonModel1,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                CommonCancelButtonWidget(
                                                              key: const ValueKey(
                                                                  'recoverUserIDPagevalidate-button'),
                                                              title: 'Cancel',
                                                              onTap: () async {
                                                                context
                                                                    .safePop();
                                                              },
                                                            ),
                                                          ),
                                                          wrapWithModel(
                                                            model: _model
                                                                .cValidateButtonDModel,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                CommonCustomButtonWidget(
                                                              key: const ValueKey(
                                                                  'recoverUserIDPagevalidate-button'),
                                                              titile:
                                                                  'Validate',
                                                              isDisabled: !((_model
                                                                              .lastNameTextFieldDModel1
                                                                              .value !=
                                                                          null &&
                                                                      _model.lastNameTextFieldDModel1.value !=
                                                                          '') &&
                                                                  !_model
                                                                      .hasErrorUserID &&
                                                                  ((_model.sSNPlainTextFieldDModel.value != null && _model.sSNPlainTextFieldDModel.value != '') &&
                                                                      ((_model.sSNPlainTextFieldDModel.value!).length ==
                                                                          5)) &&
                                                                  !_model
                                                                      .hasErrorLast5DigitsSSN &&
                                                                  (_model.dOBTextFieldDModel1.value !=
                                                                          null &&
                                                                      _model.dOBTextFieldDModel1.value !=
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
                                                                // Trigger Captcha Error
                                                                setState(() {
                                                                  _model.hasErrorCaptcha =
                                                                      false;
                                                                  _model.isError =
                                                                      false;
                                                                  _model.errorText =
                                                                      null;
                                                                });
                                                                if ((((_model.customOutlinedTextFieldCaptchaDModel1.value!).length ??
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
                                                                  _model.forgotUserIDRes =
                                                                      await AuthenticationGroup
                                                                          .forgotUserNameCall
                                                                          .call(
                                                                    lastName: _model
                                                                        .lastNameTextFieldDModel1
                                                                        .value,
                                                                    sSNLast5: _model
                                                                        .sSNPlainTextFieldDModel
                                                                        .value,
                                                                    dOBDay: (String
                                                                        dob) {
                                                                      return dob
                                                                          .split(
                                                                              '/')[1];
                                                                    }(_model
                                                                        .dOBTextFieldDModel1
                                                                        .value!),
                                                                    dOBMonth: (String
                                                                        dob) {
                                                                      return dob
                                                                          .split(
                                                                              '/')[0];
                                                                    }(_model
                                                                        .dOBTextFieldDModel1
                                                                        .value!),
                                                                    dOBYear: (String
                                                                        dob) {
                                                                      return dob
                                                                          .split(
                                                                              '/')[2];
                                                                    }(_model
                                                                        .dOBTextFieldDModel1
                                                                        .value!),
                                                                    dynamicBaseURL:
                                                                        FFAppState()
                                                                            .dynamicBaseURL,
                                                                  );
                                                                  shouldSetState =
                                                                      true;
                                                                  if ((_model
                                                                          .forgotUserIDRes
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    if ((_model.forgotUserIDRes?.statusCode ??
                                                                            200) ==
                                                                        FFAppState()
                                                                            .successStatusCode) {
                                                                      setState(
                                                                          () {
                                                                        FFAppState().username =
                                                                            getJsonField(
                                                                          (_model.forgotUserIDRes?.jsonBody ??
                                                                              ''),
                                                                          r'''$.UserName''',
                                                                        ).toString();
                                                                      });
                                                                      Navigator.pop(
                                                                          context);

                                                                      context
                                                                          .goNamed(
                                                                        'UserIdConfirmationPage',
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
                                                                    } else {
                                                                      setState(
                                                                          () {
                                                                        _model.hasErrorUserID =
                                                                            true;
                                                                        _model.hasErrorDOB =
                                                                            true;
                                                                        _model.calendarHasFocus =
                                                                            true;
                                                                        _model.hasErrorLast5DigitsSSN =
                                                                            true;
                                                                        _model.isError =
                                                                            true;
                                                                        _model.errorText = AuthenticationGroup
                                                                            .forgotUserNameCall
                                                                            .message(
                                                                          (_model.forgotUserIDRes?.jsonBody ??
                                                                              ''),
                                                                        );
                                                                      });
                                                                      Navigator.pop(
                                                                          context);
                                                                    }
                                                                  } else {
                                                                    setState(
                                                                        () {
                                                                      _model.hasErrorUserID =
                                                                          true;
                                                                      _model.hasErrorDOB =
                                                                          true;
                                                                      _model.calendarHasFocus =
                                                                          true;
                                                                      _model.hasErrorLast5DigitsSSN =
                                                                          true;
                                                                      _model.isError =
                                                                          true;
                                                                      _model.errorText = AuthenticationGroup
                                                                          .forgotUserNameCall
                                                                          .message(
                                                                        (_model.forgotUserIDRes?.jsonBody ??
                                                                            ''),
                                                                      );
                                                                    });
                                                                    Navigator.pop(
                                                                        context);
                                                                  }
                                                                } else {
                                                                  // Trigger Captcha Error
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
                                                                  setState(
                                                                      () {});
                                                                }
                                                              },
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 8.0)),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(height: 8.0)),
                                                ).animateOnPageLoad(animationsMap[
                                                    'columnOnPageLoadAnimation1']!),
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
                              width: double.infinity,
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
                                  child: Container(
                                    width: FFAppConstants.maxScreenWidth,
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
                                                  topRight:
                                                      Radius.circular(8.0),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
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
                                                            'recoverUserIDPageForgetIDText_jnol'),
                                                        'Forgot User ID?',
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
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 8.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              if (_model.isError)
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 0.0),
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
                                                        'recoverUserIDPageRequiredFieldsID_jnol'),
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
                                                      color: FlutterFlowTheme
                                                              .of(context)
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
                                                                .lastNameTextFieldDModel2,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                LastNameTextFieldWidget(
                                                              enabled: true,
                                                              title:
                                                                  'Last Name',
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
                                                                  () async {},
                                                              onChange:
                                                                  (value) async {},
                                                            ),
                                                          ),
                                                          wrapWithModel(
                                                            model: _model
                                                                .sSNPlainTextFieldMModel,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
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
                                                              validate:
                                                                  () async {
                                                                if (!(((_model.sSNPlainTextFieldMModel.value!)
                                                                            .length ??
                                                                        0) ==
                                                                    5)) {
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
                                                        ].divide(const SizedBox(
                                                            height: 8.0)),
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
                                                      color: FlutterFlowTheme
                                                              .of(context)
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .dOBTextFieldDModel2,
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
                                                                        .dOBTextFieldDModel2
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
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 60.0,
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
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
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
                                                      color: FlutterFlowTheme
                                                              .of(context)
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
                                                                  infoMessage:
                                                                      '',
                                                                  hasError: _model
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
                                                                        .actionAPI(
                                                                            context);
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
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 60.0,
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
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 10.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
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
                                                            'recoverUserIDPagevalidate-button'),
                                                        title: 'Cancel',
                                                        onTap: () async {
                                                          context.safePop();
                                                        },
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .cValidateButtonMModel,
                                                      updateCallback: () =>
                                                          setState(() {}),
                                                      child:
                                                          CommonCustomButtonWidget(
                                                        key: const ValueKey(
                                                            'recoverUserIDPagevalidate-button'),
                                                        titile: 'Validate',
                                                        isDisabled: !((_model
                                                                        .lastNameTextFieldDModel2.value !=
                                                                    null &&
                                                                _model.lastNameTextFieldDModel2.value !=
                                                                    '') &&
                                                            (_model.sSNPlainTextFieldMModel
                                                                        .value !=
                                                                    null &&
                                                                _model.sSNPlainTextFieldMModel
                                                                        .value !=
                                                                    '') &&
                                                            (_model.dOBTextFieldDModel2
                                                                        .value !=
                                                                    null &&
                                                                _model.dOBTextFieldDModel2
                                                                        .value !=
                                                                    '') &&
                                                            (_model.customOutlinedTextFieldCaptchaDModel2
                                                                        .value !=
                                                                    null &&
                                                                _model.customOutlinedTextFieldCaptchaDModel2
                                                                        .value !=
                                                                    '') &&
                                                            !_model
                                                                .hasErrorLast5DigitsSSN &&
                                                            !_model
                                                                .hasErrorDOB),
                                                        isEditIconVisible:
                                                            false,
                                                        onTap: () async {
                                                          var shouldSetState =
                                                              false;
                                                          // Trigger Captcha Error
                                                          setState(() {
                                                            _model.hasErrorCaptcha =
                                                                false;
                                                            _model.isError =
                                                                false;
                                                            _model.errorText =
                                                                null;
                                                          });
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
                                                            _model.responseForgotUserIdM =
                                                                await AuthenticationGroup
                                                                    .forgotUserNameCall
                                                                    .call(
                                                              lastName: _model
                                                                  .lastNameTextFieldDModel2
                                                                  .value,
                                                              sSNLast5: _model
                                                                  .sSNPlainTextFieldMModel
                                                                  .value,
                                                              dOBDay: (String
                                                                  dob) {
                                                                return dob
                                                                    .split(
                                                                        '/')[1];
                                                              }(_model
                                                                  .dOBTextFieldDModel2
                                                                  .value!),
                                                              dOBMonth: (String
                                                                  dob) {
                                                                return dob
                                                                    .split(
                                                                        '/')[0];
                                                              }(_model
                                                                  .dOBTextFieldDModel2
                                                                  .value!),
                                                              dOBYear: (String
                                                                  dob) {
                                                                return dob
                                                                    .split(
                                                                        '/')[2];
                                                              }(_model
                                                                  .dOBTextFieldDModel2
                                                                  .value!),
                                                              dynamicBaseURL:
                                                                  FFAppState()
                                                                      .dynamicBaseURL,
                                                            );
                                                            shouldSetState =
                                                                true;
                                                            if ((_model
                                                                    .responseForgotUserIdM
                                                                    ?.succeeded ??
                                                                true)) {
                                                              if ((_model.responseForgotUserIdM
                                                                          ?.statusCode ??
                                                                      200) ==
                                                                  FFAppState()
                                                                      .successStatusCode) {
                                                                setState(() {
                                                                  FFAppState()
                                                                          .username =
                                                                      getJsonField(
                                                                    (_model.responseForgotUserIdM
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$['UserName']''',
                                                                  ).toString();
                                                                });

                                                                context.goNamed(
                                                                  'UserIdConfirmationPage',
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
                                                                  _model.hasErrorUserID =
                                                                      true;
                                                                  _model.hasErrorDOB =
                                                                      true;
                                                                  _model.calendarHasFocus =
                                                                      true;
                                                                  _model.hasErrorLast5DigitsSSN =
                                                                      true;
                                                                  _model.isError =
                                                                      true;
                                                                  _model.errorText =
                                                                      AuthenticationGroup
                                                                          .forgotUserNameCall
                                                                          .message(
                                                                    (_model.forgotUserIDRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  );
                                                                });
                                                                Navigator.pop(
                                                                    context);
                                                              }
                                                            } else {
                                                              setState(() {
                                                                _model.hasErrorUserID =
                                                                    true;
                                                                _model.hasErrorDOB =
                                                                    true;
                                                                _model.calendarHasFocus =
                                                                    true;
                                                                _model.hasErrorLast5DigitsSSN =
                                                                    true;
                                                                _model.isError =
                                                                    true;
                                                                _model.errorText =
                                                                    AuthenticationGroup
                                                                        .forgotUserNameCall
                                                                        .message(
                                                                  (_model.forgotUserIDRes
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                );
                                                              });
                                                              Navigator.pop(
                                                                  context);
                                                            }

                                                            if (shouldSetState) {
                                                              setState(() {});
                                                            }
                                                            return;
                                                          } else {
                                                            // Trigger Captcha Error
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
                                                  ].divide(
                                                      const SizedBox(width: 8.0)),
                                                ),
                                              ),
                                            ].divide(const SizedBox(height: 8.0)),
                                          ).animateOnPageLoad(animationsMap[
                                              'columnOnPageLoadAnimation2']!),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  valueOrDefault<double>(
                                    MediaQuery.sizeOf(context).width * 0.05,
                                    0.0,
                                  ),
                                  0.0,
                                  valueOrDefault<double>(
                                    MediaQuery.sizeOf(context).width * 0.05,
                                    0.0,
                                  ),
                                  0.0),
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
