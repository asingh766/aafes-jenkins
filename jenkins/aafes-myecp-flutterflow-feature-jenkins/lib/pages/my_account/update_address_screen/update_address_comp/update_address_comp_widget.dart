import '/backend/api_requests/api_calls.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_circular_indicator/common_circular_indicator_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/custom_outlined_text_f_general_m_c/custom_outlined_text_f_general_m_c_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/components/success_banner_filled/success_banner_filled_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/my_account/update_address_screen/info_message/info_message_widget.dart';
import '/pages/my_account/update_email_address/added2_f_a_sec_comp/added2_f_a_sec_comp_widget.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'update_address_comp_model.dart';
export 'update_address_comp_model.dart';

class UpdateAddressCompWidget extends StatefulWidget {
  const UpdateAddressCompWidget({
    super.key,
    bool? isPrimaryUser,
  }) : isPrimaryUser = isPrimaryUser ?? false;

  final bool isPrimaryUser;

  @override
  State<UpdateAddressCompWidget> createState() =>
      _UpdateAddressCompWidgetState();
}

class _UpdateAddressCompWidgetState extends State<UpdateAddressCompWidget> {
  late UpdateAddressCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpdateAddressCompModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.isTwoFactAuth = false;
        _model.isEditable = false;
      });
      setState(() {
        _model.isSuccess = false;
        _model.isEditable = false;
        _model.isError = false;
        _model.passwordValue = '';
        _model.addressData = null;
        _model.isTwoFactAuth = false;
        _model.isLoading = true;
      });
      unawaited(
        () async {}(),
      );
      _model.getUserAddresssApiRes =
          await ManageContactDetailsGroup.getUserAddressCall.call(
        userId: FFAppState().selectedUserId.toString(),
        dynamicBaseURL: FFAppState().dynamicBaseURL,
      );
      if ((_model.getUserAddresssApiRes?.succeeded ?? true)) {
        _model.updatePage(() {
          _model.addressData = getJsonField(
            (_model.getUserAddresssApiRes?.jsonBody ?? ''),
            r'''$''',
          );
        });
      }
      _model.statesApiRes = await StatesCall.call(
        dynamicBaseURL: FFAppState().dynamicBaseURL,
      );
      if ((_model.statesApiRes?.succeeded ?? true)) {
        _model.updatePage(() {});
      }
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
                            'Update Address',
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
                          if ((_model.addressData != null) &&
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
                                              _model.errorBannerOutlinedModel1,
                                          updateCallback: () => setState(() {}),
                                          child: ErrorBannerOutlinedWidget(
                                            message: _model.apiErrorMes,
                                          ),
                                        ),
                                      ),
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
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .streetNameDesktopModel,
                                                        updateCallback: () =>
                                                            setState(() {}),
                                                        child:
                                                            CustomOutlinedTextFGeneralMCWidget(
                                                          enabled: _model
                                                              .isEditable!,
                                                          title: 'Street Name',
                                                          icon: const Icon(
                                                            Icons.onetwothree,
                                                            size: 0.0,
                                                          ),
                                                          hasIconAction: false,
                                                          isRequired: true,
                                                          infoMessage: '',
                                                          errorMessage: _model
                                                              .errorStreetName,
                                                          hasError: _model
                                                              .hasErrorStreetName,
                                                          hintText:
                                                              '25 XVEXJBBQ EBN',
                                                          initialValue: functions
                                                              .checkStringIsNull(
                                                                  getJsonField(
                                                            _model.addressData,
                                                            r'''$.Address1''',
                                                          )),
                                                          onIconTap:
                                                              () async {},
                                                          validate: () async {
                                                            if (_model.streetNameDesktopModel
                                                                        .value !=
                                                                    null &&
                                                                _model.streetNameDesktopModel
                                                                        .value !=
                                                                    '') {
                                                              return;
                                                            }

                                                            setState(() {
                                                              _model.hasErrorStreetName =
                                                                  true;
                                                              _model.errorStreetName =
                                                                  'Required Field';
                                                            });
                                                          },
                                                          resetError: () async {
                                                            setState(() {
                                                              _model.hasErrorStreetName =
                                                                  false;
                                                              _model.errorStreetName =
                                                                  null;
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .suiteDesktopModel,
                                                        updateCallback: () =>
                                                            setState(() {}),
                                                        child:
                                                            CustomOutlinedTextFGeneralMCWidget(
                                                          enabled: _model
                                                              .isEditable!,
                                                          title:
                                                              'Apt # or Suite # or Room #',
                                                          icon: const Icon(
                                                            Icons.onetwothree,
                                                            size: 0.0,
                                                          ),
                                                          hasIconAction: false,
                                                          isRequired: true,
                                                          infoMessage: '',
                                                          errorMessage:
                                                              _model.errorSuite,
                                                          hasError: _model
                                                              .hasErrorSuite,
                                                          hintText: '',
                                                          initialValue: functions
                                                              .checkStringIsNull(
                                                                  getJsonField(
                                                            _model.addressData,
                                                            r'''$.Address2''',
                                                          )),
                                                          onIconTap:
                                                              () async {},
                                                          validate: () async {
                                                            if (_model.suiteDesktopModel
                                                                        .value !=
                                                                    null &&
                                                                _model.suiteDesktopModel
                                                                        .value !=
                                                                    '') {
                                                              return;
                                                            }

                                                            setState(() {
                                                              _model.hasErrorSuite =
                                                                  true;
                                                              _model.errorSuite =
                                                                  'Required Field';
                                                            });
                                                          },
                                                          resetError: () async {
                                                            setState(() {
                                                              _model.hasErrorSuite =
                                                                  false;
                                                              _model.errorSuite =
                                                                  null;
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ]
                                                    .divide(
                                                        const SizedBox(width: 16.0))
                                                    .around(
                                                        const SizedBox(width: 16.0)),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .cityDesktopModel,
                                                        updateCallback: () =>
                                                            setState(() {}),
                                                        child:
                                                            CustomOutlinedTextFGeneralMCWidget(
                                                          enabled: _model
                                                              .isEditable!,
                                                          title: 'City',
                                                          icon: const Icon(
                                                            Icons.onetwothree,
                                                            size: 0.0,
                                                          ),
                                                          hasIconAction: false,
                                                          isRequired: true,
                                                          infoMessage: '',
                                                          errorMessage:
                                                              _model.errorCity,
                                                          hasError: _model
                                                              .hasErrorCity,
                                                          hintText:
                                                              'West Hartfort',
                                                          initialValue: functions
                                                              .checkStringIsNull(
                                                                  getJsonField(
                                                            _model.addressData,
                                                            r'''$.City''',
                                                          )),
                                                          onIconTap:
                                                              () async {},
                                                          validate: () async {
                                                            if (_model.cityDesktopModel
                                                                        .value !=
                                                                    null &&
                                                                _model.cityDesktopModel
                                                                        .value !=
                                                                    '') {
                                                              return;
                                                            }

                                                            setState(() {
                                                              _model.hasErrorCity =
                                                                  true;
                                                              _model.errorCity =
                                                                  'Required Field';
                                                            });
                                                          },
                                                          resetError: () async {
                                                            setState(() {
                                                              _model.hasErrorCity =
                                                                  false;
                                                              _model.errorCity =
                                                                  null;
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        4.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Flexible(
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            4.0),
                                                                    child: Text(
                                                                      'State',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Arial',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '*',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Arial',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          letterSpacing:
                                                                              0.0,
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
                                                              if (_model
                                                                      .isEditable ??
                                                                  false) {
                                                                return FlutterFlowDropDown<
                                                                    String>(
                                                                  controller: _model
                                                                          .stateDesktopToDropDownValueController ??=
                                                                      FormFieldController<
                                                                          String>(
                                                                    _model.stateDesktopToDropDownValue ??= functions.getStateAddressValue(
                                                                        StatesCall.stateRes(
                                                                          (_model.statesApiRes?.jsonBody ??
                                                                              ''),
                                                                        )?.toList(),
                                                                        ManageContactDetailsGroup.getUserAddressCall.state(
                                                                          (_model.getUserAddresssApiRes?.jsonBody ??
                                                                              ''),
                                                                        )),
                                                                  ),
                                                                  options:
                                                                      StatesCall
                                                                          .statesList(
                                                                    (_model.statesApiRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )!,
                                                                  onChanged: (val) =>
                                                                      setState(() =>
                                                                          _model.stateDesktopToDropDownValue =
                                                                              val),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Arial',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            13.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                                  hintText:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    functions
                                                                        .checkStringIsNull(
                                                                            getJsonField(
                                                                      _model
                                                                          .addressData,
                                                                      r'''$.StateAbv''',
                                                                    )),
                                                                    'CONNECTICUT',
                                                                  ),
                                                                  icon: Icon(
                                                                    Icons
                                                                        .keyboard_arrow_down_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    size: 20.0,
                                                                  ),
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  elevation:
                                                                      2.0,
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
                                                                          8.0,
                                                                          4.0),
                                                                  hidesUnderline:
                                                                      true,
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
                                                                  ),
                                                                );
                                                              } else {
                                                                return Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 56.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                  ),
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      functions.getStateAddressValue(
                                                                          StatesCall.stateRes(
                                                                            (_model.statesApiRes?.jsonBody ??
                                                                                ''),
                                                                          )?.toList(),
                                                                          ManageContactDetailsGroup.getUserAddressCall.state(
                                                                            (_model.getUserAddresssApiRes?.jsonBody ??
                                                                                ''),
                                                                          ))!,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Arial',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            fontSize:
                                                                                13.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ]
                                                    .divide(
                                                        const SizedBox(width: 16.0))
                                                    .around(
                                                        const SizedBox(width: 16.0)),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .zipCodeDesktopModel,
                                                        updateCallback: () =>
                                                            setState(() {}),
                                                        child:
                                                            CustomOutlinedTextFGeneralMCWidget(
                                                          enabled: _model
                                                              .isEditable!,
                                                          title: 'Zip Code',
                                                          icon: const Icon(
                                                            Icons.onetwothree,
                                                            size: 0.0,
                                                          ),
                                                          hasIconAction: false,
                                                          isRequired: true,
                                                          infoMessage: '',
                                                          errorMessage: _model
                                                              .errorZipCode,
                                                          hasError: _model
                                                              .hasErrorZipCode,
                                                          hintText: '31232',
                                                          initialValue: functions
                                                              .checkStringIsNull(
                                                                  getJsonField(
                                                            _model.addressData,
                                                            r'''$.Zip''',
                                                          )),
                                                          onIconTap:
                                                              () async {},
                                                          validate: () async {
                                                            if (_model.zipCodeDesktopModel
                                                                        .value !=
                                                                    null &&
                                                                _model.zipCodeDesktopModel
                                                                        .value !=
                                                                    '') {
                                                              return;
                                                            }

                                                            setState(() {
                                                              _model.hasErrorZipCode =
                                                                  true;
                                                              _model.errorZipCode =
                                                                  'Required Field';
                                                            });
                                                          },
                                                          resetError: () async {
                                                            setState(() {
                                                              _model.hasErrorZipCode =
                                                                  false;
                                                              _model.errorZipCode =
                                                                  null;
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      decoration:
                                                          const BoxDecoration(),
                                                    ),
                                                  ),
                                                ]
                                                    .divide(
                                                        const SizedBox(width: 16.0))
                                                    .around(
                                                        const SizedBox(width: 16.0)),
                                              ),
                                            ]
                                                .divide(const SizedBox(height: 16.0))
                                                .around(const SizedBox(height: 16.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    if (_model.isEditable ?? true)
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
                                                                .passwordValue!,
                                                            isLoading: false,
                                                            hasError: _model
                                                                .hasErrorPassoword!,
                                                            onChange:
                                                                (value) async {
                                                              setState(() {
                                                                _model.passwordValue =
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
                                    if (_model.isEditable ?? true)
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            wrapWithModel(
                                              model: _model
                                                  .commonCancelButtonModel1,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: CommonCancelButtonWidget(
                                                title: 'Cancel',
                                                onTap: () async {
                                                  _model.updatePage(() {
                                                    _model.isLoading = true;
                                                  });
                                                  _model.updatePage(() {
                                                    _model.addressData =
                                                        getJsonField(
                                                      (_model.getUserAddresssApiRes
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$''',
                                                    );
                                                  });
                                                  await Future.delayed(
                                                      const Duration(
                                                          milliseconds: 500));
                                                  setState(() {
                                                    _model.isEditable = false;
                                                    _model.passwordValue = '';
                                                    _model.isLoading = false;
                                                  });
                                                },
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .commonCustomButtonModel1,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: CommonCustomButtonWidget(
                                                titile: 'Save',
                                                isDisabled: !(!_model.hasErrorStreetName! &&
                                                    !_model.hasErrorSuite! &&
                                                    !_model.hasErrorCity! &&
                                                    !_model.hasErrorZipCode! &&
                                                    !_model
                                                        .hasErrorPassoword! &&
                                                    (_model.passwordValue != null &&
                                                        _model.passwordValue !=
                                                            '') &&
                                                    (_model.streetNameDesktopModel.value != null &&
                                                        _model.streetNameDesktopModel.value !=
                                                            '') &&
                                                    (_model.suiteDesktopModel
                                                                .value !=
                                                            null &&
                                                        _model.suiteDesktopModel
                                                                .value !=
                                                            '') &&
                                                    (_model.zipCodeDesktopModel
                                                                .value !=
                                                            null &&
                                                        _model.zipCodeDesktopModel
                                                                .value !=
                                                            '') &&
                                                    (_model.zipCodeDesktopModel
                                                                .value !=
                                                            null &&
                                                        _model.zipCodeDesktopModel
                                                                .value !=
                                                            '') &&
                                                    (_model.stateDesktopToDropDownValue !=
                                                            null &&
                                                        _model.stateDesktopToDropDownValue != '')),
                                                isEditIconVisible: false,
                                                onTap: () async {
                                                  setState(() {
                                                    _model.isSuccess = false;
                                                    _model.isError = false;
                                                  });
                                                  unawaited(
                                                    () async {
                                                      await action_blocks
                                                          .showLoadingDialog(
                                                              context);
                                                    }(),
                                                  );
                                                  _model.updateAddressAPiRes =
                                                      await action_blocks
                                                          .updateAddressABAPI(
                                                    context,
                                                    userId: FFAppState()
                                                        .selectedUserId
                                                        .toString(),
                                                    city: _model
                                                        .cityDesktopModel.value,
                                                    state: getJsonField(
                                                              StatesCall
                                                                      .stateRes(
                                                                (_model.statesApiRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                                  ?.where((e) =>
                                                                      _model
                                                                          .stateDesktopToDropDownValue ==
                                                                      getJsonField(
                                                                        e,
                                                                        r'''$.State''',
                                                                      ))
                                                                  .toList()
                                                                  .first,
                                                              r'''$.Abbreviation''',
                                                            ) !=
                                                            null
                                                        ? getJsonField(
                                                            StatesCall.stateRes(
                                                              (_model.statesApiRes
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )
                                                                ?.where((e) =>
                                                                    _model
                                                                        .stateDesktopToDropDownValue ==
                                                                    getJsonField(
                                                                      e,
                                                                      r'''$.State''',
                                                                    ))
                                                                .toList()
                                                                .first,
                                                            r'''$.Abbreviation''',
                                                          ).toString()
                                                        : StatesCall
                                                            .abbreviationList(
                                                            (_model.statesApiRes
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )?.first,
                                                    zip: _model
                                                        .zipCodeDesktopModel
                                                        .value,
                                                    zipPlus: _model
                                                        .zipCodeDesktopModel
                                                        .value,
                                                    currentPass:
                                                        _model.passwordValue,
                                                    address1: _model
                                                        .streetNameDesktopModel
                                                        .value,
                                                    address2: _model
                                                        .suiteDesktopModel
                                                        .value,
                                                  );
                                                  if (_model
                                                          .updateAddressAPiRes !=
                                                      null) {
                                                    if (getJsonField(
                                                          _model
                                                              .updateAddressAPiRes,
                                                          r'''$.Message''',
                                                        ) !=
                                                        null) {
                                                      setState(() {
                                                        _model.isSuccess =
                                                            false;
                                                        _model.isError = true;
                                                        _model.apiErrorMes =
                                                            getJsonField(
                                                          _model
                                                              .updateAddressAPiRes,
                                                          r'''$.Message''',
                                                        ).toString();
                                                      });
                                                    } else {
                                                      setState(() {
                                                        _model.isSuccess = true;
                                                        _model.isError = false;
                                                      });
                                                    }
                                                  } else {
                                                    setState(() {
                                                      _model.isSuccess = false;
                                                      _model.isError = true;
                                                      _model.apiErrorMes =
                                                          getJsonField(
                                                        _model
                                                            .updateAddressAPiRes,
                                                        r'''$.Message''',
                                                      ).toString();
                                                    });
                                                  }

                                                  _model.getUserAddressUpdateRes =
                                                      await ManageContactDetailsGroup
                                                          .getUserAddressCall
                                                          .call(
                                                    userId: FFAppState()
                                                        .selectedUserId
                                                        .toString(),
                                                    dynamicBaseURL: FFAppState()
                                                        .dynamicBaseURL,
                                                  );
                                                  if ((_model
                                                          .getUserAddressUpdateRes
                                                          ?.succeeded ??
                                                      true)) {
                                                    _model.updatePage(() {
                                                      _model.addressData =
                                                          getJsonField(
                                                        (_model.getUserAddressUpdateRes
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$''',
                                                      );
                                                      _model.isEditable = false;
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
                                    if (!_model.isEditable!)
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            if (widget.isPrimaryUser)
                                              wrapWithModel(
                                                model: _model
                                                    .commonCustomButtonModel2,
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
                                                        _model.passwordValue =
                                                            '';
                                                      });
                                                    } else {
                                                      setState(() {
                                                        _model.isEditable =
                                                            true;
                                                        _model.passwordValue =
                                                            '';
                                                      });
                                                    }
                                                  },
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    wrapWithModel(
                                      model: _model.infoMessageModel1,
                                      updateCallback: () => setState(() {}),
                                      child: const InfoMessageWidget(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          if ((_model.addressData != null) &&
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
                                    if (_model.isError ?? true)
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: wrapWithModel(
                                          model:
                                              _model.errorBannerOutlinedModel2,
                                          updateCallback: () => setState(() {}),
                                          child: ErrorBannerOutlinedWidget(
                                            message: _model.apiErrorMes,
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
                                                wrapWithModel(
                                                  model: _model.streetNameModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child:
                                                      CustomOutlinedTextFGeneralMCWidget(
                                                    enabled: _model.isEditable!,
                                                    title: 'Street Name',
                                                    icon: const Icon(
                                                      Icons.onetwothree,
                                                      size: 0.0,
                                                    ),
                                                    hasIconAction: false,
                                                    isRequired: true,
                                                    infoMessage: '',
                                                    errorMessage:
                                                        _model.errorStreetName,
                                                    hasError: _model
                                                        .hasErrorStreetName,
                                                    hintText: '25 XVEXJBBQ EBN',
                                                    initialValue: functions
                                                        .checkStringIsNull(
                                                            getJsonField(
                                                      _model.addressData,
                                                      r'''$.Address1''',
                                                    )),
                                                    onIconTap: () async {},
                                                    validate: () async {
                                                      if (_model.streetNameModel
                                                                  .value !=
                                                              null &&
                                                          _model.streetNameModel
                                                                  .value !=
                                                              '') {
                                                        return;
                                                      }

                                                      setState(() {
                                                        _model.hasErrorStreetName =
                                                            true;
                                                        _model.errorStreetName =
                                                            'Required Field';
                                                      });
                                                    },
                                                    resetError: () async {
                                                      setState(() {
                                                        _model.hasErrorStreetName =
                                                            false;
                                                        _model.errorStreetName =
                                                            null;
                                                      });
                                                    },
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model.suiteModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child:
                                                      CustomOutlinedTextFGeneralMCWidget(
                                                    enabled: _model.isEditable!,
                                                    title:
                                                        'Apt # or Suite # or Room #',
                                                    icon: const Icon(
                                                      Icons.onetwothree,
                                                      size: 0.0,
                                                    ),
                                                    hasIconAction: false,
                                                    isRequired: true,
                                                    infoMessage: '',
                                                    errorMessage:
                                                        _model.errorSuite,
                                                    hasError:
                                                        _model.hasErrorSuite,
                                                    hintText: '',
                                                    initialValue: functions
                                                        .checkStringIsNull(
                                                            getJsonField(
                                                      _model.addressData,
                                                      r'''$.Address2''',
                                                    )),
                                                    onIconTap: () async {},
                                                    validate: () async {
                                                      if (_model.suiteModel
                                                                  .value !=
                                                              null &&
                                                          _model.suiteModel
                                                                  .value !=
                                                              '') {
                                                        return;
                                                      }

                                                      setState(() {
                                                        _model.hasErrorSuite =
                                                            true;
                                                        _model.errorSuite =
                                                            'Required Field';
                                                      });
                                                    },
                                                    resetError: () async {
                                                      setState(() {
                                                        _model.hasErrorSuite =
                                                            false;
                                                        _model.errorSuite =
                                                            null;
                                                      });
                                                    },
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model.cityModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child:
                                                      CustomOutlinedTextFGeneralMCWidget(
                                                    enabled: _model.isEditable!,
                                                    title: 'City',
                                                    icon: const Icon(
                                                      Icons.onetwothree,
                                                      size: 0.0,
                                                    ),
                                                    hasIconAction: false,
                                                    isRequired: true,
                                                    infoMessage: '',
                                                    errorMessage:
                                                        _model.errorCity,
                                                    hasError:
                                                        _model.hasErrorCity,
                                                    hintText: 'West Hartfort',
                                                    initialValue: functions
                                                        .checkStringIsNull(
                                                            getJsonField(
                                                      _model.addressData,
                                                      r'''$.City''',
                                                    )),
                                                    onIconTap: () async {},
                                                    validate: () async {
                                                      if (_model.cityModel
                                                                  .value !=
                                                              null &&
                                                          _model.cityModel
                                                                  .value !=
                                                              '') {
                                                        return;
                                                      }

                                                      setState(() {
                                                        _model.hasErrorCity =
                                                            true;
                                                        _model.errorCity =
                                                            'Required Field';
                                                      });
                                                    },
                                                    resetError: () async {
                                                      setState(() {
                                                        _model.hasErrorCity =
                                                            false;
                                                        _model.errorCity = null;
                                                      });
                                                    },
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    4.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Flexible(
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            4.0),
                                                                child: Text(
                                                                  'State',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Arial',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                '*',
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
                                                          if (_model
                                                                  .isEditable ??
                                                              false) {
                                                            return FlutterFlowDropDown<
                                                                String>(
                                                              controller: _model
                                                                      .stateMobileDropDownValueController ??=
                                                                  FormFieldController<
                                                                      String>(
                                                                _model.stateMobileDropDownValue ??= functions
                                                                    .getStateAddressValue(
                                                                        StatesCall
                                                                                .stateRes(
                                                                          (_model.statesApiRes?.jsonBody ??
                                                                              ''),
                                                                        )
                                                                            ?.toList(),
                                                                        ManageContactDetailsGroup
                                                                            .getUserAddressCall
                                                                            .state(
                                                                          (_model.getUserAddresssApiRes?.jsonBody ??
                                                                              ''),
                                                                        )),
                                                              ),
                                                              options: StatesCall
                                                                  .statesList(
                                                                (_model.statesApiRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )!,
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      _model.stateMobileDropDownValue =
                                                                          val),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Arial',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            13.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                              hintText:
                                                                  valueOrDefault<
                                                                      String>(
                                                                functions
                                                                    .checkStringIsNull(
                                                                        getJsonField(
                                                                  _model
                                                                      .addressData,
                                                                  r'''$.StateAbv''',
                                                                )),
                                                                ' CONNECTICUT',
                                                              ),
                                                              icon: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 20.0,
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
                                                                          8.0,
                                                                          4.0),
                                                              hidesUnderline:
                                                                  true,
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
                                                              ),
                                                            );
                                                          } else {
                                                            return Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 56.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            4.0),
                                                              ),
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  functions.getStateAddressValue(
                                                                      StatesCall.stateRes(
                                                                        (_model.statesApiRes?.jsonBody ??
                                                                            ''),
                                                                      )?.toList(),
                                                                      ManageContactDetailsGroup.getUserAddressCall.state(
                                                                        (_model.getUserAddresssApiRes?.jsonBody ??
                                                                            ''),
                                                                      ))!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Arial',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model.zipcodeModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child:
                                                      CustomOutlinedTextFGeneralMCWidget(
                                                    enabled: _model.isEditable!,
                                                    title: 'Zip Code',
                                                    icon: const Icon(
                                                      Icons.onetwothree,
                                                      size: 0.0,
                                                    ),
                                                    hasIconAction: false,
                                                    isRequired: true,
                                                    infoMessage: '',
                                                    errorMessage:
                                                        _model.errorZipCode,
                                                    hasError:
                                                        _model.hasErrorZipCode,
                                                    hintText: '31232',
                                                    initialValue: functions
                                                        .checkStringIsNull(
                                                            getJsonField(
                                                      _model.addressData,
                                                      r'''$.Zip''',
                                                    )),
                                                    onIconTap: () async {},
                                                    validate: () async {
                                                      if (_model.zipcodeModel
                                                                  .value !=
                                                              null &&
                                                          _model.zipcodeModel
                                                                  .value !=
                                                              '') {
                                                        return;
                                                      }

                                                      setState(() {
                                                        _model.hasErrorZipCode =
                                                            true;
                                                        _model.errorZipCode =
                                                            'Required Field';
                                                      });
                                                    },
                                                    resetError: () async {
                                                      setState(() {
                                                        _model.hasErrorZipCode =
                                                            false;
                                                        _model.errorZipCode =
                                                            null;
                                                      });
                                                    },
                                                  ),
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
                                    if (_model.isEditable ?? true)
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
                                                                .passwordValue!,
                                                            isLoading: false,
                                                            hasError: _model
                                                                .hasErrorPassoword!,
                                                            onChange:
                                                                (value) async {
                                                              setState(() {
                                                                _model.passwordValue =
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
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (_model.isEditable ?? true)
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
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
                                              child: CommonCancelButtonWidget(
                                                title: 'Cancel',
                                                onTap: () async {
                                                  _model.updatePage(() {
                                                    _model.isLoading = true;
                                                  });
                                                  _model.updatePage(() {
                                                    _model.addressData =
                                                        getJsonField(
                                                      (_model.getUserAddresssApiRes
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$''',
                                                    );
                                                  });
                                                  await Future.delayed(
                                                      const Duration(
                                                          milliseconds: 500));
                                                  setState(() {
                                                    _model.isEditable = false;
                                                    _model.passwordValue = '';
                                                    _model.isLoading = false;
                                                  });
                                                },
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .commonCustomButtonModel3,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: CommonCustomButtonWidget(
                                                titile: 'Save',
                                                isDisabled: !(!_model.hasErrorStreetName! &&
                                                    !_model.hasErrorSuite! &&
                                                    !_model.hasErrorCity! &&
                                                    !_model.hasErrorZipCode! &&
                                                    !_model
                                                        .hasErrorPassoword! &&
                                                    (_model.streetNameModel.value !=
                                                            null &&
                                                        _model.streetNameModel.value !=
                                                            '') &&
                                                    (_model.suiteModel.value !=
                                                            null &&
                                                        _model.suiteModel.value !=
                                                            '') &&
                                                    (_model.cityModel.value !=
                                                            null &&
                                                        _model.cityModel.value !=
                                                            '') &&
                                                    (_model.zipcodeModel.value !=
                                                            null &&
                                                        _model.zipcodeModel.value !=
                                                            '') &&
                                                    (_model.passwordValue !=
                                                            null &&
                                                        _model.passwordValue !=
                                                            '') &&
                                                    (_model.stateMobileDropDownValue !=
                                                            null &&
                                                        _model.stateMobileDropDownValue !=
                                                            '')),
                                                isEditIconVisible: false,
                                                onTap: () async {
                                                  setState(() {
                                                    _model.isSuccess = false;
                                                    _model.isError = false;
                                                  });
                                                  unawaited(
                                                    () async {
                                                      await action_blocks
                                                          .showLoadingDialog(
                                                              context);
                                                    }(),
                                                  );
                                                  _model.updateAddressAPiMobileRes =
                                                      await action_blocks
                                                          .updateAddressABAPI(
                                                    context,
                                                    userId: FFAppState()
                                                        .selectedUserId
                                                        .toString(),
                                                    city:
                                                        _model.cityModel.value,
                                                    state: getJsonField(
                                                              StatesCall
                                                                      .stateRes(
                                                                (_model.statesApiRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                                  ?.where((e) =>
                                                                      _model
                                                                          .stateMobileDropDownValue ==
                                                                      getJsonField(
                                                                        e,
                                                                        r'''$.State''',
                                                                      ))
                                                                  .toList()
                                                                  .first,
                                                              r'''$.Abbreviation''',
                                                            ) !=
                                                            null
                                                        ? getJsonField(
                                                            StatesCall.stateRes(
                                                              (_model.statesApiRes
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )
                                                                ?.where((e) =>
                                                                    _model
                                                                        .stateMobileDropDownValue ==
                                                                    getJsonField(
                                                                      e,
                                                                      r'''$.State''',
                                                                    ))
                                                                .toList()
                                                                .first,
                                                            r'''$.Abbreviation''',
                                                          ).toString()
                                                        : StatesCall
                                                            .abbreviationList(
                                                            (_model.statesApiRes
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )?.first,
                                                    zip: _model
                                                        .zipcodeModel.value,
                                                    zipPlus: _model
                                                        .zipcodeModel.value,
                                                    currentPass:
                                                        _model.passwordValue,
                                                    address1: _model
                                                        .streetNameModel.value,
                                                    address2:
                                                        _model.suiteModel.value,
                                                  );
                                                  if (_model
                                                          .updateAddressAPiMobileRes !=
                                                      null) {
                                                    if (getJsonField(
                                                          _model
                                                              .updateAddressAPiMobileRes,
                                                          r'''$.Message''',
                                                        ) !=
                                                        null) {
                                                      setState(() {
                                                        _model.isSuccess =
                                                            false;
                                                        _model.isError = true;
                                                        _model.apiErrorMes =
                                                            getJsonField(
                                                          _model
                                                              .updateAddressAPiMobileRes,
                                                          r'''$.Message''',
                                                        ).toString();
                                                      });
                                                    } else {
                                                      setState(() {
                                                        _model.isSuccess = true;
                                                      });
                                                    }
                                                  } else {
                                                    setState(() {
                                                      _model.isSuccess = false;
                                                      _model.isError = true;
                                                      _model.apiErrorMes =
                                                          getJsonField(
                                                        _model
                                                            .updateAddressAPiRes,
                                                        r'''$.Message''',
                                                      ).toString();
                                                    });
                                                  }

                                                  _model.getUserAddressUpdateMOBILERes =
                                                      await ManageContactDetailsGroup
                                                          .getUserAddressCall
                                                          .call(
                                                    userId: FFAppState()
                                                        .selectedUserId
                                                        .toString(),
                                                    dynamicBaseURL: FFAppState()
                                                        .dynamicBaseURL,
                                                  );
                                                  if ((_model
                                                          .getUserAddressUpdateMOBILERes
                                                          ?.succeeded ??
                                                      true)) {
                                                    _model.updatePage(() {
                                                      _model.addressData =
                                                          getJsonField(
                                                        (_model.getUserAddressUpdateMOBILERes
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$''',
                                                      );
                                                      _model.isEditable = false;
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
                                    if (!_model.isEditable!)
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            if (widget.isPrimaryUser)
                                              wrapWithModel(
                                                model: _model
                                                    .commonCustomButtonModel4,
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
                                                        _model.passwordValue =
                                                            '';
                                                      });
                                                    } else {
                                                      setState(() {
                                                        _model.isEditable =
                                                            true;
                                                        _model.passwordValue =
                                                            '';
                                                      });
                                                    }
                                                  },
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    wrapWithModel(
                                      model: _model.infoMessageModel2,
                                      updateCallback: () => setState(() {}),
                                      child: const InfoMessageWidget(),
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
                  _model.isEditable = true;
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
