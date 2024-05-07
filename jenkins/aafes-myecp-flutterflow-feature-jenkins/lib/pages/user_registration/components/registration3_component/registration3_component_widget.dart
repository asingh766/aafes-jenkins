import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_general/custom_outlined_text_field_general_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_phone/custom_outlined_text_field_phone_widget.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'registration3_component_model.dart';
export 'registration3_component_model.dart';

class Registration3ComponentWidget extends StatefulWidget {
  const Registration3ComponentWidget({
    super.key,
    this.nextCallback,
    this.email,
  });

  final Future Function()? nextCallback;
  final String? email;

  @override
  State<Registration3ComponentWidget> createState() =>
      _Registration3ComponentWidgetState();
}

class _Registration3ComponentWidgetState
    extends State<Registration3ComponentWidget> with TickerProviderStateMixin {
  late Registration3ComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Registration3ComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.securityQuestionAnswer1 = '';
        _model.securityQuestionAnswer2 = '';
        _model.securityQuestionAnswer3 = '';
      });
      await action_blocks.showLoadingDialog(context);
      await Future.wait([
        Future(() async {
          _model.apiSecurityQuestion1D =
              await SecurityAlertsGroup.securityQuestionsCall.call(
            type: '1',
            dynamicBaseURL: FFAppState().dynamicBaseURL,
          );
          if ((_model.apiSecurityQuestion1D?.succeeded ?? true)) {
            setState(() {
              _model.securityQuestion1 =
                  ((_model.apiSecurityQuestion1D?.jsonBody ?? '')
                          .toList()
                          .map<SecurityQuestionStruct?>(
                              SecurityQuestionStruct.maybeFromMap)
                          .toList() as Iterable<SecurityQuestionStruct?>)
                      .withoutNulls
                      .toList()
                      .cast<SecurityQuestionStruct>();
            });
          }
        }),
        Future(() async {
          _model.apiSecurityQuestion2D =
              await SecurityAlertsGroup.securityQuestionsCall.call(
            type: '2',
            dynamicBaseURL: FFAppState().dynamicBaseURL,
          );
          if ((_model.apiSecurityQuestion2D?.succeeded ?? true)) {
            setState(() {
              _model.securityQuestion2 =
                  ((_model.apiSecurityQuestion2D?.jsonBody ?? '')
                          .toList()
                          .map<SecurityQuestionStruct?>(
                              SecurityQuestionStruct.maybeFromMap)
                          .toList() as Iterable<SecurityQuestionStruct?>)
                      .withoutNulls
                      .toList()
                      .cast<SecurityQuestionStruct>();
            });
          }
        }),
        Future(() async {
          _model.apiSecurityQuestion3D =
              await SecurityAlertsGroup.securityQuestionsCall.call(
            type: '3',
            dynamicBaseURL: FFAppState().dynamicBaseURL,
          );
          if ((_model.apiSecurityQuestion3D?.succeeded ?? true)) {
            setState(() {
              _model.securityQuestion3 =
                  ((_model.apiSecurityQuestion3D?.jsonBody ?? '')
                          .toList()
                          .map<SecurityQuestionStruct?>(
                              SecurityQuestionStruct.maybeFromMap)
                          .toList() as Iterable<SecurityQuestionStruct?>)
                      .withoutNulls
                      .toList()
                      .cast<SecurityQuestionStruct>();
            });
          }
        }),
      ]);
      unawaited(
        () async {
          Navigator.pop(context);
        }(),
      );
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
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                      )
                    ],
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Arial',
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: false,
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
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.userIdTextFieldDModel,
                          updateCallback: () => setState(() {}),
                          child: CustomOutlinedTextFieldGeneralWidget(
                            enabled: true,
                            title: 'User ID',
                            icon: const Icon(
                              Icons.ten_k,
                              color: Colors.transparent,
                            ),
                            hasIconAction: false,
                            isRequired: true,
                            infoMessage: '',
                            errorMessage: _model.errorUserId,
                            hasError: _model.hasErrorUserId,
                            hintText: 'Enter your User ID',
                            defaultFocus: false,
                            onIconTap: () async {},
                            validate: () async {
                              if (functions.containsSpecialCharacters(
                                  _model.userIdTextFieldDModel.value!)) {
                                setState(() {
                                  _model.errorUserId =
                                      'Invalid User ID. Your User ID may not contain any special characters (&,%,\$,!,Space etc.)';
                                  _model.hasErrorUserId = true;
                                });
                                return;
                              } else {
                                if (((_model.userIdTextFieldDModel.value!)
                                            .length ??
                                        0) <
                                    5) {
                                  setState(() {
                                    _model.errorUserId =
                                        'User ID must be atleast 6 characters';
                                    _model.hasErrorUserId = true;
                                  });
                                  return;
                                } else {
                                  return;
                                }
                              }
                            },
                            resetError: () async {
                              setState(() {
                                _model.errorUserId = ' ';
                                _model.hasErrorUserId = false;
                              });
                            },
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: custom_widgets.PasswordField(
                                width: 1.0,
                                height: 100.0,
                                matchWidth: false,
                                label: 'New Password',
                                error: _model.errorPassword,
                                hasError: _model.hasErrorPassword,
                                alignment: PSIAlignment.right,
                                onFocusChange: () async {
                                  await _model.validatePasswordFlow(context);
                                  setState(() {});
                                },
                                onResetError: () async {
                                  setState(() {
                                    _model.errorPassword = ' ';
                                    _model.hasErrorPassword = false;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: custom_widgets.ConfirmPasswordField(
                                width: 1.0,
                                height: 100.0,
                                matchWidth: false,
                                label: 'Confirm Password',
                                error: _model.errorConfirmPassword,
                                hasError: _model.hasErrorConfirmPassword,
                                alignment: PSIAlignment.right,
                                onFocusChange: () async {
                                  await _model
                                      .validateConfirmPasswordFlow(context);
                                  setState(() {});
                                },
                                onResetError: () async {
                                  setState(() {
                                    _model.errorConfirmPassword = ' ';
                                    _model.hasErrorConfirmPassword = false;
                                  });
                                },
                              ),
                            ),
                          ].divide(const SizedBox(width: 24.0)),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Container(
                                    decoration: const BoxDecoration(),
                                    child: wrapWithModel(
                                      model: _model.homePhoneTextFieldDModel,
                                      updateCallback: () => setState(() {}),
                                      child: CustomOutlinedTextFieldPhoneWidget(
                                        enabled: true,
                                        title: 'Home Phone Number',
                                        icon: const Icon(
                                          Icons.ten_k,
                                          color: Colors.transparent,
                                        ),
                                        hasIconAction: false,
                                        isRequired: true,
                                        infoMessage: '',
                                        errorMessage:
                                            _model.errorHomePhoneNumber,
                                        hasError:
                                            _model.hasErrorHomePhoneNumber,
                                        onIconTap: () async {},
                                        validate: () async {
                                          if (!(((_model.homePhoneTextFieldDModel
                                                          .value!)
                                                      .length ??
                                                  0) ==
                                              14)) {
                                            setState(() {
                                              _model.errorHomePhoneNumber =
                                                  'Please enter a valid number';
                                              _model.hasErrorHomePhoneNumber =
                                                  true;
                                            });
                                          }
                                        },
                                        resetError: () async {
                                          setState(() {
                                            _model.errorHomePhoneNumber = ' ';
                                            _model.hasErrorHomePhoneNumber =
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
                                      model: _model.workPhoneTextFieldDModel,
                                      updateCallback: () => setState(() {}),
                                      child: CustomOutlinedTextFieldPhoneWidget(
                                        enabled: true,
                                        title: 'Work Phone Number',
                                        icon: const Icon(
                                          Icons.ten_k,
                                          color: Colors.transparent,
                                        ),
                                        hasIconAction: false,
                                        isRequired: false,
                                        infoMessage: '',
                                        errorMessage:
                                            _model.errorWorkPhoneNumber,
                                        hasError:
                                            _model.hasErrorWorkPhoneNumber,
                                        onIconTap: () async {},
                                        validate: () async {},
                                        resetError: () async {},
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    decoration: const BoxDecoration(),
                                    child: wrapWithModel(
                                      model: _model.mobilePhoneTextFieldDModel,
                                      updateCallback: () => setState(() {}),
                                      child: CustomOutlinedTextFieldPhoneWidget(
                                        enabled: true,
                                        title: 'Mobile Phone Number',
                                        icon: const Icon(
                                          Icons.ten_k,
                                          color: Colors.transparent,
                                        ),
                                        hasIconAction: false,
                                        isRequired: false,
                                        infoMessage: '',
                                        errorMessage:
                                            _model.errorMobilePhoneNumber,
                                        hasError:
                                            _model.hasErrorMobilePhoneNumber,
                                        onIconTap: () async {},
                                        validate: () async {},
                                        resetError: () async {},
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(const SizedBox(width: 24.0)),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 0.0),
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'NOTE:',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Arial',
                                            color: Colors.black,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                            fontStyle: FontStyle.italic,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    const TextSpan(
                                      text:
                                          ' Your mobile number is required for URGENT notifications concerning your Exchange Credit Program account(s)',
                                      style: TextStyle(),
                                    )
                                  ],
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
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Please create and answer your 3 security questions',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Arial',
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    fontStyle: FontStyle.italic,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Security Question 1',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Arial',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  TextSpan(
                                    text: ' *',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context).error,
                                      fontSize: 14.0,
                                    ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Arial',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowDropDown<int>(
                                  controller: _model
                                          .securityQuestionDropDown1ValueController ??=
                                      FormFieldController<int>(
                                    _model.securityQuestionDropDown1Value ??=
                                        -1,
                                  ),
                                  options: List<int>.from(_model
                                      .securityQuestion1
                                      .map((e) => e.questionID)
                                      .toList()),
                                  optionLabels: _model.securityQuestion1
                                      .map((e) => e.question)
                                      .toList(),
                                  onChanged: (val) => setState(() => _model
                                      .securityQuestionDropDown1Value = val),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Arial',
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                  hintText: 'Select a Question',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 22.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderWidth: 1.0,
                                  borderRadius: 6.0,
                                  margin: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                                custom_widgets.CustomOutlinedTextFieldWidget(
                                  width: double.infinity,
                                  height: 120.0,
                                  readOnly: false,
                                  value: _model.securityQuestionAnswer1,
                                  onValueChange: (data) async {
                                    setState(() {
                                      _model.securityQuestionAnswer1 = data;
                                    });
                                  },
                                  hasError: (error) async {
                                    setState(() {
                                      _model.hasErrorSQ1 = error;
                                    });
                                  },
                                ),
                              ].divide(const SizedBox(height: 16.0)),
                            ),
                          ].divide(const SizedBox(height: 4.0)),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Security Question 2',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Arial',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  TextSpan(
                                    text: ' *',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context).error,
                                      fontSize: 14.0,
                                    ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Arial',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowDropDown<int>(
                                  controller: _model
                                          .securityQuestionDropDown2ValueController ??=
                                      FormFieldController<int>(
                                    _model.securityQuestionDropDown2Value ??=
                                        -1,
                                  ),
                                  options: List<int>.from(_model
                                      .securityQuestion2
                                      .map((e) => e.questionID)
                                      .toList()),
                                  optionLabels: _model.securityQuestion2
                                      .map((e) => e.question)
                                      .toList(),
                                  onChanged: (val) => setState(() => _model
                                      .securityQuestionDropDown2Value = val),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Arial',
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                  hintText: 'Select a Question',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 22.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderWidth: 1.0,
                                  borderRadius: 6.0,
                                  margin: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                                custom_widgets.CustomOutlinedTextFieldWidget(
                                  width: double.infinity,
                                  height: 120.0,
                                  readOnly: false,
                                  value: _model.securityQuestionAnswer2,
                                  onValueChange: (data) async {
                                    setState(() {
                                      _model.securityQuestionAnswer2 = data;
                                    });
                                  },
                                  hasError: (error) async {
                                    setState(() {
                                      _model.hasErrorSQ2 = error;
                                    });
                                  },
                                ),
                              ].divide(const SizedBox(height: 16.0)),
                            ),
                          ].divide(const SizedBox(height: 4.0)),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Security Question 3',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Arial',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  TextSpan(
                                    text: ' *',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context).error,
                                      fontSize: 14.0,
                                    ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Arial',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowDropDown<int>(
                                  controller: _model
                                          .securityQuestionDropDown3ValueController ??=
                                      FormFieldController<int>(
                                    _model.securityQuestionDropDown3Value ??=
                                        -1,
                                  ),
                                  options: List<int>.from(_model
                                      .securityQuestion3
                                      .map((e) => e.questionID)
                                      .toList()),
                                  optionLabels: _model.securityQuestion3
                                      .map((e) => e.question)
                                      .toList(),
                                  onChanged: (val) => setState(() => _model
                                      .securityQuestionDropDown3Value = val),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Arial',
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                  hintText: 'Select a Question',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 22.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderWidth: 1.0,
                                  borderRadius: 6.0,
                                  margin: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                                custom_widgets.CustomOutlinedTextFieldWidget(
                                  width: double.infinity,
                                  height: 120.0,
                                  readOnly: false,
                                  value: _model.securityQuestionAnswer3,
                                  onValueChange: (data) async {
                                    setState(() {
                                      _model.securityQuestionAnswer3 = data;
                                    });
                                  },
                                  hasError: (error) async {
                                    setState(() {
                                      _model.hasErrorSQ3 = error;
                                    });
                                  },
                                ),
                              ].divide(const SizedBox(height: 16.0)),
                            ),
                          ].divide(const SizedBox(height: 4.0)),
                        ),
                      ].divide(const SizedBox(height: 32.0)),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  wrapWithModel(
                    model: _model.commonCancelButtonDModel,
                    updateCallback: () => setState(() {}),
                    child: CommonCancelButtonWidget(
                      title: 'Cancel',
                      onTap: () async {},
                    ),
                  ),
                  wrapWithModel(
                    model: _model.commonCustomButtonDModel,
                    updateCallback: () => setState(() {}),
                    child: CommonCustomButtonWidget(
                      titile: 'Next',
                      isDisabled: !((_model.userIdTextFieldDModel.value !=
                                  null &&
                              _model.userIdTextFieldDModel.value != '') &&
                          !_model.hasErrorUserId &&
                          !_model.hasErrorPassword &&
                          !_model.hasErrorConfirmPassword &&
                          (_model.homePhoneTextFieldDModel.value != null &&
                              _model.homePhoneTextFieldDModel.value != '') &&
                          !_model.hasErrorHomePhoneNumber &&
                          (_model.securityQuestionAnswer1 != '') &&
                          (_model.securityQuestionAnswer2 != '') &&
                          (_model.securityQuestionAnswer3 != '') &&
                          !_model.hasErrorSQ1 &&
                          !_model.hasErrorSQ2 &&
                          !_model.hasErrorSQ3 &&
                          (_model.securityQuestionDropDown1Value != null) &&
                          (_model.securityQuestionDropDown2Value != null) &&
                          (_model.securityQuestionDropDown3Value != null) &&
                          (FFAppState().password != '') &&
                          (FFAppState().confirmPassword != '')),
                      isEditIconVisible: false,
                      onTap: () async {
                        await action_blocks.showLoadingDialog(context);
                        _model.apiResponseCreateProfile =
                            await RegistrationGroup.createProfileCall.call(
                          userId: _model.userIdTextFieldDModel.value,
                          homePhoneNumber:
                              _model.homePhoneTextFieldDModel.value,
                          workPhoneNumber:
                              _model.workPhoneTextFieldDModel.value,
                          mobilePhoneNumber:
                              _model.mobilePhoneTextFieldDModel.value,
                          securityQuestion1:
                              _model.securityQuestionDropDown1Value?.toString(),
                          password: FFAppState().password,
                          confirmPassword: FFAppState().confirmPassword,
                          securityQuestion2:
                              _model.securityQuestionDropDown2Value?.toString(),
                          securityQuestion3:
                              _model.securityQuestionDropDown3Value?.toString(),
                          answer1: _model.securityQuestionAnswer1,
                          answer2: _model.securityQuestionAnswer2,
                          answer3: _model.securityQuestionAnswer3,
                          dynamicBaseURL: FFAppState().dynamicBaseURL,
                          email: widget.email,
                        );
                        Navigator.pop(context);
                        if ((_model.apiResponseCreateProfile?.succeeded ??
                            true)) {
                          setState(() {
                            _model.errorAPI = ' ';
                            _model.hasErrorAPI = false;
                          });
                          await widget.nextCallback?.call();
                        } else {
                          setState(() {
                            _model.errorAPI = getJsonField(
                              (_model.apiResponseCreateProfile?.jsonBody ?? ''),
                              r'''$.Message''',
                            ).toString();
                            _model.hasErrorAPI = true;
                          });
                        }

                        setState(() {});
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
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                      )
                    ],
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Arial',
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: false,
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
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.userIdTextFieldMModel,
                          updateCallback: () => setState(() {}),
                          child: CustomOutlinedTextFieldGeneralWidget(
                            enabled: true,
                            title: 'User ID',
                            icon: const Icon(
                              Icons.ten_k,
                              color: Colors.transparent,
                            ),
                            hasIconAction: false,
                            isRequired: true,
                            infoMessage: '',
                            errorMessage: _model.errorUserId,
                            hasError: _model.hasErrorUserId,
                            hintText: 'Enter your User ID',
                            defaultFocus: false,
                            onIconTap: () async {},
                            validate: () async {
                              if (functions.containsSpecialCharacters(
                                  _model.userIdTextFieldMModel.value!)) {
                                setState(() {
                                  _model.errorUserId =
                                      'Invalid User ID. Your User ID may not contain any special characters (&,%,\$,!,Space etc.)';
                                  _model.hasErrorUserId = true;
                                });
                                return;
                              } else {
                                if (((_model.userIdTextFieldMModel.value!)
                                            .length ??
                                        0) <
                                    5) {
                                  setState(() {
                                    _model.errorUserId =
                                        'User ID must be atleast 6 characters';
                                    _model.hasErrorUserId = true;
                                  });
                                  return;
                                } else {
                                  return;
                                }
                              }
                            },
                            resetError: () async {
                              setState(() {
                                _model.errorUserId = ' ';
                                _model.hasErrorUserId = false;
                              });
                            },
                          ),
                        ),
                        custom_widgets.PasswordField(
                          width: double.infinity,
                          height: 100.0,
                          matchWidth: false,
                          label: 'New Password',
                          error: _model.errorPassword,
                          hasError: _model.hasErrorPassword,
                          alignment: PSIAlignment.bottom,
                          onFocusChange: () async {
                            await _model.validatePasswordFlow(context);
                            setState(() {});
                          },
                          onResetError: () async {
                            setState(() {
                              _model.errorPassword = ' ';
                              _model.hasErrorPassword = false;
                            });
                          },
                        ),
                        custom_widgets.ConfirmPasswordField(
                          width: double.infinity,
                          height: 100.0,
                          matchWidth: false,
                          label: 'Confirm Password',
                          error: _model.errorConfirmPassword,
                          hasError: _model.hasErrorConfirmPassword,
                          alignment: PSIAlignment.bottom,
                          onFocusChange: () async {
                            await _model.validateConfirmPasswordFlow(context);
                            setState(() {});
                          },
                          onResetError: () async {
                            setState(() {
                              _model.errorConfirmPassword = ' ';
                              _model.hasErrorConfirmPassword = false;
                            });
                          },
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            wrapWithModel(
                              model: _model.homePhoneTextFieldMModel,
                              updateCallback: () => setState(() {}),
                              child: CustomOutlinedTextFieldPhoneWidget(
                                enabled: true,
                                title: 'Home Phone Number',
                                icon: const Icon(
                                  Icons.ten_k,
                                  color: Colors.transparent,
                                ),
                                hasIconAction: false,
                                isRequired: true,
                                infoMessage: '',
                                errorMessage: _model.errorHomePhoneNumber,
                                hasError: _model.hasErrorHomePhoneNumber,
                                onIconTap: () async {},
                                validate: () async {
                                  if (!(((_model.homePhoneTextFieldMModel
                                                  .value!)
                                              .length ??
                                          0) ==
                                      14)) {
                                    setState(() {
                                      _model.errorHomePhoneNumber =
                                          'Please enter a valid number';
                                      _model.hasErrorHomePhoneNumber = true;
                                    });
                                  }
                                },
                                resetError: () async {
                                  setState(() {
                                    _model.errorHomePhoneNumber = ' ';
                                    _model.hasErrorHomePhoneNumber = false;
                                  });
                                },
                              ),
                            ),
                            wrapWithModel(
                              model: _model.workPhoneTextFieldMModel,
                              updateCallback: () => setState(() {}),
                              child: CustomOutlinedTextFieldPhoneWidget(
                                enabled: true,
                                title: 'Work Phone Number',
                                icon: const Icon(
                                  Icons.ten_k,
                                  color: Colors.transparent,
                                ),
                                hasIconAction: false,
                                isRequired: false,
                                infoMessage: '',
                                errorMessage: _model.errorWorkPhoneNumber,
                                hasError: _model.hasErrorWorkPhoneNumber,
                                onIconTap: () async {},
                                validate: () async {},
                                resetError: () async {},
                              ),
                            ),
                            wrapWithModel(
                              model: _model.mobilePhoneTextFieldMModel,
                              updateCallback: () => setState(() {}),
                              child: CustomOutlinedTextFieldPhoneWidget(
                                enabled: true,
                                title: 'Mobile Phone Number',
                                icon: const Icon(
                                  Icons.ten_k,
                                  color: Colors.transparent,
                                ),
                                hasIconAction: false,
                                isRequired: false,
                                infoMessage: '',
                                errorMessage: _model.errorMobilePhoneNumber,
                                hasError: _model.hasErrorMobilePhoneNumber,
                                onIconTap: () async {},
                                validate: () async {},
                                resetError: () async {},
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 0.0),
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'NOTE:',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Arial',
                                            color: Colors.black,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                            fontStyle: FontStyle.italic,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    const TextSpan(
                                      text:
                                          ' Your mobile number is required for URGENT notifications concerning your Exchange Credit Program account(s)',
                                      style: TextStyle(),
                                    )
                                  ],
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
                            ),
                          ].divide(const SizedBox(height: 16.0)),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Please create and answer your 3 security questions',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Arial',
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    fontStyle: FontStyle.italic,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Security Question 1',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Arial',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  TextSpan(
                                    text: ' *',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context).error,
                                      fontSize: 14.0,
                                    ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Arial',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowDropDown<int>(
                                  controller: _model
                                          .securityQuestionDropDown1MValueController ??=
                                      FormFieldController<int>(
                                    _model.securityQuestionDropDown1MValue ??=
                                        -1,
                                  ),
                                  options: List<int>.from(_model
                                      .securityQuestion1
                                      .map((e) => e.questionID)
                                      .toList()),
                                  optionLabels: _model.securityQuestion1
                                      .map((e) => e.question)
                                      .toList(),
                                  onChanged: (val) => setState(() => _model
                                      .securityQuestionDropDown1MValue = val),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Arial',
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                  hintText: 'Select a Question',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 22.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderWidth: 1.0,
                                  borderRadius: 6.0,
                                  margin: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                                custom_widgets.CustomOutlinedTextFieldWidget(
                                  width: double.infinity,
                                  height: 120.0,
                                  readOnly: false,
                                  value: _model.securityQuestionAnswer1,
                                  onValueChange: (data) async {
                                    setState(() {
                                      _model.securityQuestionAnswer1 = data;
                                    });
                                  },
                                  hasError: (error) async {
                                    setState(() {
                                      _model.hasErrorSQ1 = error;
                                    });
                                  },
                                ),
                              ].divide(const SizedBox(height: 16.0)),
                            ),
                          ].divide(const SizedBox(height: 4.0)),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Security Question 2',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Arial',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  TextSpan(
                                    text: ' *',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context).error,
                                      fontSize: 14.0,
                                    ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Arial',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowDropDown<int>(
                                  controller: _model
                                          .securityQuestionDropDown2MValueController ??=
                                      FormFieldController<int>(
                                    _model.securityQuestionDropDown2MValue ??=
                                        -1,
                                  ),
                                  options: List<int>.from(_model
                                      .securityQuestion2
                                      .map((e) => e.questionID)
                                      .toList()),
                                  optionLabels: _model.securityQuestion2
                                      .map((e) => e.question)
                                      .toList(),
                                  onChanged: (val) => setState(() => _model
                                      .securityQuestionDropDown2MValue = val),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Arial',
                                        color:
                                            FlutterFlowTheme.of(context).black,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                  hintText: 'Select a Question',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 22.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderWidth: 1.0,
                                  borderRadius: 6.0,
                                  margin: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                                custom_widgets.CustomOutlinedTextFieldWidget(
                                  width: double.infinity,
                                  height: 120.0,
                                  readOnly: false,
                                  value: _model.securityQuestionAnswer2,
                                  onValueChange: (data) async {
                                    setState(() {
                                      _model.securityQuestionAnswer2 = data;
                                    });
                                  },
                                  hasError: (error) async {
                                    setState(() {
                                      _model.hasErrorSQ2 = error;
                                    });
                                  },
                                ),
                              ].divide(const SizedBox(height: 16.0)),
                            ),
                          ].divide(const SizedBox(height: 4.0)),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Security Question 3',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Arial',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  TextSpan(
                                    text: ' *',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context).error,
                                      fontSize: 14.0,
                                    ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Arial',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowDropDown<int>(
                                  controller: _model
                                          .securityQuestionDropDown3MValueController ??=
                                      FormFieldController<int>(
                                    _model.securityQuestionDropDown3MValue ??=
                                        -1,
                                  ),
                                  options: List<int>.from(_model
                                      .securityQuestion3
                                      .map((e) => e.questionID)
                                      .toList()),
                                  optionLabels: _model.securityQuestion3
                                      .map((e) => e.question)
                                      .toList(),
                                  onChanged: (val) => setState(() => _model
                                      .securityQuestionDropDown3MValue = val),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Arial',
                                        color:
                                            FlutterFlowTheme.of(context).black,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                  hintText: 'Select a Question',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 22.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderWidth: 1.0,
                                  borderRadius: 6.0,
                                  margin: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                                custom_widgets.CustomOutlinedTextFieldWidget(
                                  width: double.infinity,
                                  height: 120.0,
                                  readOnly: false,
                                  value: _model.securityQuestionAnswer3,
                                  onValueChange: (data) async {
                                    setState(() {
                                      _model.securityQuestionAnswer3 = data;
                                    });
                                  },
                                  hasError: (error) async {
                                    setState(() {
                                      _model.hasErrorSQ3 = error;
                                    });
                                  },
                                ),
                              ].divide(const SizedBox(height: 16.0)),
                            ),
                          ].divide(const SizedBox(height: 4.0)),
                        ),
                      ].divide(const SizedBox(height: 32.0)),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  wrapWithModel(
                    model: _model.commonCancelButtonMModel,
                    updateCallback: () => setState(() {}),
                    child: CommonCancelButtonWidget(
                      title: 'Cancel',
                      onTap: () async {},
                    ),
                  ),
                  wrapWithModel(
                    model: _model.commonCustomButtonMModel,
                    updateCallback: () => setState(() {}),
                    child: CommonCustomButtonWidget(
                      titile: 'Next',
                      isDisabled: !((_model.userIdTextFieldMModel.value !=
                                  null &&
                              _model.userIdTextFieldMModel.value != '') &&
                          !_model.hasErrorUserId &&
                          !_model.hasErrorPassword &&
                          !_model.hasErrorConfirmPassword &&
                          (_model.homePhoneTextFieldMModel.value != null &&
                              _model.homePhoneTextFieldMModel.value != '') &&
                          !_model.hasErrorHomePhoneNumber &&
                          (_model.securityQuestionAnswer1 != '') &&
                          !_model.hasErrorSQ1 &&
                          (_model.securityQuestionAnswer2 != '') &&
                          !_model.hasErrorSQ2 &&
                          (_model.securityQuestionAnswer3 != '') &&
                          !_model.hasErrorSQ3 &&
                          (_model.securityQuestionDropDown1MValue != null) &&
                          (_model.securityQuestionDropDown2MValue != null) &&
                          (_model.securityQuestionDropDown3MValue != null) &&
                          (FFAppState().password != '') &&
                          (FFAppState().confirmPassword != '')),
                      isEditIconVisible: false,
                      onTap: () async {
                        await action_blocks.showLoadingDialog(context);
                        _model.apiResponseCreateProfileM =
                            await RegistrationGroup.createProfileCall.call(
                          userId: _model.userIdTextFieldMModel.value,
                          homePhoneNumber:
                              _model.homePhoneTextFieldMModel.value,
                          workPhoneNumber:
                              _model.workPhoneTextFieldMModel.value,
                          mobilePhoneNumber:
                              _model.mobilePhoneTextFieldMModel.value,
                          securityQuestion1: _model
                              .securityQuestionDropDown1MValue
                              ?.toString(),
                          password: FFAppState().password,
                          confirmPassword: FFAppState().confirmPassword,
                          securityQuestion2: _model
                              .securityQuestionDropDown2MValue
                              ?.toString(),
                          securityQuestion3: _model
                              .securityQuestionDropDown3MValue
                              ?.toString(),
                          answer1: _model.securityQuestionAnswer1,
                          answer2: _model.securityQuestionAnswer2,
                          answer3: _model.securityQuestionAnswer3,
                          dynamicBaseURL: FFAppState().dynamicBaseURL,
                          email: widget.email,
                        );
                        Navigator.pop(context);
                        if ((_model.apiResponseCreateProfileM?.succeeded ??
                            true)) {
                          setState(() {
                            _model.errorAPI = ' ';
                            _model.hasErrorAPI = false;
                          });
                          await widget.nextCallback?.call();
                        } else {
                          setState(() {
                            _model.errorAPI = getJsonField(
                              (_model.apiResponseCreateProfileM?.jsonBody ??
                                  ''),
                              r'''$.Message''',
                            ).toString();
                            _model.hasErrorAPI = true;
                          });
                        }

                        setState(() {});
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
