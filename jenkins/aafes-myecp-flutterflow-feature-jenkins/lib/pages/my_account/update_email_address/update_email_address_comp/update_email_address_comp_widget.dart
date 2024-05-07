import '/backend/api_requests/api_calls.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_circular_indicator/common_circular_indicator_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/custom_outlined_text_f_general_m_c/custom_outlined_text_f_general_m_c_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/components/success_banner_filled/success_banner_filled_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/my_account/update_email_address/added2_f_a_sec_comp/added2_f_a_sec_comp_widget.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'update_email_address_comp_model.dart';
export 'update_email_address_comp_model.dart';

class UpdateEmailAddressCompWidget extends StatefulWidget {
  const UpdateEmailAddressCompWidget({super.key});

  @override
  State<UpdateEmailAddressCompWidget> createState() =>
      _UpdateEmailAddressCompWidgetState();
}

class _UpdateEmailAddressCompWidgetState
    extends State<UpdateEmailAddressCompWidget> {
  late UpdateEmailAddressCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpdateEmailAddressCompModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.isError = false;
        _model.isSuccess = false;
        _model.isEnabled = false;
        _model.isTwoFactAuth = false;
        _model.isLoading = true;
        _model.passwordText = '';
      });
      unawaited(
        () async {}(),
      );
      _model.getUserAddressAPIRes =
          await ManageContactDetailsGroup.getEmailAddressCall.call(
        userId: FFAppState().selectedUserId.toString(),
        dynamicBaseURL: FFAppState().dynamicBaseURL,
      );
      if ((_model.getUserAddressAPIRes?.succeeded ?? true)) {
        _model.updatePage(() {
          _model.getAddressRes = getJsonField(
            (_model.getUserAddressAPIRes?.jsonBody ?? ''),
            r'''$''',
          );
          _model.emailText = functions.checkStringIsNull(getJsonField(
            _model.getAddressRes,
            r'''$.EmailAddress''',
          ));
        });
      }
      _model.updatePage(() {
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

    return Builder(
      builder: (context) {
        if (!_model.isTwoFactAuth!) {
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
                            'Update Email Address',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Arial',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
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
                    if (!_model.isLoading!) {
                      return Visibility(
                        visible: _model.getAddressRes != null,
                        child: Container(
                          decoration: const BoxDecoration(),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (_model.isError ?? true)
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 16.0),
                                    child: wrapWithModel(
                                      model: _model.errorBannerOutlinedModel,
                                      updateCallback: () => setState(() {}),
                                      child: ErrorBannerOutlinedWidget(
                                        message: ManageContactDetailsGroup
                                            .updateEmailAddressCall
                                            .errorMessage(
                                          (_model.updateUserAddressAPIRes
                                                  ?.jsonBody ??
                                              ''),
                                        ),
                                      ),
                                    ),
                                  ),
                                if (_model.isSuccess ?? true)
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 16.0),
                                    child: wrapWithModel(
                                      model: _model.successBannerFilledModel,
                                      updateCallback: () => setState(() {}),
                                      child: const SuccessBannerFilledWidget(
                                        message:
                                            'Your Information has been updated.',
                                      ),
                                    ),
                                  ),
                                Align(
                                  alignment: const AlignmentDirectional(1.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.updatePage(() {
                                        FFAppState().selectedMCDrawerIndex = 9;
                                      });
                                    },
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '*',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Arial',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          TextSpan(
                                            text: '  Required Fields',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
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
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 0.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 2.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
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
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            wrapWithModel(
                                              model: _model
                                                  .emailAddressDesktopModel,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child:
                                                  CustomOutlinedTextFGeneralMCWidget(
                                                enabled: _model.isEnabled!,
                                                title: 'Email Address',
                                                icon: const Icon(
                                                  Icons.onetwothree,
                                                  size: 0.0,
                                                ),
                                                hasIconAction: false,
                                                isRequired: true,
                                                infoMessage: '',
                                                errorMessage: _model.errorEmail,
                                                hasError: _model.hasErrorEmail,
                                                hintText:
                                                    'lottielottielottie@gmail.com',
                                                initialValue: _model.emailText,
                                                onIconTap: () async {},
                                                validate: () async {
                                                  if (_model.emailAddressDesktopModel
                                                              .value !=
                                                          null &&
                                                      _model.emailAddressDesktopModel
                                                              .value !=
                                                          '') {
                                                    if (functions.isValidEmail(
                                                        _model
                                                            .emailAddressDesktopModel
                                                            .value!)) {
                                                      setState(() {
                                                        _model.errorEmail =
                                                            null;
                                                        _model.hasErrorEmail =
                                                            false;
                                                      });
                                                      return;
                                                    } else {
                                                      setState(() {
                                                        _model.errorEmail =
                                                            'Please enter a  valid email address';
                                                        _model.hasErrorEmail =
                                                            true;
                                                      });
                                                      return;
                                                    }
                                                  } else {
                                                    return;
                                                  }
                                                },
                                                resetError: () async {
                                                  setState(() {
                                                    _model.errorEmail = null;
                                                    _model.hasErrorEmail =
                                                        false;
                                                  });
                                                },
                                              ),
                                            ),
                                            if (_model.isEnabled ?? true)
                                              wrapWithModel(
                                                model: _model
                                                    .conEmailAddressDesktopModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child:
                                                    CustomOutlinedTextFGeneralMCWidget(
                                                  enabled: _model.isEnabled!,
                                                  title: 'Confirm Address',
                                                  icon: const Icon(
                                                    Icons.onetwothree,
                                                    size: 0.0,
                                                  ),
                                                  hasIconAction: false,
                                                  isRequired: true,
                                                  infoMessage: '',
                                                  errorMessage:
                                                      _model.errorConfirmEmail,
                                                  hasError: _model
                                                      .hasErrorConfirmEmail,
                                                  hintText:
                                                      'lottielottielottie@gmail.com',
                                                  initialValue:
                                                      _model.emailText,
                                                  onIconTap: () async {},
                                                  validate: () async {
                                                    if (_model.conEmailAddressDesktopModel
                                                                .value !=
                                                            null &&
                                                        _model.conEmailAddressDesktopModel
                                                                .value !=
                                                            '') {
                                                      if (functions
                                                          .isValidEmail(_model
                                                              .conEmailAddressDesktopModel
                                                              .value!)) {
                                                        if (functions.isValidEmail(
                                                                _model
                                                                    .conEmailAddressDesktopModel
                                                                    .value!) &&
                                                            (_model.conEmailAddressDesktopModel
                                                                        .value !=
                                                                    null &&
                                                                _model.conEmailAddressDesktopModel
                                                                        .value !=
                                                                    '')) {
                                                          if (_model
                                                                  .emailAddressDesktopModel
                                                                  .value ==
                                                              _model
                                                                  .conEmailAddressDesktopModel
                                                                  .value) {
                                                            setState(() {
                                                              _model.errorConfirmEmail =
                                                                  null;
                                                              _model.hasErrorConfirmEmail =
                                                                  false;
                                                              _model.hasErrorEmail =
                                                                  false;
                                                              _model.errorEmail =
                                                                  null;
                                                            });
                                                          } else {
                                                            setState(() {
                                                              _model.errorEmail =
                                                                  null;
                                                              _model.errorConfirmEmail =
                                                                  'Confirm your Email Address';
                                                              _model.hasErrorEmail =
                                                                  true;
                                                              _model.hasErrorConfirmEmail =
                                                                  true;
                                                            });
                                                          }

                                                          return;
                                                        } else {
                                                          return;
                                                        }
                                                      } else {
                                                        setState(() {
                                                          _model.errorConfirmEmail =
                                                              'Please enter a  valid email address';
                                                          _model.hasErrorConfirmEmail =
                                                              true;
                                                        });
                                                        return;
                                                      }
                                                    } else {
                                                      return;
                                                    }
                                                  },
                                                  resetError: () async {
                                                    setState(() {
                                                      _model.errorConfirmEmail =
                                                          null;
                                                      _model.hasErrorConfirmEmail =
                                                          false;
                                                    });
                                                  },
                                                ),
                                              ),
                                            if (!_model.isEnabled!)
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  wrapWithModel(
                                                    model: _model
                                                        .commonCustomButtonModel1,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child:
                                                        CommonCustomButtonWidget(
                                                      titile: 'Edit',
                                                      isDisabled: false,
                                                      isEditIconVisible: true,
                                                      onTap: () async {
                                                        if (FFAppState()
                                                                .login2FARes
                                                                .is2FANeeded
                                                            ? (FFAppState()
                                                                    .login2FARes
                                                                    .isTwoFAOtpIn ||
                                                                FFAppState()
                                                                    .login2FARes
                                                                    .isTwoFAEmailOptIn)
                                                            : false) {
                                                          setState(() {
                                                            _model.isTwoFactAuth =
                                                                true;
                                                            _model.passwordText =
                                                                '';
                                                          });
                                                        } else {
                                                          setState(() {
                                                            _model.isEnabled =
                                                                true;
                                                            _model.passwordText =
                                                                '';
                                                          });
                                                        }
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                          ]
                                              .divide(const SizedBox(height: 16.0))
                                              .around(const SizedBox(height: 16.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                if (_model.isEnabled ?? true)
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 2.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
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
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.all(16.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    RichText(
                                                      textScaler:
                                                          MediaQuery.of(context)
                                                              .textScaler,
                                                      text: TextSpan(
                                                        children: [
                                                          const TextSpan(
                                                            text:
                                                                'Current Password ',
                                                            style: TextStyle(),
                                                          ),
                                                          TextSpan(
                                                            text: '*',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Arial',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          )
                                                        ],
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Arial',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 300.0,
                                                      height: 56.0,
                                                      child: custom_widgets
                                                          .PasswordWidget(
                                                        width: 300.0,
                                                        height: 56.0,
                                                        value: _model
                                                            .passwordText!,
                                                        isLoading: false,
                                                        hasError: _model
                                                            .hasPasswordError!,
                                                        onChange:
                                                            (value) async {
                                                          setState(() {
                                                            _model.passwordText =
                                                                value;
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(height: 8.0)),
                                                ),
                                              ),
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                            ))
                                              Expanded(
                                                child: Container(
                                                  decoration: const BoxDecoration(),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                if (_model.isEnabled ?? true)
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        wrapWithModel(
                                          model: _model.commonCancelButtonModel,
                                          updateCallback: () => setState(() {}),
                                          child: CommonCancelButtonWidget(
                                            title: 'Cancel',
                                            onTap: () async {
                                              _model.updatePage(() {
                                                _model.isEnabled = false;
                                                _model.passwordText = '';
                                                _model.emailText =
                                                    _model.emailText;
                                                _model.hasErrorCurrentPass =
                                                    false;
                                                _model.hasErrorConfirmEmail =
                                                    false;
                                              });
                                              await Future.wait([
                                                Future(() async {
                                                  setState(() {
                                                    _model
                                                        .emailAddressDesktopModel
                                                        .textController
                                                        ?.text = _model.emailText!;
                                                  });
                                                }),
                                              ]);
                                            },
                                          ),
                                        ),
                                        wrapWithModel(
                                          model:
                                              _model.commonCustomButtonModel2,
                                          updateCallback: () => setState(() {}),
                                          child: CommonCustomButtonWidget(
                                            titile: 'Save',
                                            isDisabled: !(!_model
                                                    .hasErrorCurrentPass! &&
                                                !_model.hasErrorConfirmEmail! &&
                                                !_model.hasErrorEmail! &&
                                                !_model.hasPasswordError! &&
                                                (_model.emailAddressDesktopModel
                                                            .value !=
                                                        null &&
                                                    _model.emailAddressDesktopModel
                                                            .value !=
                                                        '') &&
                                                (_model.conEmailAddressDesktopModel
                                                            .value !=
                                                        null &&
                                                    _model.conEmailAddressDesktopModel
                                                            .value !=
                                                        '') &&
                                                (_model.passwordText != null &&
                                                    _model.passwordText != '')),
                                            isEditIconVisible: false,
                                            onTap: () async {
                                              setState(() {
                                                _model.isError = false;
                                                _model.isSuccess = false;
                                              });
                                              unawaited(
                                                () async {
                                                  await action_blocks
                                                      .showLoadingDialog(
                                                          context);
                                                }(),
                                              );
                                              _model.updateUserAddressAPIRes =
                                                  await ManageContactDetailsGroup
                                                      .updateEmailAddressCall
                                                      .call(
                                                userId: FFAppState()
                                                    .selectedUserId
                                                    .toString(),
                                                emailAddress: _model
                                                    .emailAddressDesktopModel
                                                    .value,
                                                confirmEmailAddress: _model
                                                    .conEmailAddressDesktopModel
                                                    .value,
                                                currentPassword:
                                                    _model.passwordText,
                                                dynamicBaseURL:
                                                    FFAppState().dynamicBaseURL,
                                              );
                                              if ((_model
                                                      .updateUserAddressAPIRes
                                                      ?.succeeded ??
                                                  true)) {
                                                setState(() {
                                                  _model.isError = false;
                                                  _model.isSuccess = true;
                                                  _model.isEnabled = false;
                                                  _model.emailText = _model
                                                      .conEmailAddressDesktopModel
                                                      .value;
                                                });
                                              } else {
                                                setState(() {
                                                  _model.isError = true;
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
                            ),
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
        } else {
          return wrapWithModel(
            model: _model.added2FASecCompModel,
            updateCallback: () => setState(() {}),
            child: Added2FASecCompWidget(
              isFromManageUserDetails: true,
              confirmCallBack: () async {
                setState(() {
                  _model.isEnabled = true;
                  _model.isTwoFactAuth = false;
                });
              },
              cancelCallBack: () async {
                setState(() {
                  _model.isTwoFactAuth = false;
                });
              },
            ),
          );
        }
      },
    );
  }
}
