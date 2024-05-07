import '/backend/api_requests/api_calls.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/user_registration/customised_fields/custom_date_selector/custom_date_selector_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_captchax/custom_outlined_text_field_captchax_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_card_number/custom_outlined_text_field_card_number_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_d_o_b/custom_outlined_text_field_d_o_b_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_email/custom_outlined_text_field_email_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_s_s_n/custom_outlined_text_field_s_s_n_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'registration1_component_model.dart';
export 'registration1_component_model.dart';

class Registration1ComponentWidget extends StatefulWidget {
  const Registration1ComponentWidget({
    super.key,
    required this.nextCallback,
  });

  final Future Function()? nextCallback;

  @override
  State<Registration1ComponentWidget> createState() =>
      _Registration1ComponentWidgetState();
}

class _Registration1ComponentWidgetState
    extends State<Registration1ComponentWidget> with TickerProviderStateMixin {
  late Registration1ComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Registration1ComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await _model.actionCaptcha(context);
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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      children: [
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          tabletLandscape: false,
        ))
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (_model.hasErrorAPI)
                wrapWithModel(
                  model: _model.errorBannerOutlinedModel1,
                  updateCallback: () => setState(() {}),
                  child: ErrorBannerOutlinedWidget(
                    message: _model.errorAPI,
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
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Arial',
                              color: const Color(0xFFEA3423),
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: false,
                            ),
                      ),
                      const TextSpan(
                        text: ' Required Fields',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                      )
                    ],
                    style: const TextStyle(
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          1.0,
                          2.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.cardNumberTextFieldDModel,
                                  updateCallback: () => setState(() {}),
                                  child:
                                      CustomOutlinedTextFieldCardNumberWidget(
                                    enabled: true,
                                    title: 'Card Number',
                                    icon: const Icon(
                                      Icons.ten_k,
                                      color: Colors.transparent,
                                    ),
                                    hasIconAction: false,
                                    isRequired: true,
                                    infoMessage: '',
                                    errorMessage: _model.errorCardNumber,
                                    hasError: _model.hasErrorCardNumber,
                                    hintText: 'Enter your 16-digit card number',
                                    onIconTap: () async {},
                                    validate: () async {
                                      if (!((String cardNumber) {
                                        return (cardNumber.length ?? 0) >= 16;
                                      }(_model
                                          .cardNumberTextFieldDModel.value!))) {
                                        setState(() {
                                          _model.errorCardNumber =
                                              'Please enter at least 16 characters for CardNumber';
                                          _model.hasErrorCardNumber = true;
                                        });
                                      }
                                    },
                                    resetError: () async {
                                      setState(() {
                                        _model.errorCardNumber = ' ';
                                        _model.hasErrorCardNumber = false;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.customDateSelectorDModel,
                                  updateCallback: () => setState(() {}),
                                  child: CustomDateSelectorWidget(
                                    enabled: true,
                                    title: 'Expiration Date',
                                    isRequired: false,
                                    infoMessage: 'Card expiration date',
                                    errorMessage:
                                        _model.errorExpirationCardNumber,
                                    hasError:
                                        _model.hasErrorExpirationCardNumber,
                                    validate: () async {},
                                    resetError: () async {},
                                  ),
                                ),
                              ),
                            ),
                          ].divide(const SizedBox(width: 24.0)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Container(
                                decoration: const BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.sSNTextFieldDModel,
                                  updateCallback: () => setState(() {}),
                                  child: CustomOutlinedTextFieldSSNWidget(
                                    enabled: true,
                                    title: 'Social Security Number',
                                    icon: const Icon(
                                      Icons.ten_k,
                                      color: Colors.transparent,
                                    ),
                                    hasIconAction: false,
                                    isRequired: false,
                                    infoMessage:
                                        'The social security number you\nenter must match our records.',
                                    errorMessage:
                                        _model.errorSocialSecurityNumber,
                                    hasError:
                                        _model.hasErrorSocialSecurityNumber,
                                    onIconTap: () async {},
                                    validate: () async {
                                      if (!(((_model.sSNTextFieldDModel
                                                      .ssnValue!)
                                                  .length ??
                                              0) ==
                                          9)) {
                                        setState(() {
                                          _model.errorSocialSecurityNumber =
                                              'Please enter a valid ssn';
                                          _model.hasErrorSocialSecurityNumber =
                                              true;
                                        });
                                      }
                                    },
                                    resetError: () async {
                                      setState(() {
                                        _model.errorSocialSecurityNumber = ' ';
                                        _model.hasErrorSocialSecurityNumber =
                                            false;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                decoration: const BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.dobTextFieldDModel,
                                  updateCallback: () => setState(() {}),
                                  child: CustomOutlinedTextFieldDOBWidget(
                                    enabled: true,
                                    title: 'Date of Birth',
                                    icon: const Icon(
                                      Icons.ten_k,
                                      color: Colors.transparent,
                                    ),
                                    hasIconAction: true,
                                    isRequired: true,
                                    infoMessage:
                                        'The date of birth you enter\nmust match our records.',
                                    errorMessage: _model.errorDOB,
                                    hasError: _model.hasErrorDOB,
                                    onIconTap: () async {},
                                    validate: () async {
                                      if (!functions.dateValidator(
                                          _model.dobTextFieldDModel.value!)) {
                                        setState(() {
                                          _model.errorDOB = 'Invalid dob';
                                          _model.hasErrorDOB = true;
                                        });
                                      }
                                    },
                                    resetError: () async {
                                      setState(() {
                                        _model.errorDOB = ' ';
                                        _model.hasErrorDOB = false;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ].divide(const SizedBox(width: 24.0)),
                        ),
                      ].divide(const SizedBox(height: 16.0)),
                    ),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          1.0,
                          2.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Container(
                                decoration: const BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.emailTextFieldDModel,
                                  updateCallback: () => setState(() {}),
                                  child: CustomOutlinedTextFieldEmailWidget(
                                    enabled: true,
                                    title: 'Enter a Valid Email ID',
                                    icon: const Icon(
                                      Icons.ten_k,
                                      color: Colors.transparent,
                                    ),
                                    hasIconAction: false,
                                    isRequired: false,
                                    infoMessage: '',
                                    errorMessage: _model.errorEmail,
                                    hasError: _model.hasErrorEmail,
                                    hintText: 'Enter Valid Email',
                                    onIconTap: () async {},
                                    validate: () async {
                                      if (_model.emailTextFieldDModel.value !=
                                              null &&
                                          _model.emailTextFieldDModel.value !=
                                              '') {
                                        if (functions.isValidEmail(_model
                                            .emailTextFieldDModel.value!)) {
                                          if ((_model.confirmEmailTextFieldDModel
                                                          .value !=
                                                      null &&
                                                  _model.confirmEmailTextFieldDModel
                                                          .value !=
                                                      '') &&
                                              functions.isValidEmail(_model
                                                  .confirmEmailTextFieldDModel
                                                  .value!)) {
                                            if (_model.emailTextFieldDModel
                                                    .value ==
                                                _model
                                                    .confirmEmailTextFieldDModel
                                                    .value) {
                                              setState(() {
                                                _model.errorEmail = ' ';
                                                _model.hasErrorEmail = false;
                                                _model.errorConfirmEmail = ' ';
                                                _model.hasErrorConfirmEmail =
                                                    false;
                                              });
                                            } else {
                                              setState(() {
                                                _model.errorEmail = ' ';
                                                _model.errorConfirmEmail =
                                                    'Email Addresses do not match';
                                                _model.hasErrorEmail = true;
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
                                            _model.errorEmail =
                                                'Please enter a valid Email Address';
                                            _model.hasErrorEmail = true;
                                          });
                                          return;
                                        }
                                      } else {
                                        return;
                                      }
                                    },
                                    resetError: () async {
                                      setState(() {
                                        _model.errorEmail = ' ';
                                        _model.hasErrorEmail = false;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                decoration: const BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.confirmEmailTextFieldDModel,
                                  updateCallback: () => setState(() {}),
                                  child: CustomOutlinedTextFieldEmailWidget(
                                    enabled: true,
                                    title: 'Re-Enter Email ID',
                                    icon: const Icon(
                                      Icons.ten_k,
                                      color: Colors.transparent,
                                    ),
                                    hasIconAction: false,
                                    isRequired: false,
                                    infoMessage: '',
                                    errorMessage: _model.errorConfirmEmail,
                                    hasError: _model.hasErrorConfirmEmail,
                                    hintText: 'Re-enter Email',
                                    onIconTap: () async {},
                                    validate: () async {
                                      if (_model.confirmEmailTextFieldDModel
                                                  .value !=
                                              null &&
                                          _model.confirmEmailTextFieldDModel
                                                  .value !=
                                              '') {
                                        if (functions.isValidEmail(_model
                                            .confirmEmailTextFieldDModel
                                            .value!)) {
                                          if (functions.isValidEmail(_model
                                              .emailTextFieldDModel.value!)) {
                                            if (_model.emailTextFieldDModel
                                                    .value ==
                                                _model
                                                    .confirmEmailTextFieldDModel
                                                    .value) {
                                              setState(() {
                                                _model.errorEmail = ' ';
                                                _model.hasErrorEmail = false;
                                                _model.errorConfirmEmail = ' ';
                                                _model.hasErrorConfirmEmail =
                                                    false;
                                              });
                                            } else {
                                              setState(() {
                                                _model.errorEmail = ' ';
                                                _model.errorConfirmEmail =
                                                    'Email Addresses do not match';
                                                _model.hasErrorConfirmEmail =
                                                    true;
                                                _model.hasErrorEmail = true;
                                              });
                                            }

                                            return;
                                          } else {
                                            return;
                                          }
                                        } else {
                                          setState(() {
                                            _model.errorConfirmEmail =
                                                'Please enter a valid Email Address';
                                            _model.hasErrorConfirmEmail = true;
                                          });
                                          return;
                                        }
                                      } else {
                                        return;
                                      }
                                    },
                                    resetError: () async {
                                      setState(() {
                                        _model.errorConfirmEmail = ' ';
                                        _model.hasErrorConfirmEmail = false;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ].divide(const SizedBox(width: 24.0)),
                        ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                        ))
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 30.0,
                                height: 20.0,
                                decoration: const BoxDecoration(),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(2.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context).primary,
                                  ),
                                  child: Checkbox(
                                    value: _model.agreementCheckboxDValue ??=
                                        false,
                                    onChanged: (newValue) async {
                                      setState(() => _model
                                          .agreementCheckboxDValue = newValue!);
                                    },
                                    side: BorderSide(
                                      width: 2,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  'I agree the Exchange Credit Program may use the mailing and/or E-mail address I have provided to send me information about MILITARY STAR promotions, services, and financial information.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Arial',
                                        color: Colors.black,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            ],
                          ),
                      ].divide(const SizedBox(height: 16.0)),
                    ),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          1.0,
                          2.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.captchaTextFieldDModel,
                              updateCallback: () => setState(() {}),
                              child: CustomOutlinedTextFieldCaptchaxWidget(
                                enabled: true,
                                hasIconAction: false,
                                hasError: _model.hasErrorCaptcha,
                                icon: const Icon(
                                  Icons.ten_k,
                                  color: Colors.transparent,
                                ),
                                infoMessage: '',
                                use: 'registration',
                                captchaValue: _model.captchaValue,
                                onIconTap: () async {},
                                validate: () async {},
                                resetError: () async {
                                  setState(() {
                                    _model.hasErrorCaptcha = false;
                                  });
                                },
                                refreshCaptchaAction: () async {
                                  await _model.actionCaptcha(context);
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                        ),
                        if (MediaQuery.sizeOf(context).width >
                            kBreakpointMedium)
                          Flexible(
                            flex: 1,
                            child: Container(
                              width: double.infinity,
                              height: 60.0,
                              decoration: const BoxDecoration(),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  wrapWithModel(
                    model: _model.commonCancelButtonModel1,
                    updateCallback: () => setState(() {}),
                    child: CommonCancelButtonWidget(
                      title: 'Cancel',
                      onTap: () async {
                        context.safePop();
                      },
                    ),
                  ),
                  wrapWithModel(
                    model: _model.commonCustomButtonModel1,
                    updateCallback: () => setState(() {}),
                    child: CommonCustomButtonWidget(
                      titile: 'Next',
                      isDisabled: !((_model.cardNumberTextFieldDModel.value !=
                                  null &&
                              _model.cardNumberTextFieldDModel.value != '') &&
                          !_model.hasErrorCardNumber &&
                          (_model.sSNTextFieldDModel.ssnValue != null &&
                              _model.sSNTextFieldDModel.ssnValue != '') &&
                          !_model.hasErrorSocialSecurityNumber &&
                          (_model.dobTextFieldDModel.value != null &&
                              _model.dobTextFieldDModel.value != '') &&
                          !_model.hasErrorDOB &&
                          (_model.emailTextFieldDModel.value != null &&
                              _model.emailTextFieldDModel.value != '') &&
                          !_model.hasErrorEmail &&
                          (_model.confirmEmailTextFieldDModel.value != null &&
                              _model.confirmEmailTextFieldDModel.value != '') &&
                          !_model.hasErrorConfirmEmail &&
                          _model.agreementCheckboxDValue! &&
                          (_model.customDateSelectorDModel.month != null &&
                              _model.customDateSelectorDModel.month != '') &&
                          (_model.customDateSelectorDModel.year != null &&
                              _model.customDateSelectorDModel.year != '') &&
                          !_model.hasErrorCaptcha &&
                          (_model.captchaTextFieldDModel.value != null &&
                              _model.captchaTextFieldDModel.value != '')),
                      isEditIconVisible: false,
                      onTap: () async {
                        var shouldSetState = false;
                        if (((_model.captchaTextFieldDModel.textController.text
                                        .length ??
                                    0) ==
                                6) &&
                            (_model.captchaTextFieldDModel.textController
                                    .text ==
                                _model.captchaValue)) {
                          setState(() {
                            _model.hasErrorCaptcha = false;
                            _model.errorAPI = ' ';
                            _model.hasErrorAPI = false;
                          });
                          await action_blocks.showLoadingDialog(context);
                          _model.apiResponseCardInfo =
                              await RegistrationGroup.cardInfoCall.call(
                            cardNumber: _model.cardNumberTextFieldDModel.value,
                            expirationMonth: functions.getMonthNumber(
                                _model.customDateSelectorDModel.month!),
                            expiratonYear: functions.toInt(
                                _model.customDateSelectorDModel.year!,
                                'expirationYear'),
                            socialSecurityNumber: functions.toInt(
                                _model.sSNTextFieldDModel.ssnValue!, 'ssn'),
                            emailAddress: _model.emailTextFieldDModel.value,
                            confirmEmailAddress:
                                _model.confirmEmailTextFieldDModel.value,
                            dynamicBaseURL: FFAppState().dynamicBaseURL,
                            dOBDay: (String enteredDOB) {
                              return enteredDOB.split('/')[1];
                            }(_model.dobTextFieldDModel.value!),
                            dOBMonth: (String enteredDOB) {
                              return enteredDOB.split('/')[0];
                            }(_model.dobTextFieldDModel.value!),
                            dOBYear: (String enteredDOB) {
                              return enteredDOB.split('/')[2];
                            }(_model.dobTextFieldDModel.value!),
                            acceptRegistrationMarketing:
                                _model.agreementCheckboxDValue,
                          );
                          shouldSetState = true;
                          Navigator.pop(context);
                          if ((_model.apiResponseCardInfo?.succeeded ?? true)) {
                            await Future.wait([
                              Future(() async {
                                // share email to component 2
                                setState(() {
                                  FFAppState().validatedEmailRegistration =
                                      _model.emailTextFieldDModel.value!;
                                });
                              }),
                              Future(() async {
                                setState(() {
                                  _model.errorAPI = ' ';
                                  _model.hasErrorAPI = false;
                                });
                              }),
                            ]);
                            await widget.nextCallback?.call();
                            if (shouldSetState) setState(() {});
                            return;
                          } else {
                            setState(() {
                              _model.errorAPI = getJsonField(
                                (_model.apiResponseCardInfo?.jsonBody ?? ''),
                                r'''$.Message''',
                              ).toString();
                              _model.hasErrorAPI = true;
                            });
                          }

                          if (shouldSetState) setState(() {});
                          return;
                        } else {
                          setState(() {
                            _model.hasErrorCaptcha = true;
                            _model.errorAPI =
                                'Please enter verification code shown below.';
                            _model.hasErrorAPI = true;
                          });
                          if (shouldSetState) setState(() {});
                          return;
                        }

                        if (shouldSetState) setState(() {});
                      },
                    ),
                  ),
                ].divide(const SizedBox(width: 8.0)),
              ),
            ].divide(const SizedBox(height: 16.0)),
          ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation1']!),
        if (responsiveVisibility(
          context: context,
          desktop: false,
        ))
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (_model.hasErrorAPI)
                wrapWithModel(
                  model: _model.errorBannerOutlinedModel2,
                  updateCallback: () => setState(() {}),
                  child: ErrorBannerOutlinedWidget(
                    message: _model.errorAPI,
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
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Arial',
                              color: const Color(0xFFEA3423),
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: false,
                            ),
                      ),
                      const TextSpan(
                        text: ' Required Fields',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                      )
                    ],
                    style: const TextStyle(
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          1.0,
                          2.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        wrapWithModel(
                          model: _model.cardNumberTextFieldMModel,
                          updateCallback: () => setState(() {}),
                          child: CustomOutlinedTextFieldCardNumberWidget(
                            enabled: true,
                            title: 'Card Number',
                            icon: const Icon(
                              Icons.ten_k,
                              color: Colors.transparent,
                            ),
                            hasIconAction: false,
                            isRequired: true,
                            infoMessage: '',
                            errorMessage: _model.errorCardNumber,
                            hasError: _model.hasErrorCardNumber,
                            hintText: 'Enter your 16-digit card number',
                            onIconTap: () async {},
                            validate: () async {
                              if (!((String cardNumber) {
                                return (cardNumber.length ?? 0) >= 16;
                              }(_model.cardNumberTextFieldMModel.value!))) {
                                setState(() {
                                  _model.errorCardNumber =
                                      'Please enter at least 16 characters for CardNumber';
                                  _model.hasErrorCardNumber = true;
                                });
                              }
                            },
                            resetError: () async {
                              setState(() {
                                _model.errorCardNumber = ' ';
                                _model.hasErrorCardNumber = false;
                              });
                            },
                          ),
                        ),
                        wrapWithModel(
                          model: _model.customDateSelectorMModel,
                          updateCallback: () => setState(() {}),
                          child: CustomDateSelectorWidget(
                            enabled: true,
                            title: 'Expiration Date',
                            isRequired: false,
                            infoMessage: 'Card expiration date',
                            errorMessage: _model.errorExpirationCardNumber,
                            hasError: _model.hasErrorExpirationCardNumber,
                            validate: () async {},
                            resetError: () async {},
                          ),
                        ),
                        wrapWithModel(
                          model: _model.sSNTextFieldMModel,
                          updateCallback: () => setState(() {}),
                          child: CustomOutlinedTextFieldSSNWidget(
                            enabled: true,
                            title: 'Social Security Number',
                            icon: const Icon(
                              Icons.ten_k,
                              color: Colors.transparent,
                            ),
                            hasIconAction: false,
                            isRequired: false,
                            infoMessage:
                                'The social security number you\nenter must match our records.',
                            errorMessage: _model.errorSocialSecurityNumber,
                            hasError: _model.hasErrorSocialSecurityNumber,
                            onIconTap: () async {},
                            validate: () async {
                              if (!(((_model.sSNTextFieldMModel.ssnValue!)
                                          .length ??
                                      0) ==
                                  9)) {
                                setState(() {
                                  _model.errorSocialSecurityNumber =
                                      'Please enter a valid ssn';
                                  _model.hasErrorSocialSecurityNumber = true;
                                });
                              }
                            },
                            resetError: () async {
                              setState(() {
                                _model.errorSocialSecurityNumber = ' ';
                                _model.hasErrorSocialSecurityNumber = false;
                              });
                            },
                          ),
                        ),
                        wrapWithModel(
                          model: _model.dobTextFieldMModel,
                          updateCallback: () => setState(() {}),
                          child: CustomOutlinedTextFieldDOBWidget(
                            enabled: true,
                            title: 'Date of Birth',
                            icon: const Icon(
                              Icons.ten_k,
                              color: Colors.transparent,
                            ),
                            hasIconAction: true,
                            isRequired: true,
                            infoMessage:
                                'The date of birth you enter\nmust match our records.',
                            errorMessage: _model.errorDOB,
                            hasError: _model.hasErrorDOB,
                            onIconTap: () async {},
                            validate: () async {
                              if (!functions.dateValidator(
                                  _model.dobTextFieldMModel.value!)) {
                                setState(() {
                                  _model.errorDOB = 'Invalid dob';
                                  _model.hasErrorDOB = true;
                                });
                              }
                            },
                            resetError: () async {
                              setState(() {
                                _model.errorDOB = ' ';
                                _model.hasErrorDOB = false;
                              });
                            },
                          ),
                        ),
                      ].divide(const SizedBox(height: 16.0)),
                    ),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          1.0,
                          2.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        wrapWithModel(
                          model: _model.emailTextFieldMModel,
                          updateCallback: () => setState(() {}),
                          child: CustomOutlinedTextFieldEmailWidget(
                            enabled: true,
                            title: 'Enter a Valid Email ID',
                            icon: const Icon(
                              Icons.ten_k,
                              color: Colors.transparent,
                            ),
                            hasIconAction: false,
                            isRequired: false,
                            infoMessage: '',
                            errorMessage: _model.errorEmail,
                            hasError: _model.hasErrorEmail,
                            hintText: 'Enter Valid Email',
                            onIconTap: () async {},
                            validate: () async {
                              if (_model.emailTextFieldMModel.value != null &&
                                  _model.emailTextFieldMModel.value != '') {
                                if (functions.isValidEmail(
                                    _model.emailTextFieldMModel.value!)) {
                                  if ((_model.confirmEmailTextFieldMModel
                                                  .value !=
                                              null &&
                                          _model.confirmEmailTextFieldMModel
                                                  .value !=
                                              '') &&
                                      functions.isValidEmail(_model
                                          .confirmEmailTextFieldMModel
                                          .value!)) {
                                    if (_model.emailTextFieldMModel.value ==
                                        _model.confirmEmailTextFieldMModel
                                            .value) {
                                      setState(() {
                                        _model.errorEmail = ' ';
                                        _model.hasErrorEmail = false;
                                        _model.errorConfirmEmail = ' ';
                                        _model.hasErrorConfirmEmail = false;
                                      });
                                    } else {
                                      setState(() {
                                        _model.errorEmail = ' ';
                                        _model.errorConfirmEmail =
                                            'Email Addresses do not match';
                                        _model.hasErrorEmail = true;
                                        _model.hasErrorConfirmEmail = true;
                                      });
                                    }

                                    return;
                                  } else {
                                    return;
                                  }
                                } else {
                                  setState(() {
                                    _model.errorEmail =
                                        'Please enter a valid Email Address';
                                    _model.hasErrorEmail = true;
                                  });
                                  return;
                                }
                              } else {
                                return;
                              }
                            },
                            resetError: () async {
                              setState(() {
                                _model.errorEmail = ' ';
                                _model.hasErrorEmail = false;
                              });
                            },
                          ),
                        ),
                        wrapWithModel(
                          model: _model.confirmEmailTextFieldMModel,
                          updateCallback: () => setState(() {}),
                          child: CustomOutlinedTextFieldEmailWidget(
                            enabled: true,
                            title: 'Re-Enter Email ID',
                            icon: const Icon(
                              Icons.ten_k,
                              color: Colors.transparent,
                            ),
                            hasIconAction: false,
                            isRequired: false,
                            infoMessage: '',
                            errorMessage: _model.errorConfirmEmail,
                            hasError: _model.hasErrorConfirmEmail,
                            hintText: 'Re-enter Email',
                            onIconTap: () async {},
                            validate: () async {
                              if (_model.confirmEmailTextFieldMModel.value !=
                                      null &&
                                  _model.confirmEmailTextFieldMModel.value !=
                                      '') {
                                if (functions.isValidEmail(
                                    _model.emailTextFieldMModel.value!)) {
                                  if (functions.isValidEmail(
                                      _model.emailTextFieldMModel.value!)) {
                                    if (_model.emailTextFieldMModel.value ==
                                        _model.confirmEmailTextFieldMModel
                                            .value) {
                                      setState(() {
                                        _model.errorEmail = ' ';
                                        _model.hasErrorEmail = false;
                                        _model.errorConfirmEmail = ' ';
                                        _model.hasErrorConfirmEmail = false;
                                      });
                                    } else {
                                      setState(() {
                                        _model.errorEmail = ' ';
                                        _model.errorConfirmEmail =
                                            'Email Addresses do not match';
                                        _model.hasErrorConfirmEmail = true;
                                        _model.hasErrorEmail = true;
                                      });
                                    }

                                    return;
                                  } else {
                                    return;
                                  }
                                } else {
                                  setState(() {
                                    _model.errorConfirmEmail =
                                        'Please enter a valid Email Address';
                                    _model.hasErrorConfirmEmail = true;
                                  });
                                  return;
                                }
                              } else {
                                return;
                              }
                            },
                            resetError: () async {
                              setState(() {
                                _model.errorConfirmEmail = ' ';
                                _model.hasErrorConfirmEmail = false;
                              });
                            },
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Theme(
                              data: ThemeData(
                                checkboxTheme: CheckboxThemeData(
                                  visualDensity: VisualDensity.compact,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2.0),
                                  ),
                                ),
                                unselectedWidgetColor:
                                    FlutterFlowTheme.of(context).primary,
                              ),
                              child: Checkbox(
                                value: _model.agreementCheckboxMValue ??= false,
                                onChanged: (newValue) async {
                                  setState(() => _model
                                      .agreementCheckboxMValue = newValue!);
                                },
                                side: BorderSide(
                                  width: 2,
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                checkColor: FlutterFlowTheme.of(context).info,
                              ),
                            ),
                            Flexible(
                              child: Text(
                                'I agree the Exchange Credit Program may use the mailing and/or E-mail address I have provided to send me information about MILITARY STAR promotions, services, and financial information.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Arial',
                                      color: Colors.black,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ].divide(const SizedBox(height: 16.0)),
                    ),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          1.0,
                          2.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: wrapWithModel(
                      model: _model.captchaTextFieldMModel,
                      updateCallback: () => setState(() {}),
                      child: CustomOutlinedTextFieldCaptchaxWidget(
                        enabled: true,
                        hasIconAction: false,
                        hasError: _model.hasErrorCaptcha,
                        icon: const Icon(
                          Icons.ten_k,
                          color: Colors.transparent,
                        ),
                        infoMessage: '',
                        use: 'registration',
                        captchaValue: _model.captchaValue,
                        onIconTap: () async {},
                        validate: () async {},
                        resetError: () async {
                          setState(() {
                            _model.hasErrorCaptcha = false;
                          });
                        },
                        refreshCaptchaAction: () async {
                          await _model.actionCaptcha(context);
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  wrapWithModel(
                    model: _model.commonCancelButtonModel2,
                    updateCallback: () => setState(() {}),
                    child: CommonCancelButtonWidget(
                      title: 'Cancel',
                      onTap: () async {
                        context.safePop();
                      },
                    ),
                  ),
                  wrapWithModel(
                    model: _model.commonCustomButtonModel2,
                    updateCallback: () => setState(() {}),
                    child: CommonCustomButtonWidget(
                      titile: 'Next',
                      isDisabled: !((_model.cardNumberTextFieldMModel.value !=
                                  null &&
                              _model.cardNumberTextFieldMModel.value != '') &&
                          !_model.hasErrorCardNumber &&
                          (_model.customDateSelectorMModel.month != null &&
                              _model.customDateSelectorMModel.month != '') &&
                          (_model.customDateSelectorMModel.year != null &&
                              _model.customDateSelectorMModel.year != '') &&
                          (_model.dobTextFieldMModel.value != null &&
                              _model.dobTextFieldMModel.value != '') &&
                          !_model.hasErrorDOB &&
                          (_model.sSNTextFieldMModel.ssnValue != null &&
                              _model.sSNTextFieldMModel.ssnValue != '') &&
                          !_model.hasErrorSocialSecurityNumber &&
                          (_model.emailTextFieldMModel.value != null &&
                              _model.emailTextFieldMModel.value != '') &&
                          !_model.hasErrorEmail &&
                          (_model.confirmEmailTextFieldMModel.value != null &&
                              _model.confirmEmailTextFieldMModel.value != '') &&
                          !_model.hasErrorConfirmEmail &&
                          _model.agreementCheckboxMValue! &&
                          (_model.captchaTextFieldMModel.value != null &&
                              _model.captchaTextFieldMModel.value != '') &&
                          !_model.hasErrorCaptcha),
                      isEditIconVisible: false,
                      onTap: () async {
                        var shouldSetState = false;
                        if (((_model.captchaTextFieldMModel.textController.text
                                        .length ??
                                    0) ==
                                6) &&
                            (_model.captchaTextFieldMModel.textController
                                    .text ==
                                _model.captchaValue)) {
                          setState(() {
                            _model.hasErrorCaptcha = false;
                            _model.errorAPI = ' ';
                            _model.hasErrorAPI = false;
                          });
                          await action_blocks.showLoadingDialog(context);
                          _model.apiResponseCardInfoM =
                              await RegistrationGroup.cardInfoCall.call(
                            cardNumber: _model.cardNumberTextFieldMModel.value,
                            expirationMonth: functions.getMonthNumber(
                                _model.customDateSelectorMModel.month!),
                            expiratonYear: functions.toInt(
                                _model.customDateSelectorMModel.year!,
                                'expirationYear'),
                            socialSecurityNumber: functions.toInt(
                                _model.sSNTextFieldMModel.ssnValue!, 'ssn'),
                            dateOfBirth: _model.dobTextFieldMModel.value,
                            emailAddress: _model.emailTextFieldMModel.value,
                            confirmEmailAddress:
                                _model.confirmEmailTextFieldMModel.value,
                            dynamicBaseURL: FFAppState().dynamicBaseURL,
                            dOBDay: (String enteredDOB) {
                              return enteredDOB.split('/')[1];
                            }(_model.dobTextFieldMModel.value!),
                            dOBMonth: (String enteredDOB) {
                              return enteredDOB.split('/')[0];
                            }(_model.dobTextFieldMModel.value!),
                            dOBYear: (String enteredDOB) {
                              return enteredDOB.split('/')[2];
                            }(_model.dobTextFieldMModel.value!),
                            acceptRegistrationMarketing:
                                _model.agreementCheckboxMValue,
                          );
                          shouldSetState = true;
                          Navigator.pop(context);
                          if ((_model.apiResponseCardInfoM?.succeeded ??
                              true)) {
                            await Future.wait([
                              Future(() async {
                                // share email to component 2
                                setState(() {
                                  FFAppState().validatedEmailRegistration =
                                      _model.emailTextFieldMModel.value!;
                                });
                              }),
                              Future(() async {
                                setState(() {
                                  _model.errorAPI = ' ';
                                  _model.hasErrorAPI = false;
                                });
                              }),
                            ]);
                            await widget.nextCallback?.call();
                            if (shouldSetState) setState(() {});
                            return;
                          } else {
                            setState(() {
                              _model.errorAPI = getJsonField(
                                (_model.apiResponseCardInfoM?.jsonBody ?? ''),
                                r'''$.Message''',
                              ).toString();
                              _model.hasErrorAPI = true;
                            });
                          }

                          if (shouldSetState) setState(() {});
                          return;
                        } else {
                          setState(() {
                            _model.hasErrorCaptcha = true;
                            _model.errorAPI =
                                'Please enter verification code shown below.';
                            _model.hasErrorAPI = true;
                          });
                          if (shouldSetState) setState(() {});
                          return;
                        }

                        if (shouldSetState) setState(() {});
                      },
                    ),
                  ),
                ].divide(const SizedBox(width: 8.0)),
              ),
            ].divide(const SizedBox(height: 16.0)),
          ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation2']!),
      ],
    );
  }
}
