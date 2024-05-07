import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_circular_indicator/common_circular_indicator_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/custom_outlined_text_f_m_c_auth_code/custom_outlined_text_f_m_c_auth_code_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/components/select_delivery_method_comp/select_delivery_method_comp_widget.dart';
import '/components/success_banner_filled/success_banner_filled_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'added2_f_a_sec_comp_model.dart';
export 'added2_f_a_sec_comp_model.dart';

class Added2FASecCompWidget extends StatefulWidget {
  const Added2FASecCompWidget({
    super.key,
    bool? isFromManageUserDetails,
    required this.confirmCallBack,
    required this.cancelCallBack,
  }) : isFromManageUserDetails = isFromManageUserDetails ?? false;

  final bool isFromManageUserDetails;
  final Future Function()? confirmCallBack;
  final Future Function()? cancelCallBack;

  @override
  State<Added2FASecCompWidget> createState() => _Added2FASecCompWidgetState();
}

class _Added2FASecCompWidgetState extends State<Added2FASecCompWidget> {
  late Added2FASecCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Added2FASecCompModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.isSuccess = false;
        _model.isError = false;
        _model.isSendCode = false;
        _model.isLoading = true;
      });
      setState(() {
        _model.customOutlinedTextFMCAuthCodeModel.textController?.clear();
      });
      if (true) {
        unawaited(
          () async {}(),
        );
        _model.askTwoFactorRes =
            await ManageContactDetailsGroup.askTwoFactorCall.call(
          userName: FFAppState().selectedUserName,
          dynamicBaseURL: FFAppState().dynamicBaseURL,
        );
        if ((_model.askTwoFactorRes?.succeeded ?? true)) {
          if ((_model.askTwoFactorRes?.statusCode ?? 200) ==
              FFAppState().successStatusCode) {
            if (ManageContactDetailsGroup.askTwoFactorCall.is2FANeeded(
              (_model.askTwoFactorRes?.jsonBody ?? ''),
            )!
                ? (ManageContactDetailsGroup.askTwoFactorCall.isTwoFAOtpIn(
                      (_model.askTwoFactorRes?.jsonBody ?? ''),
                    )! ||
                    ManageContactDetailsGroup.askTwoFactorCall
                        .isTwoFAEmailOptIn(
                      (_model.askTwoFactorRes?.jsonBody ?? ''),
                    )!)
                : false) {
              setState(() {
                FFAppState().login2FARes =
                    Login2FAResStruct.maybeFromMap(getJsonField(
                  (_model.askTwoFactorRes?.jsonBody ?? ''),
                  r'''$''',
                ))!;
                FFAppState().selectedUserId =
                    Login2FAResStruct.maybeFromMap(getJsonField(
                  (_model.askTwoFactorRes?.jsonBody ?? ''),
                  r'''$''',
                ))!
                        .userId;
              });
            } else {
              setState(() {
                _model.isError = true;
                _model.errorText = 'Two-factor authentication is not enabled';
              });
            }
          }
        }
      }
      await Future.delayed(const Duration(milliseconds: 1000));
      setState(() {
        _model.isLoading = false;
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

    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF0F2654),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Text(
                      'For Your Added Security',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Arial',
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            height: 2.5,
            thickness: 3.0,
            color: Color(0xFF801B0E),
          ),
          Builder(
            builder: (context) {
              if (!_model.isLoading) {
                return Container(
                  decoration: const BoxDecoration(),
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (_model.isSuccess ?? true)
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: wrapWithModel(
                              model: _model.successBannerFilledModel,
                              updateCallback: () => setState(() {}),
                              child: SuccessBannerFilledWidget(
                                message: _model.successText,
                              ),
                            ),
                          ),
                        if (_model.isError ?? true)
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: wrapWithModel(
                              model: _model.errorBannerOutlinedModel,
                              updateCallback: () => setState(() {}),
                              child: ErrorBannerOutlinedWidget(
                                message: _model.errorText,
                              ),
                            ),
                          ),
                        Align(
                          alignment: const AlignmentDirectional(1.0, 0.0),
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '*',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Arial',
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                const TextSpan(
                                  text: '  Required Fields',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Arial',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                        Builder(
                          builder: (context) {
                            if (!_model.isSendCode!) {
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: AutoSizeText(
                                      'We need to confirm it’s really you. As part of the two-factor authentication process, we’ll send you an authentication code through one of the below delivery methods.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Arial',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: false,
                                            lineHeight: 1.5,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF0F2654),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(8.0),
                                          topRight: Radius.circular(8.0),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          'Select Delivery Method ',
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
                                                    TextSpan(
                                                      text: '*',
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        fontSize: 14.0,
                                                      ),
                                                    )
                                                  ],
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
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 2.0,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(8.0),
                                        bottomRight: Radius.circular(8.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
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
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(8.0),
                                          bottomRight: Radius.circular(8.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      valueOrDefault<double>(
                                                        () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 0.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 32.0;
                                                          } else {
                                                            return 0.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      ),
                                                      0.0,
                                                      0.0,
                                                      0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .selectDeliveryMethodCompModel1,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child:
                                                    SelectDeliveryMethodCompWidget(
                                                  authType: 'Phone',
                                                  value: valueOrDefault<String>(
                                                    functions
                                                        .obscurePhoneNumber(
                                                            FFAppState()
                                                                .login2FARes
                                                                .mobileNo),
                                                    '******0000',
                                                  ),
                                                  isEnroll: !FFAppState()
                                                      .login2FARes
                                                      .isTwoFAOtpIn,
                                                  isSelected:
                                                      _model.isPhoneSelected!,
                                                  callback: () async {
                                                    if (FFAppState()
                                                        .login2FARes
                                                        .isTwoFAOtpIn) {
                                                      setState(() {
                                                        _model.isPhoneSelected =
                                                            true;
                                                      });
                                                    }
                                                  },
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      valueOrDefault<double>(
                                                        () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 0.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 32.0;
                                                          } else {
                                                            return 0.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      ),
                                                      16.0,
                                                      0.0,
                                                      0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .selectDeliveryMethodCompModel2,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child:
                                                    SelectDeliveryMethodCompWidget(
                                                  authType: 'Email',
                                                  value: functions
                                                      .maskAndCapitalizeEmail(
                                                          FFAppState()
                                                              .login2FARes
                                                              .emailAddress),
                                                  isEnroll: !FFAppState()
                                                      .login2FARes
                                                      .isTwoFAEmailOptIn,
                                                  isSelected:
                                                      !_model.isPhoneSelected!,
                                                  callback: () async {
                                                    if (FFAppState()
                                                        .login2FARes
                                                        .isTwoFAEmailOptIn) {
                                                      setState(() {
                                                        _model.isPhoneSelected =
                                                            false;
                                                      });
                                                    }
                                                  },
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 0.0, 0.0),
                                              child: AutoSizeText(
                                                'Please call 1-877-891-7827 If you no longer have access to this email address or phone number',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Arial',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                          lineHeight: 1.5,
                                                        ),
                                              ),
                                            ),
                                          ]
                                              .divide(const SizedBox(height: 16.0))
                                              .around(const SizedBox(height: 16.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        wrapWithModel(
                                          model:
                                              _model.commonCancelButtonModel1,
                                          updateCallback: () => setState(() {}),
                                          child: CommonCancelButtonWidget(
                                            title: 'Cancel',
                                            onTap: () async {
                                              if (widget
                                                  .isFromManageUserDetails) {
                                                await widget.cancelCallBack
                                                    ?.call();
                                              } else {
                                                FFAppState().update(() {
                                                  FFAppState()
                                                          .isFromTwoFacotrAuth =
                                                      false;
                                                  FFAppState()
                                                          .isFroYourSecurity =
                                                      false;
                                                });
                                                await widget.cancelCallBack
                                                    ?.call();
                                              }
                                            },
                                          ),
                                        ),
                                        wrapWithModel(
                                          model:
                                              _model.commonCustomButtonModel1,
                                          updateCallback: () => setState(() {}),
                                          child: CommonCustomButtonWidget(
                                            titile: 'Next',
                                            isDisabled: !(valueOrDefault<bool>(
                                                  FFAppState()
                                                      .login2FARes
                                                      .isTwoFAOtpIn,
                                                  false,
                                                ) ||
                                                valueOrDefault<bool>(
                                                  FFAppState()
                                                      .login2FARes
                                                      .isTwoFAEmailOptIn,
                                                  false,
                                                )),
                                            isEditIconVisible: false,
                                            onTap: () async {
                                              _model.sendOTPApiRes =
                                                  await action_blocks.codeSent(
                                                context,
                                                isPhoneSelected:
                                                    _model.isPhoneSelected,
                                              );
                                              if (getJsonField(
                                                    _model.sendOTPApiRes,
                                                    r'''$.Otp''',
                                                  ) !=
                                                  null) {
                                                setState(() {
                                                  _model.isError = false;
                                                  _model.isSuccess = true;
                                                  _model.successText =
                                                      'OTP has been send';
                                                  _model.isSendCode = true;
                                                  _model.otpKey = getJsonField(
                                                    _model.sendOTPApiRes,
                                                    r'''$.Otp''',
                                                  ).toString();
                                                });
                                              } else {
                                                setState(() {
                                                  _model.isError = true;
                                                  _model.isSuccess = false;
                                                  _model.errorText =
                                                      getJsonField(
                                                    _model.sendOTPApiRes,
                                                    r'''$.Message''',
                                                  ).toString();
                                                });
                                              }

                                              Navigator.pop(context);

                                              setState(() {});
                                            },
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 16.0)),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text:
                                                'Check your ${_model.isPhoneSelected! ? Auth2Factor.Phone.name : Auth2Factor.Email.name}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Arial',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts: false,
                                                  lineHeight: 1.5,
                                                ),
                                          ),
                                          const TextSpan(
                                            text:
                                                ' An email with your authentication code has been sent. Please enter it below and click “Confirm”',
                                            style: TextStyle(),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Arial',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                              lineHeight: 1.5,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF0F2654),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(8.0),
                                          topRight: Radius.circular(8.0),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          'Select Delivery Method ',
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
                                                    TextSpan(
                                                      text: '*',
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        fontSize: 14.0,
                                                      ),
                                                    )
                                                  ],
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
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 2.0,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(8.0),
                                        bottomRight: Radius.circular(8.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
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
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(8.0),
                                          bottomRight: Radius.circular(8.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      valueOrDefault<double>(
                                                        () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 0.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 32.0;
                                                          } else {
                                                            return 0.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      ),
                                                      0.0,
                                                      0.0,
                                                      0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  if (_model.isPhoneSelected ??
                                                      true)
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.asset(
                                                        'assets/images/ic_phone.png',
                                                        width: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 30.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 50.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 50.0;
                                                          } else {
                                                            return 50.0;
                                                          }
                                                        }(),
                                                        height: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 40.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 60.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 60.0;
                                                          } else {
                                                            return 60.0;
                                                          }
                                                        }(),
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                  if (!_model.isPhoneSelected!)
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.asset(
                                                        'assets/images/ic_email.png',
                                                        width: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 30.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 50.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 50.0;
                                                          } else {
                                                            return 50.0;
                                                          }
                                                        }(),
                                                        height: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 30.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 50.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 50.0;
                                                          } else {
                                                            return 50.0;
                                                          }
                                                        }(),
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                  Flexible(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.4,
                                                            height: 100.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .customOutlinedTextFMCAuthCodeModel,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  CustomOutlinedTextFMCAuthCodeWidget(
                                                                enabled: true,
                                                                title:
                                                                    'Enter your Code',
                                                                icon: const Icon(
                                                                  Icons
                                                                      .thirteen_mp_rounded,
                                                                  size: 0.0,
                                                                ),
                                                                hasIconAction:
                                                                    true,
                                                                isRequired:
                                                                    true,
                                                                infoMessage: '',
                                                                errorMessage: _model
                                                                    .codeErrorMes,
                                                                hasError: _model
                                                                    .hasErrorCode,
                                                                hintText:
                                                                    '000000',
                                                                initialValue:
                                                                    '',
                                                                onIconTap:
                                                                    () async {},
                                                                validate:
                                                                    () async {
                                                                  if (_model.customOutlinedTextFMCAuthCodeModel
                                                                              .value !=
                                                                          null &&
                                                                      _model.customOutlinedTextFMCAuthCodeModel
                                                                              .value !=
                                                                          '') {
                                                                    return;
                                                                  }

                                                                  setState(() {
                                                                    _model.hasErrorCode =
                                                                        false;
                                                                    _model.codeErrorMes =
                                                                        'Required Field';
                                                                  });
                                                                },
                                                                resetError:
                                                                    () async {},
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                setState(() {
                                                                  _model.isError =
                                                                      false;
                                                                  _model.isSuccess =
                                                                      false;
                                                                  _model.successText =
                                                                      '      ';
                                                                });
                                                                _model.reSendOTPApiRes =
                                                                    await action_blocks
                                                                        .codeSent(
                                                                  context,
                                                                  isPhoneSelected:
                                                                      _model
                                                                          .isPhoneSelected,
                                                                );
                                                                if (getJsonField(
                                                                      _model
                                                                          .reSendOTPApiRes,
                                                                      r'''$.Otp''',
                                                                    ) !=
                                                                    null) {
                                                                  setState(() {
                                                                    _model.isError =
                                                                        false;
                                                                    _model.isSuccess =
                                                                        true;
                                                                    _model.successText =
                                                                        'OTP has been resend';
                                                                    _model.isSendCode =
                                                                        true;
                                                                    _model.otpKey =
                                                                        getJsonField(
                                                                      _model
                                                                          .reSendOTPApiRes,
                                                                      r'''$.Otp''',
                                                                    ).toString();
                                                                  });
                                                                } else {
                                                                  setState(() {
                                                                    _model.isError =
                                                                        true;
                                                                    _model.isSuccess =
                                                                        false;
                                                                    _model.errorText =
                                                                        getJsonField(
                                                                      _model
                                                                          .reSendOTPApiRes,
                                                                      r'''$.Message''',
                                                                    ).toString();
                                                                  });
                                                                }

                                                                Navigator.pop(
                                                                    context);

                                                                setState(() {});
                                                              },
                                                              child:
                                                                  AutoSizeText(
                                                                'Click here to request a new authentication code',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Arial',
                                                                      color: const Color(
                                                                          0xFF0000FF),
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      useGoogleFonts:
                                                                          false,
                                                                      lineHeight:
                                                                          1.5,
                                                                    ),
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
                                          ]
                                              .divide(const SizedBox(height: 16.0))
                                              .around(const SizedBox(height: 16.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        wrapWithModel(
                                          model:
                                              _model.commonCancelButtonModel2,
                                          updateCallback: () => setState(() {}),
                                          child: CommonCancelButtonWidget(
                                            title: 'Cancel',
                                            onTap: () async {
                                              if (widget
                                                  .isFromManageUserDetails) {
                                                await widget.cancelCallBack
                                                    ?.call();
                                              } else {
                                                setState(() {
                                                  _model.isSendCode = false;
                                                });
                                                _model.updatePage(() {
                                                  FFAppState()
                                                          .isFromTwoFacotrAuth =
                                                      false;
                                                  FFAppState()
                                                          .isFroYourSecurity =
                                                      false;
                                                });

                                                context.goNamed(
                                                  'LoginPage',
                                                  queryParameters: {
                                                    'isFromLogout':
                                                        serializeParam(
                                                      false,
                                                      ParamType.bool,
                                                    ),
                                                  }.withoutNulls,
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
                                              }
                                            },
                                          ),
                                        ),
                                        wrapWithModel(
                                          model:
                                              _model.commonCustomButtonModel2,
                                          updateCallback: () => setState(() {}),
                                          child: CommonCustomButtonWidget(
                                            titile: 'Confirm',
                                            isDisabled: _model
                                                        .customOutlinedTextFMCAuthCodeModel
                                                        .value ==
                                                    null ||
                                                _model.customOutlinedTextFMCAuthCodeModel
                                                        .value ==
                                                    '',
                                            isEditIconVisible: false,
                                            onTap: () async {
                                              var shouldSetState = false;
                                              unawaited(
                                                () async {
                                                  await action_blocks
                                                      .showLoadingDialog(
                                                          context);
                                                }(),
                                              );
                                              setState(() {
                                                _model.isError = false;
                                                _model.isSuccess = false;
                                              });
                                              _model.verfiyOtpRes =
                                                  await AuthenticationGroup
                                                      .verifyOtpCall
                                                      .call(
                                                userId: FFAppState()
                                                    .selectedUserId
                                                    .toString(),
                                                otp: getJsonField(
                                                  _model.sendOTPApiRes,
                                                  r'''$.Otp''',
                                                ).toString(),
                                                enteredOtp: _model
                                                    .customOutlinedTextFMCAuthCodeModel
                                                    .value,
                                                dynamicBaseURL:
                                                    FFAppState().dynamicBaseURL,
                                              );
                                              shouldSetState = true;
                                              if ((_model.verfiyOtpRes
                                                      ?.succeeded ??
                                                  true)) {
                                                if (AuthenticationGroup
                                                            .verifyOtpCall
                                                            .message(
                                                          (_model.verfiyOtpRes
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ) !=
                                                        null &&
                                                    AuthenticationGroup
                                                            .verifyOtpCall
                                                            .message(
                                                          (_model.verfiyOtpRes
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ) !=
                                                        '') {
                                                  setState(() {
                                                    _model.isError = true;
                                                    _model.errorText =
                                                        AuthenticationGroup
                                                            .verifyOtpCall
                                                            .message(
                                                      (_model.verfiyOtpRes
                                                              ?.jsonBody ??
                                                          ''),
                                                    )!;
                                                  });
                                                  Navigator.pop(context);
                                                } else {
                                                  setState(() {
                                                    _model.isSuccess = true;
                                                    _model.successText =
                                                        'Your Information has been updated.';
                                                    _model.isError = false;
                                                  });
                                                  setState(() {
                                                    FFAppState()
                                                        .selectedFirstName = AuthenticationGroup
                                                                    .verifyOtpCall
                                                                    .firstName(
                                                                  (_model.verfiyOtpRes
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ) !=
                                                                null &&
                                                            AuthenticationGroup
                                                                    .verifyOtpCall
                                                                    .firstName(
                                                                  (_model.verfiyOtpRes
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ) !=
                                                                ''
                                                        ? AuthenticationGroup
                                                            .verifyOtpCall
                                                            .firstName(
                                                            (_model.verfiyOtpRes
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )!
                                                        : '';
                                                    FFAppState()
                                                        .selectedUserName = AuthenticationGroup
                                                                    .verifyOtpCall
                                                                    .userName(
                                                                  (_model.verfiyOtpRes
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ) !=
                                                                null &&
                                                            AuthenticationGroup
                                                                    .verifyOtpCall
                                                                    .userName(
                                                                  (_model.verfiyOtpRes
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ) !=
                                                                ''
                                                        ? AuthenticationGroup
                                                            .verifyOtpCall
                                                            .userName(
                                                            (_model.verfiyOtpRes
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )!
                                                        : '';
                                                  });
                                                  if (widget
                                                      .isFromManageUserDetails) {
                                                    Navigator.pop(context);
                                                    await widget.confirmCallBack
                                                        ?.call();
                                                  } else {
                                                    setState(() {
                                                      FFAppState()
                                                          .LastLoginDate = AuthenticationGroup
                                                                      .verifyOtpCall
                                                                      .lastLoginDate(
                                                                    (_model.verfiyOtpRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ) !=
                                                                  null &&
                                                              AuthenticationGroup
                                                                      .verifyOtpCall
                                                                      .lastLoginDate(
                                                                    (_model.verfiyOtpRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ) !=
                                                                  ''
                                                          ? AuthenticationGroup
                                                              .verifyOtpCall
                                                              .lastLoginDate(
                                                              (_model.verfiyOtpRes
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )!
                                                          : '';
                                                    });
                                                    Navigator.pop(context);
                                                    GoRouter.of(context)
                                                        .prepareAuthEvent();
                                                    await authManager.signIn(
                                                      authenticationToken:
                                                          AuthenticationGroup
                                                              .verifyOtpCall
                                                              .token(
                                                        (_model.verfiyOtpRes
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      authUid:
                                                          AuthenticationGroup
                                                              .verifyOtpCall
                                                              .userId(
                                                                (_model.verfiyOtpRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              ?.toString(),
                                                    );
                                                    setState(() {
                                                      FFAppState()
                                                              .isFromTwoFacotrAuth =
                                                          false;
                                                      FFAppState()
                                                              .isFroYourSecurity =
                                                          false;
                                                    });
                                                    if (Navigator.of(context)
                                                        .canPop()) {
                                                      context.pop();
                                                    }
                                                    context.pushNamedAuth(
                                                      'HomeDashboard',
                                                      context.mounted,
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
                                                  }
                                                }
                                              } else {
                                                setState(() {
                                                  _model.isError = true;
                                                  _model.errorText =
                                                      AuthenticationGroup
                                                          .verifyOtpCall
                                                          .message(
                                                    (_model.verfiyOtpRes
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!;
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
                                      ].divide(const SizedBox(width: 16.0)),
                                    ),
                                  ),
                                ],
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return Container(
                  height: MediaQuery.sizeOf(context).height * 0.5,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                  ),
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: wrapWithModel(
                      model: _model.commonCircularIndicatorModel,
                      updateCallback: () => setState(() {}),
                      child: const CommonCircularIndicatorWidget(),
                    ),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
