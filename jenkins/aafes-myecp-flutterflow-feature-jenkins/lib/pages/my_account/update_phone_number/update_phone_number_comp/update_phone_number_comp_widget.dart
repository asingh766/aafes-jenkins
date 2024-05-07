import '/backend/api_requests/api_calls.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_circular_indicator/common_circular_indicator_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/custom_outlined_phone_text_f_general_m_c/custom_outlined_phone_text_f_general_m_c_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/components/success_banner_filled/success_banner_filled_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/my_account/update_email_address/added2_f_a_sec_comp/added2_f_a_sec_comp_widget.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'update_phone_number_comp_model.dart';
export 'update_phone_number_comp_model.dart';

class UpdatePhoneNumberCompWidget extends StatefulWidget {
  const UpdatePhoneNumberCompWidget({super.key});

  @override
  State<UpdatePhoneNumberCompWidget> createState() =>
      _UpdatePhoneNumberCompWidgetState();
}

class _UpdatePhoneNumberCompWidgetState
    extends State<UpdatePhoneNumberCompWidget> {
  late UpdatePhoneNumberCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpdatePhoneNumberCompModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.isTwoFactAuth = false;
      });
      setState(() {
        _model.isEnabled = false;
        _model.isSuccess = false;
        _model.isError = false;
        _model.passwordText = '';
        _model.getPhoneNumberDataRes = null;
        _model.isEnrollExpanded = false;
        _model.isLoading = true;
      });
      _model.getPhoneDataRes =
          await ManageContactDetailsGroup.getPhoneNumbersCall.call(
        userId: FFAppState().selectedUserId.toString(),
        dynamicBaseURL: FFAppState().dynamicBaseURL,
      );
      if ((_model.getPhoneDataRes?.succeeded ?? true)) {
        _model.updatePage(() {
          _model.getPhoneNumberDataRes = getJsonField(
            (_model.getPhoneDataRes?.jsonBody ?? ''),
            r'''$''',
          );
        });
      }
      await Future.wait([
        Future(() async {
          _model.getTimeApiRes =
              await ManageContactDetailsGroup.getTimesCall.call(
            dynamicBaseURL: FFAppState().dynamicBaseURL,
          );
          if ((_model.getTimeApiRes?.succeeded ?? true)) {
            setState(() {
              _model.timeList = ManageContactDetailsGroup.getTimesCall
                  .timeList(
                    (_model.getTimeApiRes?.jsonBody ?? ''),
                  )!
                  .toList()
                  .cast<String>();
            });
            setState(() {
              _model.fromDesktopDDValueController?.value = getJsonField(
                ManageContactDetailsGroup.getTimesCall
                    .timeAllList(
                      (_model.getTimeApiRes?.jsonBody ?? ''),
                    )!
                    .where((e) =>
                        getJsonField(
                          e,
                          r'''$.Value''',
                        ) ==
                        ManageContactDetailsGroup.getPhoneNumbersCall.fromHour(
                          (_model.getPhoneDataRes?.jsonBody ?? ''),
                        ))
                    .toList()
                    .first,
                r'''$.Text''',
              ).toString().toString();
            });
            setState(() {
              _model.toDesktopDDValueController?.value = functions.getTimeValue(
                  ManageContactDetailsGroup.getTimesCall
                      .timeAllList(
                        (_model.getTimeApiRes?.jsonBody ?? ''),
                      )
                      ?.toList(),
                  ManageContactDetailsGroup.getPhoneNumbersCall
                      .toHour(
                        (_model.getPhoneDataRes?.jsonBody ?? ''),
                      )
                      .toString(),
                  true)!;
            });
            setState(() {
              _model.fromDropDownValueController?.value =
                  functions.getTimeValue(
                      ManageContactDetailsGroup.getTimesCall
                          .timeAllList(
                            (_model.getTimeApiRes?.jsonBody ?? ''),
                          )
                          ?.toList(),
                      ManageContactDetailsGroup.getPhoneNumbersCall
                          .fromHour(
                            (_model.getPhoneDataRes?.jsonBody ?? ''),
                          )
                          .toString(),
                      true)!;
            });
            setState(() {
              _model.toDropDownValueController?.value = functions.getTimeValue(
                  ManageContactDetailsGroup.getTimesCall
                      .timeAllList(
                        (_model.getTimeApiRes?.jsonBody ?? ''),
                      )
                      ?.toList(),
                  ManageContactDetailsGroup.getPhoneNumbersCall
                      .toHour(
                        (_model.getPhoneDataRes?.jsonBody ?? ''),
                      )
                      .toString(),
                  true)!;
            });
          }
        }),
        Future(() async {
          _model.gettimeZonesAPiRes =
              await ManageContactDetailsGroup.getTimezonesCall.call(
            dynamicBaseURL: FFAppState().dynamicBaseURL,
          );
          if ((_model.gettimeZonesAPiRes?.succeeded ?? true)) {
            setState(() {
              _model.timeZoneList = ManageContactDetailsGroup.getTimezonesCall
                  .displayNameList(
                    (_model.gettimeZonesAPiRes?.jsonBody ?? ''),
                  )!
                  .toList()
                  .cast<String>();
            });
            setState(() {
              _model.timeZoneDesktopDDValueController?.value =
                  functions.getTimeZoneAbbreviation(
                      ManageContactDetailsGroup.getTimezonesCall
                          .timeZonesList(
                            (_model.gettimeZonesAPiRes?.jsonBody ?? ''),
                          )
                          ?.toList(),
                      ManageContactDetailsGroup.getPhoneNumbersCall
                          .timeZoneID(
                            (_model.getPhoneDataRes?.jsonBody ?? ''),
                          )
                          .toString(),
                      true)!;
            });
            setState(() {
              _model.timeZoneDropDownValueController?.value =
                  functions.getTimeZoneAbbreviation(
                      ManageContactDetailsGroup.getTimezonesCall
                          .timeZonesList(
                            (_model.gettimeZonesAPiRes?.jsonBody ?? ''),
                          )
                          ?.toList(),
                      ManageContactDetailsGroup.getPhoneNumbersCall
                          .timeZoneID(
                            (_model.getPhoneDataRes?.jsonBody ?? ''),
                          )
                          .toString(),
                      true)!;
            });
          }
        }),
      ]);
      await Future.wait([
        Future(() async {
          setState(() {
            _model.checkboxDesktopValue =
                ManageContactDetailsGroup.getPhoneNumbersCall.smsoptin(
              (_model.getPhoneDataRes?.jsonBody ?? ''),
            )!;
          });
          setState(() {
            _model.desktopSendRadioButtonValueController?.value =
                (ManageContactDetailsGroup.getPhoneNumbersCall.smsTimePrefrence(
                          (_model.getPhoneDataRes?.jsonBody ?? ''),
                        ) !=
                        1
                    ? 'Send Anytime'
                    : 'Send Between');
          });
        }),
        Future(() async {
          setState(() {
            _model.checkboxMValue =
                ManageContactDetailsGroup.getPhoneNumbersCall.smsoptin(
              (_model.getPhoneDataRes?.jsonBody ?? ''),
            )!;
          });
          setState(() {
            _model.radioButtonValueController?.value =
                (ManageContactDetailsGroup.getPhoneNumbersCall.smsTimePrefrence(
                          (_model.getPhoneDataRes?.jsonBody ?? ''),
                        ) !=
                        1
                    ? 'Send Anytime'
                    : 'Send Between');
          });
        }),
      ]);
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
                            'Update Phone Number',
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
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if ((_model.getPhoneNumberDataRes != null) &&
                              responsiveVisibility(
                                context: context,
                                tablet: false,
                                tabletLandscape: false,
                                desktop: false,
                              ))
                            Container(
                              decoration: const BoxDecoration(),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (_model.isSuccess ?? true)
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: wrapWithModel(
                                          model:
                                              _model.successBannerFilledModel1,
                                          updateCallback: () => setState(() {}),
                                          child: const SuccessBannerFilledWidget(
                                            message:
                                                'Your profile has been successfully updated.',
                                          ),
                                        ),
                                      ),
                                    if (_model.isError ?? true)
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: wrapWithModel(
                                          model:
                                              _model.errorBannerOutlinedModel1,
                                          updateCallback: () => setState(() {}),
                                          child: ErrorBannerOutlinedWidget(
                                            message: ManageContactDetailsGroup
                                                .updatePhoneNumbersCall
                                                .errorMessage(
                                              (_model.updatePhoneNumberMobileApiRes
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                          ),
                                        ),
                                      ),
                                    Align(
                                      alignment: const AlignmentDirectional(1.0, 0.0),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '*',
                                              style: FlutterFlowTheme.of(
                                                      context)
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
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                wrapWithModel(
                                                  model: _model.homeTFModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child:
                                                      CustomOutlinedPhoneTextFGeneralMCWidget(
                                                    enabled: _model.isEnabled!,
                                                    title: 'Home Phone Number',
                                                    icon: const Icon(
                                                      Icons.ten_k_rounded,
                                                      size: 0.0,
                                                    ),
                                                    hasIconAction: false,
                                                    isRequired: true,
                                                    infoMessage: '',
                                                    errorMessage:
                                                        _model.errorHomeNumber,
                                                    hasError: _model
                                                        .hasErrorHomeNumber,
                                                    hintText: '123-456-7890',
                                                    initialValue: functions
                                                        .formatPhoneNumber(functions
                                                            .checkStringIsNull(
                                                                getJsonField(
                                                      _model
                                                          .getPhoneNumberDataRes,
                                                      r'''$.ContactNo''',
                                                    ))),
                                                    onIconTap: () async {},
                                                    validate: () async {
                                                      if ((_model
                                                                  .homeTFModel
                                                                  .value
                                                                  ?.length ??
                                                              0) ==
                                                          12) {
                                                        return;
                                                      }

                                                      setState(() {
                                                        _model.errorHomeNumber =
                                                            'Please enter a vaild number';
                                                        _model.hasErrorHomeNumber =
                                                            true;
                                                      });
                                                    },
                                                    resetError: () async {
                                                      setState(() {
                                                        _model.errorHomeNumber =
                                                            null;
                                                        _model.hasErrorHomeNumber =
                                                            false;
                                                      });
                                                    },
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model.mobileTFModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child:
                                                      CustomOutlinedPhoneTextFGeneralMCWidget(
                                                    enabled: _model.isEnabled!,
                                                    title:
                                                        'Mobile Phone Number',
                                                    icon: const Icon(
                                                      Icons.ten_k_rounded,
                                                      size: 0.0,
                                                    ),
                                                    hasIconAction: false,
                                                    isRequired: true,
                                                    infoMessage: '',
                                                    errorMessage: _model
                                                        .errorMobileNumber,
                                                    hasError: _model
                                                        .hasErrorMobileNumber,
                                                    hintText: ' 123-456-7890',
                                                    initialValue: functions
                                                        .formatPhoneNumber(functions
                                                            .checkStringIsNull(
                                                                getJsonField(
                                                      _model
                                                          .getPhoneNumberDataRes,
                                                      r'''$.MobileNo''',
                                                    ))),
                                                    onIconTap: () async {},
                                                    validate: () async {
                                                      if ((String? value) {
                                                        return (value?.length ??
                                                                    0) ==
                                                                12 ||
                                                            (value ?? "")
                                                                .isEmpty;
                                                      }(_model.mobileTFModel
                                                          .value)) {
                                                        return;
                                                      }

                                                      setState(() {
                                                        _model.hasErrorMobileNumber =
                                                            true;
                                                        _model.errorMobileNumber =
                                                            'Please enter a vaild number';
                                                      });
                                                    },
                                                    resetError: () async {
                                                      setState(() {
                                                        _model.hasErrorMobileNumber =
                                                            false;
                                                        _model.errorMobileNumber =
                                                            null;
                                                      });
                                                    },
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model.phoneTFModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child:
                                                      CustomOutlinedPhoneTextFGeneralMCWidget(
                                                    enabled: _model.isEnabled!,
                                                    title: 'Work Phone Number',
                                                    icon: const Icon(
                                                      Icons.ten_k_rounded,
                                                      size: 0.0,
                                                    ),
                                                    hasIconAction: false,
                                                    isRequired: true,
                                                    infoMessage: '',
                                                    errorMessage:
                                                        _model.errorPhoneNumber,
                                                    hasError: _model
                                                        .hasErrorPhoneNumber,
                                                    hintText: ' 123-456-7890',
                                                    initialValue: functions
                                                        .formatPhoneNumber(functions
                                                            .checkStringIsNull(
                                                                getJsonField(
                                                      _model
                                                          .getPhoneNumberDataRes,
                                                      r'''$.WorkNo''',
                                                    ))),
                                                    onIconTap: () async {},
                                                    validate: () async {
                                                      if ((String? value) {
                                                        return (value?.length ??
                                                                    0) ==
                                                                12 ||
                                                            (value ?? "")
                                                                .isEmpty;
                                                      }(_model.phoneTFModel
                                                          .value)) {
                                                        return;
                                                      }

                                                      setState(() {
                                                        _model.errorPhoneNumber =
                                                            'Please enter vaild number';
                                                        _model.hasErrorPhoneNumber =
                                                            true;
                                                      });
                                                    },
                                                    resetError: () async {
                                                      setState(() {
                                                        _model.errorPhoneNumber =
                                                            null;
                                                        _model.hasErrorPhoneNumber =
                                                            false;
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ].divide(const SizedBox(height: 10.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Flexible(
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Theme(
                                                          data: ThemeData(
                                                            checkboxTheme:
                                                                CheckboxThemeData(
                                                              visualDensity:
                                                                  VisualDensity
                                                                      .compact,
                                                              materialTapTargetSize:
                                                                  MaterialTapTargetSize
                                                                      .shrinkWrap,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            4.0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                          ),
                                                          child: Checkbox(
                                                            value: _model
                                                                    .checkboxMValue ??=
                                                                false,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  _model.checkboxMValue =
                                                                      newValue!);
                                                              if (newValue!) {
                                                                setState(() {
                                                                  _model.isEnrollExpanded =
                                                                      true;
                                                                  _model.isEnabled =
                                                                      true;
                                                                });
                                                              } else {
                                                                setState(() {
                                                                  _model.isEnrollExpanded =
                                                                      false;
                                                                });
                                                              }
                                                            },
                                                            side: BorderSide(
                                                              width: 2,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                            ),
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            checkColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                          ),
                                                        ),
                                                        Flexible(
                                                          child: Text(
                                                            'Enroll my mobile number in Text Alerts',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Arial',
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Builder(
                                                    builder: (context) {
                                                      if (!_model
                                                          .isEnrollExpanded) {
                                                        return InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              _model.isEnrollExpanded =
                                                                  true;
                                                            });
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .add_circle_outline,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                        );
                                                      } else {
                                                        return InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              _model.isEnrollExpanded =
                                                                  false;
                                                            });
                                                          },
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: Image.asset(
                                                              'assets/images/Minus_Circle.png',
                                                              width: 24.0,
                                                              height: 24.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                    },
                                                  ),
                                                ],
                                              ),
                                              if (_model.isEnrollExpanded)
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  16.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'When is the best time to message you?',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Arial',
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 14.0,
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
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  16.0,
                                                                  0.0,
                                                                  0.0),
                                                      child:
                                                          FlutterFlowRadioButton(
                                                        options: [
                                                          'Send Anytime',
                                                          'Send Between'
                                                        ].toList(),
                                                        onChanged: (_model
                                                                    .isEnabled!
                                                                ? !_model
                                                                    .checkboxMValue!
                                                                : true)
                                                            ? null
                                                            : (val) =>
                                                                setState(() {}),
                                                        controller: _model
                                                                .radioButtonValueController ??=
                                                            FormFieldController<
                                                                    String>(
                                                                'Send Anytime'),
                                                        optionHeight: 32.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Arial',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                        selectedTextStyle:
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
                                                        buttonPosition:
                                                            RadioButtonPosition
                                                                .left,
                                                        direction:
                                                            Axis.vertical,
                                                        radioButtonColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        inactiveRadioButtonColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        toggleable: false,
                                                        horizontalAlignment:
                                                            WrapAlignment.start,
                                                        verticalAlignment:
                                                            WrapCrossAlignment
                                                                .start,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  5.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          FlutterFlowDropDown<
                                                              String>(
                                                            controller: _model
                                                                    .fromDropDownValueController ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            options:
                                                                _model.timeList,
                                                            onChanged: (val) =>
                                                                setState(() =>
                                                                    _model.fromDropDownValue =
                                                                        val),
                                                            height: 56.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Arial',
                                                                      color: _model.radioButtonValue !=
                                                                              'Send Between'
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .accent3
                                                                          : FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                            hintText: 'Select',
                                                            icon: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 22.0,
                                                            ),
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            elevation: 2.0,
                                                            borderColor:
                                                                Colors.black,
                                                            borderWidth: 1.0,
                                                            borderRadius: 4.0,
                                                            margin:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        4.0,
                                                                        16.0,
                                                                        4.0),
                                                            hidesUnderline:
                                                                true,
                                                            disabled: _model
                                                                    .isEnabled!
                                                                ? (_model
                                                                        .radioButtonValue !=
                                                                    'Send Between')
                                                                : true,
                                                            isOverButton: true,
                                                            isSearchable: false,
                                                            isMultiSelect:
                                                                false,
                                                            labelText: '',
                                                            labelTextStyle:
                                                                TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent3,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                    10.0),
                                                            child: Text(
                                                              'and',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Arial',
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                          FlutterFlowDropDown<
                                                              String>(
                                                            controller: _model
                                                                    .toDropDownValueController ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            options:
                                                                _model.timeList,
                                                            onChanged: (val) =>
                                                                setState(() =>
                                                                    _model.toDropDownValue =
                                                                        val),
                                                            height: 56.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Arial',
                                                                      color: _model.radioButtonValue !=
                                                                              'Send Between'
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .accent3
                                                                          : FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                            hintText: 'Select',
                                                            icon: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 22.0,
                                                            ),
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            elevation: 2.0,
                                                            borderColor:
                                                                Colors.black,
                                                            borderWidth: 1.0,
                                                            borderRadius: 4.0,
                                                            margin:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        4.0,
                                                                        16.0,
                                                                        4.0),
                                                            hidesUnderline:
                                                                true,
                                                            disabled: _model
                                                                    .isEnabled!
                                                                ? (_model
                                                                        .radioButtonValue !=
                                                                    'Send Between')
                                                                : true,
                                                            isOverButton: true,
                                                            isSearchable: false,
                                                            isMultiSelect:
                                                                false,
                                                            labelText: '',
                                                            labelTextStyle:
                                                                TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent3,
                                                            ),
                                                          ),
                                                        ],
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
                                                      child:
                                                          FlutterFlowDropDown<
                                                              String>(
                                                        controller: _model
                                                                .timeZoneDropDownValueController ??=
                                                            FormFieldController<
                                                                String>(null),
                                                        options:
                                                            _model.timeZoneList,
                                                        onChanged: (val) =>
                                                            setState(() => _model
                                                                    .timeZoneDropDownValue =
                                                                val),
                                                        height: 56.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Arial',
                                                                  color: _model
                                                                              .radioButtonValue !=
                                                                          'Send Between'
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent3
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                        hintText: 'TimeZone',
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 22.0,
                                                        ),
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        elevation: 2.0,
                                                        borderColor:
                                                            Colors.black,
                                                        borderWidth: 1.0,
                                                        borderRadius: 4.0,
                                                        margin:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    4.0,
                                                                    16.0,
                                                                    4.0),
                                                        hidesUnderline: true,
                                                        disabled: _model
                                                                .isEnabled!
                                                            ? (_model
                                                                    .radioButtonValue !=
                                                                'Send Between')
                                                            : true,
                                                        isOverButton: true,
                                                        isSearchable: false,
                                                        isMultiSelect: false,
                                                        labelText: '',
                                                        labelTextStyle:
                                                            TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent3,
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
                                                      child: RichText(
                                                        textScaler:
                                                            MediaQuery.of(
                                                                    context)
                                                                .textScaler,
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text:
                                                                  'Terms, Conditions & Disclosures: ',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Arial',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
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
                                                                  'By enrolling to receive “Text Alerts” via Short Message Service or text, you are agreeing you are authorized to designate this mobile phone number to receive alerts, and expressly consent to any data charges that may be incurred by participating in this service. By participating, you consent to receive text messages sent through an automated communication system. You can opt-out of this service anytime by replying STOP to any text message you receive. you consent that following such a request to unsubscribe, you will receive on final message confirming that you have unenrolled in our system.',
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
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
                                                                lineHeight: 1.3,
                                                              ),
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
                                                      child: RichText(
                                                        textScaler:
                                                            MediaQuery.of(
                                                                    context)
                                                                .textScaler,
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: 'Notes: ',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Arial',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
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
                                                                  'Text alerts may be received outside of the selected timeframe as an immediate response to performing some online actions.',
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
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
                                                                lineHeight: 1.3,
                                                              ),
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
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            'Static',
                                                            queryParameters: {
                                                              'pageName':
                                                                  serializeParam(
                                                                'terms-conditions',
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'title':
                                                                  serializeParam(
                                                                'Terms and Conditions',
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: RichText(
                                                          textScaler:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaler,
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    'These SMS/text alerts are governed by the ',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Arial',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    'MILITARY STAR Terms and Conditions.',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              )
                                                            ],
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Arial',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                  lineHeight:
                                                                      1.3,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
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
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 2.0,
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
                                                    padding:
                                                        const EdgeInsets.all(16.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        RichText(
                                                          textScaler:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaler,
                                                          text: TextSpan(
                                                            children: [
                                                              const TextSpan(
                                                                text:
                                                                    'Current Password ',
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text: '*',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
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
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                      ].divide(const SizedBox(
                                                          height: 8.0)),
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
                                                      decoration:
                                                          const BoxDecoration(),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (!_model.isEnabled!)
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 16.0),
                                            child: wrapWithModel(
                                              model: _model
                                                  .commonCustomButtonModel1,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: CommonCustomButtonWidget(
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
                                                    });
                                                  } else {
                                                    setState(() {
                                                      _model.isEnabled = true;
                                                    });
                                                  }
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if (_model.isEnabled ?? true)
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 16.0),
                                            child: wrapWithModel(
                                              model: _model
                                                  .commonCancelButtonModel1,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: CommonCancelButtonWidget(
                                                title: 'Cancel',
                                                onTap: () async {
                                                  setState(() {
                                                    _model.isLoading = true;
                                                  });
                                                  _model.updatePage(() {
                                                    _model.getPhoneNumberDataRes =
                                                        getJsonField(
                                                      (_model.getPhoneDataRes
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$''',
                                                    );
                                                  });
                                                  await Future.delayed(
                                                      const Duration(
                                                          milliseconds: 500));
                                                  _model.updatePage(() {
                                                    _model.isEnabled = false;
                                                    _model.passwordText = '';
                                                  });
                                                  setState(() {
                                                    _model.isLoading = false;
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 16.0, 0.0, 16.0),
                                            child: wrapWithModel(
                                              model: _model
                                                  .commonCustomButtonModel2,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: CommonCustomButtonWidget(
                                                titile: 'Save',
                                                isDisabled: !(!_model
                                                        .hasErrorMobileNumber! &&
                                                    !_model
                                                        .hasErrorHomeNumber! &&
                                                    !_model
                                                        .hasErrorPhoneNumber &&
                                                    !_model.hasPasswordError! &&
                                                    (_model.passwordText !=
                                                            null &&
                                                        _model.passwordText !=
                                                            '') &&
                                                    (_model.homeTFModel.value !=
                                                            null &&
                                                        _model.homeTFModel
                                                                .value !=
                                                            '')),
                                                isEditIconVisible: false,
                                                onTap: () async {
                                                  unawaited(
                                                    () async {
                                                      await action_blocks
                                                          .showLoadingDialog(
                                                              context);
                                                    }(),
                                                  );
                                                  _model.updatePhoneNumberMobileApiRes =
                                                      await ManageContactDetailsGroup
                                                          .updatePhoneNumbersCall
                                                          .call(
                                                    userId: FFAppState()
                                                        .selectedUserId
                                                        .toString(),
                                                    homePhoneNumber: functions
                                                        .convertPhoneNumbertoString(
                                                            _model.homeTFModel
                                                                .value),
                                                    mobilePhoneNumber: functions
                                                        .convertPhoneNumbertoString(
                                                            _model.mobileTFModel
                                                                .value),
                                                    workPhoneNumber: functions
                                                        .convertPhoneNumbertoString(
                                                            _model.phoneTFModel
                                                                .value),
                                                    currentPassword:
                                                        _model.passwordText,
                                                    smsOptIn:
                                                        _model.checkboxMValue,
                                                    smsOptInCode:
                                                        _model.checkboxMValue!
                                                            ? 'N'
                                                            : 'Y',
                                                    smsTimePrefrence:
                                                        _model.radioButtonValue !=
                                                                'Send Between'
                                                            ? 1
                                                            : 2,
                                                    timeZoneID: functions
                                                        .getTimeZoneAbbreviation(
                                                            ManageContactDetailsGroup
                                                                .getTimezonesCall
                                                                .timeZonesList(
                                                                  (_model.gettimeZonesAPiRes
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                )
                                                                ?.toList(),
                                                            _model
                                                                .timeZoneDropDownValue,
                                                            false),
                                                    fromHour:
                                                        functions.getTimeValue(
                                                            ManageContactDetailsGroup
                                                                .getTimesCall
                                                                .timeAllList(
                                                                  (_model.getTimeApiRes
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                )
                                                                ?.toList(),
                                                            _model
                                                                .fromDropDownValue,
                                                            false),
                                                    toHour:
                                                        functions.getTimeValue(
                                                            ManageContactDetailsGroup
                                                                .getTimesCall
                                                                .timeAllList(
                                                                  (_model.getTimeApiRes
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                )
                                                                ?.toList(),
                                                            _model
                                                                .toDropDownValue,
                                                            false),
                                                    sMSEnrollmentConfirmationPending:
                                                        _model.checkboxMValue,
                                                    sMSEnrollmentmobileNo: functions
                                                        .convertPhoneNumbertoString(
                                                            _model.mobileTFModel
                                                                .value),
                                                    dynamicBaseURL: FFAppState()
                                                        .dynamicBaseURL,
                                                  );
                                                  if ((_model
                                                          .updatePhoneNumberMobileApiRes
                                                          ?.succeeded ??
                                                      true)) {
                                                    setState(() {
                                                      _model.isSuccess = true;
                                                      _model.isError = false;
                                                      _model.isEnabled = false;
                                                      _model.isEnrollExpanded =
                                                          false;
                                                    });
                                                  } else {
                                                    setState(() {
                                                      _model.isError = true;
                                                      _model.isSuccess = false;
                                                    });
                                                  }

                                                  _model.getPhoneNumberUpdateMApiRes =
                                                      await ManageContactDetailsGroup
                                                          .getPhoneNumbersCall
                                                          .call(
                                                    userId: FFAppState()
                                                        .selectedUserId
                                                        .toString(),
                                                    dynamicBaseURL: FFAppState()
                                                        .dynamicBaseURL,
                                                  );
                                                  if ((_model
                                                          .getPhoneNumberUpdateMApiRes
                                                          ?.succeeded ??
                                                      true)) {
                                                    _model.updatePage(() {
                                                      _model.getPhoneNumberDataRes =
                                                          getJsonField(
                                                        (_model.getPhoneNumberUpdateMApiRes
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$''',
                                                      );
                                                    });
                                                    await Future.wait([
                                                      Future(() async {
                                                        setState(() {
                                                          _model.checkboxDesktopValue =
                                                              ManageContactDetailsGroup
                                                                  .getPhoneNumbersCall
                                                                  .smsoptin(
                                                            (_model.getPhoneDataRes
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )!;
                                                        });
                                                        setState(() {
                                                          _model
                                                              .desktopSendRadioButtonValueController
                                                              ?.value = (ManageContactDetailsGroup
                                                                      .getPhoneNumbersCall
                                                                      .smsTimePrefrence(
                                                                    (_model.getPhoneDataRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ) !=
                                                                  1
                                                              ? 'Send Anytime'
                                                              : 'Send Between');
                                                        });
                                                      }),
                                                      Future(() async {
                                                        setState(() {
                                                          _model.checkboxMValue =
                                                              ManageContactDetailsGroup
                                                                  .getPhoneNumbersCall
                                                                  .smsoptin(
                                                            (_model.getPhoneDataRes
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )!;
                                                        });
                                                        setState(() {
                                                          _model
                                                              .radioButtonValueController
                                                              ?.value = (ManageContactDetailsGroup
                                                                      .getPhoneNumbersCall
                                                                      .smsTimePrefrence(
                                                                    (_model.getPhoneDataRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ) !=
                                                                  1
                                                              ? 'Send Anytime'
                                                              : 'Send Between');
                                                        });
                                                      }),
                                                    ]);
                                                  }
                                                  Navigator.pop(context);

                                                  setState(() {});
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          if ((_model.getPhoneNumberDataRes != null) &&
                              responsiveVisibility(
                                context: context,
                                phone: false,
                              ))
                            Container(
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
                                          model:
                                              _model.errorBannerOutlinedModel2,
                                          updateCallback: () => setState(() {}),
                                          child: ErrorBannerOutlinedWidget(
                                            message: ManageContactDetailsGroup
                                                .updatePhoneNumbersCall
                                                .errorMessage(
                                              (_model.updatePhoneNumberDesktopApiRes
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
                                          model:
                                              _model.successBannerFilledModel2,
                                          updateCallback: () => setState(() {}),
                                          child: const SuccessBannerFilledWidget(
                                            message:
                                                'Your profile has been successfully updated.',
                                          ),
                                        ),
                                      ),
                                    Align(
                                      alignment: const AlignmentDirectional(1.0, 0.0),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '*',
                                              style: FlutterFlowTheme.of(
                                                      context)
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
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Flexible(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .desktopHomeTFModel,
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          updateOnChange: true,
                                                          child:
                                                              CustomOutlinedPhoneTextFGeneralMCWidget(
                                                            enabled: _model
                                                                .isEnabled!,
                                                            title:
                                                                'Home Phone Number',
                                                            icon: const Icon(
                                                              Icons
                                                                  .ten_k_rounded,
                                                              size: 0.0,
                                                            ),
                                                            hasIconAction:
                                                                false,
                                                            isRequired: true,
                                                            infoMessage: '',
                                                            errorMessage: _model
                                                                .errorHomeNumber,
                                                            hasError: _model
                                                                .hasErrorHomeNumber,
                                                            hintText:
                                                                '123-456-7890',
                                                            initialValue: functions
                                                                .formatPhoneNumber(
                                                                    getJsonField(
                                                              _model
                                                                  .getPhoneNumberDataRes,
                                                              r'''$.ContactNo''',
                                                            ).toString()),
                                                            onIconTap:
                                                                () async {},
                                                            validate: () async {
                                                              if (((_model.desktopHomeTFModel
                                                                              .value!)
                                                                          .length ??
                                                                      0) ==
                                                                  12) {
                                                                return;
                                                              }

                                                              setState(() {
                                                                _model.errorHomeNumber =
                                                                    'Please enter a vaild number';
                                                                _model.hasErrorHomeNumber =
                                                                    true;
                                                              });
                                                            },
                                                            resetError:
                                                                () async {
                                                              setState(() {
                                                                _model.errorHomeNumber =
                                                                    null;
                                                                _model.hasErrorHomeNumber =
                                                                    false;
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Flexible(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .desktopMobileTFModel,
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          updateOnChange: true,
                                                          child:
                                                              CustomOutlinedPhoneTextFGeneralMCWidget(
                                                            enabled: _model
                                                                .isEnabled!,
                                                            title:
                                                                'Mobile Phone Number',
                                                            icon: const Icon(
                                                              Icons
                                                                  .ten_k_rounded,
                                                              size: 0.0,
                                                            ),
                                                            hasIconAction:
                                                                false,
                                                            isRequired: false,
                                                            infoMessage: '',
                                                            errorMessage: _model
                                                                .errorMobileNumber,
                                                            hasError: _model
                                                                .hasErrorMobileNumber,
                                                            hintText:
                                                                ' 123-456-7890',
                                                            initialValue: functions
                                                                .formatPhoneNumber(
                                                                    getJsonField(
                                                              _model
                                                                  .getPhoneNumberDataRes,
                                                              r'''$.MobileNo''',
                                                            ).toString()),
                                                            onIconTap:
                                                                () async {},
                                                            validate: () async {
                                                              if ((String
                                                                  value) {
                                                                return (value.length ??
                                                                            0) ==
                                                                        12 ||
                                                                    (value ??
                                                                            "")
                                                                        .isEmpty;
                                                              }(_model
                                                                  .desktopMobileTFModel
                                                                  .value!)) {
                                                                return;
                                                              }

                                                              setState(() {
                                                                _model.hasErrorMobileNumber =
                                                                    true;
                                                                _model.errorMobileNumber =
                                                                    'Please enter a vaild number';
                                                              });
                                                            },
                                                            resetError:
                                                                () async {
                                                              setState(() {
                                                                _model.hasErrorMobileNumber =
                                                                    false;
                                                                _model.errorMobileNumber =
                                                                    null;
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Flexible(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .desktopPhoneTFModel,
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          updateOnChange: true,
                                                          child:
                                                              CustomOutlinedPhoneTextFGeneralMCWidget(
                                                            enabled: _model
                                                                .isEnabled!,
                                                            title:
                                                                'Work Phone Number',
                                                            icon: const Icon(
                                                              Icons
                                                                  .ten_k_rounded,
                                                              size: 0.0,
                                                            ),
                                                            hasIconAction:
                                                                false,
                                                            isRequired: false,
                                                            infoMessage: '',
                                                            errorMessage: _model
                                                                .errorPhoneNumber,
                                                            hasError: _model
                                                                .hasErrorPhoneNumber,
                                                            hintText:
                                                                ' 123-456-7890',
                                                            initialValue: functions
                                                                .formatPhoneNumber(
                                                                    getJsonField(
                                                              _model
                                                                  .getPhoneNumberDataRes,
                                                              r'''$.WorkNo''',
                                                            ).toString()),
                                                            onIconTap:
                                                                () async {},
                                                            validate: () async {
                                                              if ((String?
                                                                  value) {
                                                                return (value?.length ??
                                                                            0) ==
                                                                        12 ||
                                                                    (value ??
                                                                            "")
                                                                        .isEmpty;
                                                              }(_model
                                                                  .desktopPhoneTFModel
                                                                  .value)) {
                                                                return;
                                                              }

                                                              setState(() {
                                                                _model.errorPhoneNumber =
                                                                    'Please enter vaild number';
                                                                _model.hasErrorPhoneNumber =
                                                                    true;
                                                              });
                                                            },
                                                            resetError:
                                                                () async {
                                                              setState(() {
                                                                _model.errorPhoneNumber =
                                                                    null;
                                                                _model.hasErrorPhoneNumber =
                                                                    false;
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(width: 16.0)),
                                                ),
                                              ]
                                                  .divide(
                                                      const SizedBox(height: 16.0))
                                                  .around(
                                                      const SizedBox(height: 16.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Theme(
                                                        data: ThemeData(
                                                          checkboxTheme:
                                                              CheckboxThemeData(
                                                            visualDensity:
                                                                VisualDensity
                                                                    .compact,
                                                            materialTapTargetSize:
                                                                MaterialTapTargetSize
                                                                    .shrinkWrap,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4.0),
                                                            ),
                                                          ),
                                                          unselectedWidgetColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryText,
                                                        ),
                                                        child: Checkbox(
                                                          value: _model
                                                                  .checkboxDesktopValue ??=
                                                              false,
                                                          onChanged:
                                                              (newValue) async {
                                                            setState(() => _model
                                                                    .checkboxDesktopValue =
                                                                newValue!);
                                                            if (newValue!) {
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
                                                                  _model.isEnrollExpanded =
                                                                      true;
                                                                  _model.isEnabled =
                                                                      true;
                                                                });
                                                              }
                                                            } else {
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
                                                                  _model.isEnrollExpanded =
                                                                      false;
                                                                  _model.isEnabled =
                                                                      true;
                                                                });
                                                              }
                                                            }
                                                          },
                                                          side: BorderSide(
                                                            width: 2,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                          ),
                                                          activeColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          checkColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .info,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Enroll my mobile number in Text Alerts',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Arial',
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                  Builder(
                                                    builder: (context) {
                                                      if (!_model
                                                          .isEnrollExpanded) {
                                                        return InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              _model.isEnrollExpanded =
                                                                  true;
                                                            });
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .add_circle_outline,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                        );
                                                      } else {
                                                        return InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              _model.isEnrollExpanded =
                                                                  false;
                                                            });
                                                          },
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: Image.asset(
                                                              'assets/images/Minus_Circle.png',
                                                              width: 24.0,
                                                              height: 24.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                    },
                                                  ),
                                                ],
                                              ),
                                              if (_model.isEnrollExpanded)
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  16.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'When is the best time to message you?',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Arial',
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 14.0,
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
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  16.0,
                                                                  0.0,
                                                                  0.0),
                                                      child:
                                                          FlutterFlowRadioButton(
                                                        options: [
                                                          'Send Anytime',
                                                          'Send Between'
                                                        ].toList(),
                                                        onChanged: (_model
                                                                    .isEnabled!
                                                                ? !_model
                                                                    .checkboxDesktopValue!
                                                                : true)
                                                            ? null
                                                            : (val) =>
                                                                setState(() {}),
                                                        controller: _model
                                                                .desktopSendRadioButtonValueController ??=
                                                            FormFieldController<
                                                                    String>(
                                                                'Send Anytime'),
                                                        optionHeight: 32.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Arial',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                        selectedTextStyle:
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
                                                        buttonPosition:
                                                            RadioButtonPosition
                                                                .left,
                                                        direction:
                                                            Axis.vertical,
                                                        radioButtonColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        inactiveRadioButtonColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        toggleable: false,
                                                        horizontalAlignment:
                                                            WrapAlignment.start,
                                                        verticalAlignment:
                                                            WrapCrossAlignment
                                                                .start,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  5.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
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
                                                                  FlutterFlowDropDown<
                                                                      String>(
                                                                controller: _model
                                                                        .fromDesktopDDValueController ??=
                                                                    FormFieldController<
                                                                            String>(
                                                                        null),
                                                                options: _model
                                                                    .timeList,
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        _model.fromDesktopDDValue =
                                                                            val),
                                                                height: 56.0,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Arial',
                                                                      color: _model.desktopSendRadioButtonValue !=
                                                                              'Send Between'
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .accent3
                                                                          : FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                                hintText:
                                                                    'Select',
                                                                icon: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  size: 22.0,
                                                                ),
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                elevation: 2.0,
                                                                borderColor:
                                                                    Colors
                                                                        .black,
                                                                borderWidth:
                                                                    1.0,
                                                                borderRadius:
                                                                    4.0,
                                                                margin: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        4.0,
                                                                        16.0,
                                                                        4.0),
                                                                hidesUnderline:
                                                                    true,
                                                                disabled: _model
                                                                        .isEnabled!
                                                                    ? (_model
                                                                            .desktopSendRadioButtonValue !=
                                                                        'Send Between')
                                                                    : true,
                                                                isOverButton:
                                                                    true,
                                                                isSearchable:
                                                                    false,
                                                                isMultiSelect:
                                                                    false,
                                                                labelText: '',
                                                                labelTextStyle:
                                                                    TextStyle(
                                                                  fontFamily:
                                                                      'Arial',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent3,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            'and',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Arial',
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                          Flexible(
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child:
                                                                  FlutterFlowDropDown<
                                                                      String>(
                                                                controller: _model
                                                                        .toDesktopDDValueController ??=
                                                                    FormFieldController<
                                                                            String>(
                                                                        null),
                                                                options: _model
                                                                    .timeList,
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        _model.toDesktopDDValue =
                                                                            val),
                                                                height: 56.0,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Arial',
                                                                      color: _model.desktopSendRadioButtonValue !=
                                                                              'Send Between'
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .accent3
                                                                          : FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                                hintText:
                                                                    'Select',
                                                                icon: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  size: 22.0,
                                                                ),
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                elevation: 2.0,
                                                                borderColor:
                                                                    Colors
                                                                        .black,
                                                                borderWidth:
                                                                    1.0,
                                                                borderRadius:
                                                                    4.0,
                                                                margin: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        4.0,
                                                                        16.0,
                                                                        4.0),
                                                                hidesUnderline:
                                                                    true,
                                                                disabled: _model
                                                                        .isEnabled!
                                                                    ? (_model
                                                                            .desktopSendRadioButtonValue !=
                                                                        'Send Between')
                                                                    : true,
                                                                isOverButton:
                                                                    true,
                                                                isSearchable:
                                                                    false,
                                                                isMultiSelect:
                                                                    false,
                                                                labelText: '',
                                                                labelTextStyle:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent3,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 16.0)),
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
                                                      child:
                                                          FlutterFlowDropDown<
                                                              String>(
                                                        controller: _model
                                                                .timeZoneDesktopDDValueController ??=
                                                            FormFieldController<
                                                                String>(null),
                                                        options:
                                                            _model.timeZoneList,
                                                        onChanged: (val) =>
                                                            setState(() => _model
                                                                    .timeZoneDesktopDDValue =
                                                                val),
                                                        height: 56.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Arial',
                                                                  color: _model
                                                                              .desktopSendRadioButtonValue !=
                                                                          'Send Between'
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent3
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                        hintText: 'TimeZone',
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 22.0,
                                                        ),
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        elevation: 2.0,
                                                        borderColor:
                                                            Colors.black,
                                                        borderWidth: 1.0,
                                                        borderRadius: 4.0,
                                                        margin:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    4.0,
                                                                    16.0,
                                                                    4.0),
                                                        hidesUnderline: true,
                                                        disabled: _model
                                                                .isEnabled!
                                                            ? (_model
                                                                    .desktopSendRadioButtonValue !=
                                                                'Send Between')
                                                            : true,
                                                        isOverButton: true,
                                                        isSearchable: false,
                                                        isMultiSelect: false,
                                                        labelText: '',
                                                        labelTextStyle:
                                                            TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent3,
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
                                                      child: RichText(
                                                        textScaler:
                                                            MediaQuery.of(
                                                                    context)
                                                                .textScaler,
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text:
                                                                  'Terms, Conditions & Disclosures: ',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Arial',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
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
                                                                  'By enrolling to receive “Text Alerts” via Short Message Service or text, you are agreeing you are authorized to designate this mobile phone number to receive alerts, and expressly consent to any data charges that may be incurred by participating in this service. By participating, you consent to receive text messages sent through an automated communication system. You can opt-out of this service anytime by replying STOP to any text message you receive. you consent that following such a request to unsubscribe, you will receive on final message confirming that you have unenrolled in our system.',
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
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
                                                                lineHeight: 1.3,
                                                              ),
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
                                                      child: RichText(
                                                        textScaler:
                                                            MediaQuery.of(
                                                                    context)
                                                                .textScaler,
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: 'Notes: ',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Arial',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
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
                                                                  'Text alerts may be received outside of the selected timeframe as an immediate response to performing some online actions.',
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
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
                                                                lineHeight: 1.3,
                                                              ),
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
                                                      child: RichText(
                                                        textScaler:
                                                            MediaQuery.of(
                                                                    context)
                                                                .textScaler,
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text:
                                                                  'These SMS/text alerts are governed by the ',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Arial',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                            TextSpan(
                                                              text:
                                                                  'MILITARY STAR Terms and Conditions.',
                                                              style: TextStyle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                              mouseCursor:
                                                                  SystemMouseCursors
                                                                      .click,
                                                              recognizer:
                                                                  TapGestureRecognizer()
                                                                    ..onTap =
                                                                        () async {
                                                                      context
                                                                          .pushNamed(
                                                                        'Static',
                                                                        queryParameters:
                                                                            {
                                                                          'pageName':
                                                                              serializeParam(
                                                                            'terms-conditions',
                                                                            ParamType.String,
                                                                          ),
                                                                          'title':
                                                                              serializeParam(
                                                                            'Terms and Conditions',
                                                                            ParamType.String,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                            )
                                                          ],
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Arial',
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
                                                                lineHeight: 1.3,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
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
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 2.0,
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
                                                    padding:
                                                        const EdgeInsets.all(16.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        RichText(
                                                          textScaler:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaler,
                                                          text: TextSpan(
                                                            children: [
                                                              const TextSpan(
                                                                text:
                                                                    'Current Password ',
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text: '*',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
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
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                      ].divide(const SizedBox(
                                                          height: 8.0)),
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
                                                      decoration:
                                                          const BoxDecoration(),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (!_model.isEnabled!)
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 16.0),
                                            child: wrapWithModel(
                                              model: _model
                                                  .commonCustomButtonModel3,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: CommonCustomButtonWidget(
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
                                                      _model.passwordText = '';
                                                    });
                                                  } else {
                                                    setState(() {
                                                      _model.isEnabled = true;
                                                      _model.passwordText = '';
                                                    });
                                                  }
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if (_model.isEnabled ?? true)
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 16.0),
                                            child: wrapWithModel(
                                              model: _model
                                                  .commonCancelButtonModel2,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: CommonCancelButtonWidget(
                                                title: 'Cancel',
                                                onTap: () async {
                                                  _model.updatePage(() {
                                                    _model.isLoading = true;
                                                  });
                                                  _model.updatePage(() {
                                                    _model.getPhoneNumberDataRes =
                                                        getJsonField(
                                                      (_model.getPhoneDataRes
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$''',
                                                    );
                                                  });
                                                  await Future.delayed(
                                                      const Duration(
                                                          milliseconds: 1000));
                                                  setState(() {
                                                    _model.isEnabled = false;
                                                    _model.passwordText = '';
                                                    _model.isLoading = false;
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 16.0, 0.0, 16.0),
                                            child: wrapWithModel(
                                              model: _model
                                                  .commonCustomButtonModel4,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: CommonCustomButtonWidget(
                                                titile: 'Save',
                                                isDisabled: !(!_model
                                                        .hasErrorMobileNumber! &&
                                                    !_model
                                                        .hasErrorHomeNumber! &&
                                                    !_model
                                                        .hasErrorPhoneNumber &&
                                                    !_model.hasPasswordError! &&
                                                    (_model.passwordText !=
                                                            null &&
                                                        _model.passwordText !=
                                                            '') &&
                                                    (_model.desktopHomeTFModel
                                                                .value !=
                                                            null &&
                                                        _model.desktopHomeTFModel
                                                                .value !=
                                                            '')),
                                                isEditIconVisible: false,
                                                onTap: () async {
                                                  unawaited(
                                                    () async {
                                                      await action_blocks
                                                          .showLoadingDialog(
                                                              context);
                                                    }(),
                                                  );
                                                  _model.updatePhoneNumberDesktopApiRes =
                                                      await ManageContactDetailsGroup
                                                          .updatePhoneNumbersCall
                                                          .call(
                                                    userId: FFAppState()
                                                        .selectedUserId
                                                        .toString(),
                                                    homePhoneNumber: functions
                                                        .convertPhoneNumbertoString(
                                                            _model
                                                                .desktopHomeTFModel
                                                                .value),
                                                    mobilePhoneNumber: functions
                                                        .convertPhoneNumbertoString(
                                                            _model
                                                                .desktopMobileTFModel
                                                                .value),
                                                    workPhoneNumber: functions
                                                        .convertPhoneNumbertoString(
                                                            _model
                                                                .desktopPhoneTFModel
                                                                .value),
                                                    currentPassword:
                                                        _model.passwordText,
                                                    smsOptIn: _model
                                                        .checkboxDesktopValue,
                                                    smsOptInCode: _model
                                                            .checkboxDesktopValue!
                                                        ? 'Y'
                                                        : 'N',
                                                    smsTimePrefrence:
                                                        _model.desktopSendRadioButtonValue !=
                                                                'Send Between'
                                                            ? 1
                                                            : 2,
                                                    timeZoneID: functions
                                                        .getTimeZoneAbbreviation(
                                                            ManageContactDetailsGroup
                                                                .getTimezonesCall
                                                                .timeZonesList(
                                                                  (_model.gettimeZonesAPiRes
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                )
                                                                ?.toList(),
                                                            _model
                                                                .timeZoneDesktopDDValue,
                                                            false),
                                                    fromHour:
                                                        functions.getTimeValue(
                                                            ManageContactDetailsGroup
                                                                .getTimesCall
                                                                .timeAllList(
                                                                  (_model.getTimeApiRes
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                )
                                                                ?.toList(),
                                                            _model
                                                                .fromDesktopDDValue,
                                                            false),
                                                    toHour:
                                                        functions.getTimeValue(
                                                            ManageContactDetailsGroup
                                                                .getTimesCall
                                                                .timeAllList(
                                                                  (_model.getTimeApiRes
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                )
                                                                ?.toList(),
                                                            _model
                                                                .toDesktopDDValue,
                                                            false),
                                                    sMSEnrollmentConfirmationPending:
                                                        _model
                                                            .checkboxDesktopValue,
                                                    sMSEnrollmentmobileNo: functions
                                                        .convertPhoneNumbertoString(
                                                            _model
                                                                .desktopMobileTFModel
                                                                .value),
                                                    dynamicBaseURL: FFAppState()
                                                        .dynamicBaseURL,
                                                  );
                                                  if ((_model
                                                          .updatePhoneNumberDesktopApiRes
                                                          ?.succeeded ??
                                                      true)) {
                                                    setState(() {
                                                      _model.isSuccess = true;
                                                      _model.isError = false;
                                                      _model.isEnabled = false;
                                                    });
                                                  } else {
                                                    setState(() {
                                                      _model.isError = true;
                                                      _model.isSuccess = false;
                                                    });
                                                  }

                                                  _model.getPhoneNumberApiDESKTOPRes =
                                                      await ManageContactDetailsGroup
                                                          .getPhoneNumbersCall
                                                          .call(
                                                    userId: FFAppState()
                                                        .selectedUserId
                                                        .toString(),
                                                    dynamicBaseURL: FFAppState()
                                                        .dynamicBaseURL,
                                                  );
                                                  if ((_model
                                                          .getPhoneNumberApiDESKTOPRes
                                                          ?.succeeded ??
                                                      true)) {
                                                    _model.updatePage(() {
                                                      _model.getPhoneNumberDataRes =
                                                          getJsonField(
                                                        (_model.getPhoneNumberApiDESKTOPRes
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$''',
                                                      );
                                                    });
                                                    await Future.wait([
                                                      Future(() async {
                                                        setState(() {
                                                          _model.checkboxDesktopValue =
                                                              ManageContactDetailsGroup
                                                                  .getPhoneNumbersCall
                                                                  .smsoptin(
                                                            (_model.getPhoneDataRes
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )!;
                                                        });
                                                        setState(() {
                                                          _model
                                                              .desktopSendRadioButtonValueController
                                                              ?.value = (ManageContactDetailsGroup
                                                                      .getPhoneNumbersCall
                                                                      .smsTimePrefrence(
                                                                    (_model.getPhoneDataRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ) !=
                                                                  1
                                                              ? 'Send Anytime'
                                                              : 'Send Between');
                                                        });
                                                      }),
                                                      Future(() async {
                                                        setState(() {
                                                          _model.checkboxMValue =
                                                              ManageContactDetailsGroup
                                                                  .getPhoneNumbersCall
                                                                  .smsoptin(
                                                            (_model.getPhoneDataRes
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )!;
                                                        });
                                                        setState(() {
                                                          _model
                                                              .radioButtonValueController
                                                              ?.value = (ManageContactDetailsGroup
                                                                      .getPhoneNumbersCall
                                                                      .smsTimePrefrence(
                                                                    (_model.getPhoneDataRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ) !=
                                                                  1
                                                              ? 'Send Anytime'
                                                              : 'Send Between');
                                                        });
                                                      }),
                                                    ]);
                                                  }
                                                  Navigator.pop(context);

                                                  setState(() {});
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ],
                                ),
                              ),
                            ),
                        ],
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
                        child: wrapWithModel(
                          model: _model.commonCircularIndicatorModel,
                          updateCallback: () => setState(() {}),
                          child: const CommonCircularIndicatorWidget(),
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
                  _model.checkboxDesktopValue =
                      ManageContactDetailsGroup.getPhoneNumbersCall.smsoptin(
                    (_model.getPhoneDataRes?.jsonBody ?? ''),
                  )!;
                });
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
