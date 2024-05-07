import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/common_circular_indicator/common_circular_indicator_widget.dart';
import '/components/info_help_icon/info_help_icon_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'security_alerts_model.dart';
export 'security_alerts_model.dart';

class SecurityAlertsWidget extends StatefulWidget {
  const SecurityAlertsWidget({
    super.key,
    bool? isPrimaryUser,
  }) : isPrimaryUser = isPrimaryUser ?? false;

  final bool isPrimaryUser;

  @override
  State<SecurityAlertsWidget> createState() => _SecurityAlertsWidgetState();
}

class _SecurityAlertsWidgetState extends State<SecurityAlertsWidget> {
  late SecurityAlertsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SecurityAlertsModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await _model.initialLoading(context);
      setState(() {});
      setState(() {});
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
                      'Manage Account Alerts',
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
          Container(
            decoration: const BoxDecoration(),
            child: Builder(
              builder: (context) {
                if ((_model.isLoading == true) ||
                    (_model.securityAlerts == null)) {
                  return Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
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
                    child: Builder(
                      builder: (context) {
                        if (_model.isLoading == true) {
                          return wrapWithModel(
                            model: _model.commonCircularIndicatorModel,
                            updateCallback: () => setState(() {}),
                            child: const CommonCircularIndicatorWidget(),
                          );
                        } else {
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  'Error loading data... Please try again',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Arial',
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  await _model.initialLoading(context);
                                  setState(() {});
                                  setState(() {});
                                },
                                text: 'Reload',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Arial',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          );
                        }
                      },
                    ),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (_model.hasSuccess && !_model.hasUpdateError)
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).success,
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).success,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Alert preferences saved successfully.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Arial',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                        if (_model.hasUpdateError)
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).error,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                _model.updateErrorMessage,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Arial',
                                      color: FlutterFlowTheme.of(context).error,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                        Column(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Text(
                                        'Security Alerts',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Arial',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Builder(
                                      builder: (context) {
                                        if (_model.isSecurityAlertsExpanded ==
                                            true) {
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setState(() {
                                                _model.isSecurityAlertsExpanded =
                                                    false;
                                              });
                                            },
                                            child: Icon(
                                              Icons.remove_circle_outline,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              size: 22.0,
                                            ),
                                          );
                                        } else {
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setState(() {
                                                _model.isSecurityAlertsExpanded =
                                                    true;
                                              });
                                            },
                                            child: Icon(
                                              Icons.add_circle_outline_sharp,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              size: 22.0,
                                            ),
                                          );
                                        }
                                      },
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
                                if (_model.isSecurityAlertsExpanded == true) {
                                  return Material(
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
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(8.0),
                                          bottomRight: Radius.circular(8.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .accent4,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent2,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0.0,
                                                                0.0,
                                                                valueOrDefault<
                                                                    double>(
                                                                  _model.securityAlerts
                                                                              ?.isUserEnrollForSMSAlert !=
                                                                          'N'
                                                                      ? 12.0
                                                                      : 0.0,
                                                                  0.0,
                                                                ),
                                                                0.0),
                                                    child: Text(
                                                      'Email',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Arial',
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'Text',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Arial',
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                      if (_model.securityAlerts
                                                              ?.isUserEnrollForSMSAlert ==
                                                          'N')
                                                        SizedBox(
                                                          width: 16.0,
                                                          height: 16.0,
                                                          child: custom_widgets
                                                              .AlertInfoIcon(
                                                            width: 16.0,
                                                            height: 16.0,
                                                            iconSize: 16.0,
                                                            message:
                                                                'To enroll for text alerts, please\n',
                                                            linkTitle:
                                                                'click here',
                                                            onClick: () async {
                                                              FFAppState()
                                                                  .update(() {
                                                                FFAppState()
                                                                    .selectedMCDrawerIndex = 3;
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      if (_model.securityAlerts
                                                              ?.isUserEnrollForSMSAlert !=
                                                          'N')
                                                        Container(
                                                          width: 8.0,
                                                          height: 16.0,
                                                          decoration:
                                                              const BoxDecoration(
                                                            color: Colors
                                                                .transparent,
                                                          ),
                                                        ),
                                                    ].divide(
                                                        const SizedBox(width: 8.0)),
                                                  ),
                                                ].divide(SizedBox(
                                                    width: MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall
                                                        ? 16.0
                                                        : 32.0)),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    'Two-Factor Authentication',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Arial',
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                              0.0,
                                                              0.0,
                                                              valueOrDefault<
                                                                  double>(
                                                                MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall
                                                                    ? 12.0
                                                                    : 20.0,
                                                                0.0,
                                                              ),
                                                              0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
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
                                                                          2.0),
                                                            ),
                                                          ),
                                                          unselectedWidgetColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                        ),
                                                        child: Checkbox(
                                                          value: _model
                                                                  .emailTwoFactorValue ??=
                                                              _model
                                                                  .securityAlerts!
                                                                  .isTwoFactorAuthenticationEmail,
                                                          onChanged:
                                                              (newValue) async {
                                                            setState(() => _model
                                                                    .emailTwoFactorValue =
                                                                newValue!);
                                                            if (newValue!) {
                                                              setState(() {
                                                                _model.isPasswordRequired =
                                                                    valueOrDefault<
                                                                            bool>(
                                                                  (_model.emailTwoFactorValue !=
                                                                          _model
                                                                              .securityAlerts
                                                                              ?.isTwoFactorAuthenticationEmail) ||
                                                                      (_model.textTwoFactorValue !=
                                                                          _model
                                                                              .securityAlerts
                                                                              ?.isTwoFactorAuthenticationText),
                                                                  false,
                                                                )
                                                                        ? true
                                                                        : false;
                                                              });
                                                            } else {
                                                              setState(() {
                                                                _model.isPasswordRequired =
                                                                    valueOrDefault<
                                                                            bool>(
                                                                  (_model.emailTwoFactorValue !=
                                                                          _model
                                                                              .securityAlerts
                                                                              ?.isTwoFactorAuthenticationEmail) ||
                                                                      (_model.textTwoFactorValue !=
                                                                          _model
                                                                              .securityAlerts
                                                                              ?.isTwoFactorAuthenticationText),
                                                                  false,
                                                                )
                                                                        ? true
                                                                        : false;
                                                              });
                                                            }
                                                          },
                                                          side: BorderSide(
                                                            width: 2,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
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
                                                                          2.0),
                                                            ),
                                                          ),
                                                          unselectedWidgetColor: _model
                                                                      .securityAlerts
                                                                      ?.isUserEnrollForSMSAlert ==
                                                                  'N'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .secondaryBackground
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                        ),
                                                        child: Checkbox(
                                                          value: _model
                                                                  .textTwoFactorValue ??=
                                                              _model
                                                                  .securityAlerts!
                                                                  .isTwoFactorAuthenticationText,
                                                          onChanged: (_model
                                                                      .securityAlerts
                                                                      ?.isUserEnrollForSMSAlert ==
                                                                  'N')
                                                              ? null
                                                              : (newValue) async {
                                                                  setState(() =>
                                                                      _model.textTwoFactorValue =
                                                                          newValue!);
                                                                  if (newValue!) {
                                                                    setState(
                                                                        () {
                                                                      _model
                                                                          .isPasswordRequired = valueOrDefault<
                                                                              bool>(
                                                                        (_model.emailTwoFactorValue != _model.securityAlerts?.isTwoFactorAuthenticationEmail) ||
                                                                            (_model.textTwoFactorValue !=
                                                                                _model.securityAlerts?.isTwoFactorAuthenticationText),
                                                                        false,
                                                                      )
                                                                          ? true
                                                                          : false;
                                                                    });
                                                                  } else {
                                                                    setState(
                                                                        () {
                                                                      _model
                                                                          .isPasswordRequired = valueOrDefault<
                                                                              bool>(
                                                                        (_model.emailTwoFactorValue != _model.securityAlerts?.isTwoFactorAuthenticationEmail) ||
                                                                            (_model.textTwoFactorValue !=
                                                                                _model.securityAlerts?.isTwoFactorAuthenticationText),
                                                                        false,
                                                                      )
                                                                          ? true
                                                                          : false;
                                                                    });
                                                                  }
                                                                },
                                                          side: BorderSide(
                                                            width: 2,
                                                            color: _model
                                                                        .securityAlerts
                                                                        ?.isUserEnrollForSMSAlert ==
                                                                    'N'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                          ),
                                                          activeColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          checkColor: (_model
                                                                      .securityAlerts
                                                                      ?.isUserEnrollForSMSAlert ==
                                                                  'N')
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .secondaryBackground
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                        ),
                                                      ),
                                                    ].divide(SizedBox(
                                                        width: MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall
                                                            ? 40.0
                                                            : 50.0)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                } else {
                                  return Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  );
                                }
                              },
                            ),
                          ],
                        ),
                        if (widget.isPrimaryUser)
                          Column(
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Text(
                                          'Payment Alerts',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Arial',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                      Builder(
                                        builder: (context) {
                                          if (_model.isPaymentAlertsExpanded ==
                                              true) {
                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                setState(() {
                                                  _model.isPaymentAlertsExpanded =
                                                      false;
                                                });
                                              },
                                              child: Icon(
                                                Icons.remove_circle_outline,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                size: 22.0,
                                              ),
                                            );
                                          } else {
                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                setState(() {
                                                  _model.isPaymentAlertsExpanded =
                                                      true;
                                                });
                                              },
                                              child: Icon(
                                                Icons.add_circle_outline_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                size: 22.0,
                                              ),
                                            );
                                          }
                                        },
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
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.1),
                                child: Builder(
                                  builder: (context) {
                                    if (_model.isPaymentAlertsExpanded ==
                                        true) {
                                      return Material(
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
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(8.0),
                                              bottomRight: Radius.circular(8.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent4,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent2,
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(16.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    valueOrDefault<
                                                                        double>(
                                                                      _model.securityAlerts?.isUserEnrollForSMSAlert !=
                                                                              'N'
                                                                          ? 12.0
                                                                          : 0.0,
                                                                      0.0,
                                                                    ),
                                                                    0.0),
                                                        child: Text(
                                                          'Email',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Arial',
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'Text',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Arial',
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                          if (_model
                                                                  .securityAlerts
                                                                  ?.isUserEnrollForSMSAlert ==
                                                              'N')
                                                            SizedBox(
                                                              width: 16.0,
                                                              height: 16.0,
                                                              child: custom_widgets
                                                                  .AlertInfoIcon(
                                                                width: 16.0,
                                                                height: 16.0,
                                                                iconSize: 16.0,
                                                                message:
                                                                    'To enroll for text alerts, please\n',
                                                                linkTitle:
                                                                    'click here',
                                                                onClick:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                        .selectedMCDrawerIndex = 3;
                                                                  });
                                                                },
                                                              ),
                                                            ),
                                                          if (_model
                                                                  .securityAlerts
                                                                  ?.isUserEnrollForSMSAlert !=
                                                              'N')
                                                            Container(
                                                              width: 8.0,
                                                              height: 16.0,
                                                              decoration:
                                                                  const BoxDecoration(
                                                                color: Colors
                                                                    .transparent,
                                                              ),
                                                            ),
                                                        ].divide(const SizedBox(
                                                            width: 8.0)),
                                                      ),
                                                    ].divide(SizedBox(
                                                        width: MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall
                                                            ? 16.0
                                                            : 32.0)),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'Payment Received',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Arial',
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                              if (responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                                tablet: false,
                                                              ))
                                                                wrapWithModel(
                                                                  model: _model
                                                                      .infoHelpIconModel1,
                                                                  updateCallback:
                                                                      () => setState(
                                                                          () {}),
                                                                  child:
                                                                      const InfoHelpIconWidget(
                                                                    message:
                                                                        'Receive an alert when \nwe\'ve received your \npayment',
                                                                    iconSize:
                                                                        16.0,
                                                                  ),
                                                                ),
                                                            ].divide(const SizedBox(
                                                                width: 8.0)),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  valueOrDefault<
                                                                      double>(
                                                                    MediaQuery.sizeOf(context).width <
                                                                            kBreakpointSmall
                                                                        ? 12.0
                                                                        : 20.0,
                                                                    0.0,
                                                                  ),
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
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
                                                                              2.0),
                                                                ),
                                                              ),
                                                              unselectedWidgetColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                            ),
                                                            child: Checkbox(
                                                              value: _model
                                                                      .emailPaymentRecievedValue ??=
                                                                  _model
                                                                      .securityAlerts!
                                                                      .isPaymentReceivedEmail,
                                                              onChanged:
                                                                  (newValue) async {
                                                                setState(() =>
                                                                    _model.emailPaymentRecievedValue =
                                                                        newValue!);
                                                              },
                                                              side: BorderSide(
                                                                width: 2,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
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
                                                                              2.0),
                                                                ),
                                                              ),
                                                              unselectedWidgetColor: _model
                                                                          .securityAlerts
                                                                          ?.isUserEnrollForSMSAlert ==
                                                                      'N'
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                            ),
                                                            child: Checkbox(
                                                              value: _model
                                                                      .textPaymentRecievedValue ??=
                                                                  _model
                                                                      .securityAlerts!
                                                                      .isPaymentReceivedText,
                                                              onChanged: (_model
                                                                          .securityAlerts
                                                                          ?.isUserEnrollForSMSAlert ==
                                                                      'N')
                                                                  ? null
                                                                  : (newValue) async {
                                                                      setState(() =>
                                                                          _model.textPaymentRecievedValue =
                                                                              newValue!);
                                                                    },
                                                              side: BorderSide(
                                                                width: 2,
                                                                color: _model
                                                                            .securityAlerts
                                                                            ?.isUserEnrollForSMSAlert ==
                                                                        'N'
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                              ),
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              checkColor: (_model
                                                                          .securityAlerts
                                                                          ?.isUserEnrollForSMSAlert ==
                                                                      'N')
                                                                  ? null
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall
                                                                ? 40.0
                                                                : 50.0)),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Divider(
                                                thickness: 1.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 4.0, 8.0, 4.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          constraints:
                                                              BoxConstraints(
                                                            maxWidth: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.4,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                          ),
                                                          child: Wrap(
                                                            spacing: 4.0,
                                                            runSpacing: 0.0,
                                                            alignment:
                                                                WrapAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                WrapCrossAlignment
                                                                    .center,
                                                            direction:
                                                                Axis.horizontal,
                                                            runAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalDirection:
                                                                VerticalDirection
                                                                    .down,
                                                            clipBehavior:
                                                                Clip.none,
                                                            children: [
                                                              Text(
                                                                'Payment Reminder due in',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Arial',
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                              FlutterFlowDropDown<
                                                                  String>(
                                                                controller: _model
                                                                        .dropDownValueController ??=
                                                                    FormFieldController<
                                                                        String>(
                                                                  _model.dropDownValue ??=
                                                                      _model
                                                                          .remainderDays,
                                                                ),
                                                                options: const [
                                                                  '3',
                                                                  '4',
                                                                  '5',
                                                                  '6',
                                                                  '7',
                                                                  '8',
                                                                  '9',
                                                                  '10'
                                                                ],
                                                                onChanged:
                                                                    (val) async {
                                                                  setState(() =>
                                                                      _model.dropDownValue =
                                                                          val);
                                                                  setState(() {
                                                                    _model.remainderDays =
                                                                        _model
                                                                            .dropDownValue!;
                                                                  });
                                                                },
                                                                width: 70.0,
                                                                height: 46.0,
                                                                textStyle: FlutterFlowTheme.of(
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
                                                                icon: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 24.0,
                                                                ),
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                elevation: 2.0,
                                                                borderColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                borderWidth:
                                                                    2.0,
                                                                borderRadius:
                                                                    8.0,
                                                                margin: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                                hidesUnderline:
                                                                    true,
                                                                isOverButton:
                                                                    true,
                                                                isSearchable:
                                                                    false,
                                                                isMultiSelect:
                                                                    false,
                                                              ),
                                                              Text(
                                                                'Days',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Arial',
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                              if (responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                                tablet: false,
                                                              ))
                                                                wrapWithModel(
                                                                  model: _model
                                                                      .infoHelpIconModel2,
                                                                  updateCallback:
                                                                      () => setState(
                                                                          () {}),
                                                                  child:
                                                                      const InfoHelpIconWidget(
                                                                    message:
                                                                        'Choose how many \ndays before your \npayment is due that \nyou’ll receive an alert',
                                                                    iconSize:
                                                                        16.0,
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  valueOrDefault<
                                                                      double>(
                                                                    MediaQuery.sizeOf(context).width <
                                                                            kBreakpointSmall
                                                                        ? 12.0
                                                                        : 20.0,
                                                                    0.0,
                                                                  ),
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
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
                                                                              2.0),
                                                                ),
                                                              ),
                                                              unselectedWidgetColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                            ),
                                                            child: Checkbox(
                                                              value: _model
                                                                      .emailPaymentRemainderValue ??=
                                                                  _model
                                                                      .securityAlerts!
                                                                      .isPaymentReminderEmail,
                                                              onChanged:
                                                                  (newValue) async {
                                                                setState(() =>
                                                                    _model.emailPaymentRemainderValue =
                                                                        newValue!);
                                                              },
                                                              side: BorderSide(
                                                                width: 2,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
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
                                                                              2.0),
                                                                ),
                                                              ),
                                                              unselectedWidgetColor: _model
                                                                          .securityAlerts
                                                                          ?.isUserEnrollForSMSAlert ==
                                                                      'N'
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                            ),
                                                            child: Checkbox(
                                                              value: _model
                                                                      .textPaymentRemainderValue ??=
                                                                  _model
                                                                      .securityAlerts!
                                                                      .isPaymentReminderText,
                                                              onChanged: (_model
                                                                          .securityAlerts
                                                                          ?.isUserEnrollForSMSAlert ==
                                                                      'N')
                                                                  ? null
                                                                  : (newValue) async {
                                                                      setState(() =>
                                                                          _model.textPaymentRemainderValue =
                                                                              newValue!);
                                                                    },
                                                              side: BorderSide(
                                                                width: 2,
                                                                color: _model
                                                                            .securityAlerts
                                                                            ?.isUserEnrollForSMSAlert ==
                                                                        'N'
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                              ),
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              checkColor: (_model
                                                                          .securityAlerts
                                                                          ?.isUserEnrollForSMSAlert ==
                                                                      'N')
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall
                                                                ? 40.0
                                                                : 50.0)),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Divider(
                                                thickness: 1.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'Statement Ready',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Arial',
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                              if (responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                                tablet: false,
                                                              ))
                                                                wrapWithModel(
                                                                  model: _model
                                                                      .infoHelpIconModel3,
                                                                  updateCallback:
                                                                      () => setState(
                                                                          () {}),
                                                                  child:
                                                                      const InfoHelpIconWidget(
                                                                    message:
                                                                        'Receive an alert when \nyour monthly \nstatement is ready',
                                                                    iconSize:
                                                                        16.0,
                                                                  ),
                                                                ),
                                                            ].divide(const SizedBox(
                                                                width: 8.0)),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  valueOrDefault<
                                                                      double>(
                                                                    MediaQuery.sizeOf(context).width <
                                                                            kBreakpointSmall
                                                                        ? 12.0
                                                                        : 20.0,
                                                                    0.0,
                                                                  ),
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
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
                                                                              2.0),
                                                                ),
                                                              ),
                                                              unselectedWidgetColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                            ),
                                                            child: Checkbox(
                                                              value: _model
                                                                      .emailStatementReadyValue ??=
                                                                  _model
                                                                      .securityAlerts!
                                                                      .isStatementReadyEmail,
                                                              onChanged:
                                                                  (newValue) async {
                                                                setState(() =>
                                                                    _model.emailStatementReadyValue =
                                                                        newValue!);
                                                              },
                                                              side: BorderSide(
                                                                width: 2,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
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
                                                                              2.0),
                                                                ),
                                                              ),
                                                              unselectedWidgetColor: _model
                                                                          .securityAlerts
                                                                          ?.isUserEnrollForSMSAlert ==
                                                                      'N'
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                            ),
                                                            child: Checkbox(
                                                              value: _model
                                                                      .textStatementReadyValue ??=
                                                                  _model
                                                                      .securityAlerts!
                                                                      .isStatementReadyText,
                                                              onChanged: (_model
                                                                          .securityAlerts
                                                                          ?.isUserEnrollForSMSAlert ==
                                                                      'N')
                                                                  ? null
                                                                  : (newValue) async {
                                                                      setState(() =>
                                                                          _model.textStatementReadyValue =
                                                                              newValue!);
                                                                    },
                                                              side: BorderSide(
                                                                width: 2,
                                                                color: _model
                                                                            .securityAlerts
                                                                            ?.isUserEnrollForSMSAlert ==
                                                                        'N'
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                              ),
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              checkColor: (_model
                                                                          .securityAlerts
                                                                          ?.isUserEnrollForSMSAlert ==
                                                                      'N')
                                                                  ? null
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall
                                                                ? 40.0
                                                                : 50.0)),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Divider(
                                                thickness: 1.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'Past Due Reminder',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Arial',
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                              if (responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                                tablet: false,
                                                              ))
                                                                wrapWithModel(
                                                                  model: _model
                                                                      .infoHelpIconModel4,
                                                                  updateCallback:
                                                                      () => setState(
                                                                          () {}),
                                                                  child:
                                                                      const InfoHelpIconWidget(
                                                                    message:
                                                                        'Receive an alert if your \naccount becomes \npast-due',
                                                                    iconSize:
                                                                        16.0,
                                                                  ),
                                                                ),
                                                            ].divide(const SizedBox(
                                                                width: 8.0)),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  valueOrDefault<
                                                                      double>(
                                                                    MediaQuery.sizeOf(context).width <
                                                                            kBreakpointSmall
                                                                        ? 12.0
                                                                        : 20.0,
                                                                    0.0,
                                                                  ),
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
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
                                                                              2.0),
                                                                ),
                                                              ),
                                                              unselectedWidgetColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                            ),
                                                            child: Checkbox(
                                                              value: _model
                                                                      .emailPastDueRemainderValue ??=
                                                                  _model
                                                                      .securityAlerts!
                                                                      .isPastDueReminderEmail,
                                                              onChanged:
                                                                  (newValue) async {
                                                                setState(() =>
                                                                    _model.emailPastDueRemainderValue =
                                                                        newValue!);
                                                              },
                                                              side: BorderSide(
                                                                width: 2,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
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
                                                                              2.0),
                                                                ),
                                                              ),
                                                              unselectedWidgetColor: _model
                                                                          .securityAlerts
                                                                          ?.isUserEnrollForSMSAlert ==
                                                                      'N'
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                            ),
                                                            child: Checkbox(
                                                              value: _model
                                                                      .textPastDueRemainderValue ??=
                                                                  _model
                                                                      .securityAlerts!
                                                                      .isPastDueReminderText,
                                                              onChanged: (_model
                                                                          .securityAlerts
                                                                          ?.isUserEnrollForSMSAlert ==
                                                                      'N')
                                                                  ? null
                                                                  : (newValue) async {
                                                                      setState(() =>
                                                                          _model.textPastDueRemainderValue =
                                                                              newValue!);
                                                                    },
                                                              side: BorderSide(
                                                                width: 2,
                                                                color: _model
                                                                            .securityAlerts
                                                                            ?.isUserEnrollForSMSAlert ==
                                                                        'N'
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                              ),
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              checkColor: (_model
                                                                          .securityAlerts
                                                                          ?.isUserEnrollForSMSAlert ==
                                                                      'N')
                                                                  ? null
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall
                                                                ? 40.0
                                                                : 50.0)),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    } else {
                                      return Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                        if (widget.isPrimaryUser)
                          Column(
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Text(
                                          'Security Alerts',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Arial',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                      Builder(
                                        builder: (context) {
                                          if (_model
                                              .isTransactionAlertsExpanded) {
                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                setState(() {
                                                  _model.isTransactionAlertsExpanded =
                                                      false;
                                                });
                                              },
                                              child: Icon(
                                                Icons.remove_circle_outline,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                size: 22.0,
                                              ),
                                            );
                                          } else {
                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                setState(() {
                                                  _model.isTransactionAlertsExpanded =
                                                      true;
                                                });
                                              },
                                              child: Icon(
                                                Icons.add_circle_outline_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                size: 22.0,
                                              ),
                                            );
                                          }
                                        },
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
                                  if (_model.isTransactionAlertsExpanded ==
                                      true) {
                                    return Material(
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
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(8.0),
                                            bottomRight: Radius.circular(8.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .accent4,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(16.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  valueOrDefault<
                                                                      double>(
                                                                    _model.securityAlerts?.isUserEnrollForSMSAlert !=
                                                                            'N'
                                                                        ? 12.0
                                                                        : 0.0,
                                                                    0.0,
                                                                  ),
                                                                  0.0),
                                                      child: Text(
                                                        'Email',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Arial',
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'Text',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Arial',
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                        if (_model
                                                                .securityAlerts
                                                                ?.isUserEnrollForSMSAlert ==
                                                            'N')
                                                          SizedBox(
                                                            width: 16.0,
                                                            height: 16.0,
                                                            child: custom_widgets
                                                                .AlertInfoIcon(
                                                              width: 16.0,
                                                              height: 16.0,
                                                              iconSize: 16.0,
                                                              message:
                                                                  'To enroll for text alerts, please\n',
                                                              linkTitle:
                                                                  'click here',
                                                              onClick:
                                                                  () async {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                      .selectedMCDrawerIndex = 3;
                                                                });
                                                              },
                                                            ),
                                                          ),
                                                        if (_model
                                                                .securityAlerts
                                                                ?.isUserEnrollForSMSAlert !=
                                                            'N')
                                                          Container(
                                                            width: 8.0,
                                                            height: 16.0,
                                                            decoration:
                                                                const BoxDecoration(
                                                              color: Colors
                                                                  .transparent,
                                                            ),
                                                          ),
                                                      ].divide(
                                                          const SizedBox(width: 8.0)),
                                                    ),
                                                  ].divide(SizedBox(
                                                      width: MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall
                                                          ? 16.0
                                                          : 32.0)),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.16,
                                                              constraints:
                                                                  BoxConstraints(
                                                                maxWidth: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.16,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                              ),
                                                              child: Text(
                                                                'Transaction Amount greater than',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Arial',
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall
                                                                  ? 90.0
                                                                  : 120.0,
                                                              height: 56.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                              ),
                                                              child: SizedBox(
                                                                width: 100.0,
                                                                height: 56.0,
                                                                child: custom_widgets
                                                                    .AmountWidget(
                                                                  width: 100.0,
                                                                  height: 56.0,
                                                                  hasError:
                                                                      false,
                                                                  value: _model
                                                                      .transactionAmount,
                                                                  isLoading:
                                                                      false,
                                                                  isLeftAlign:
                                                                      false,
                                                                  isThinBorder:
                                                                      false,
                                                                  onChange:
                                                                      (value) async {
                                                                    setState(
                                                                        () {
                                                                      _model.transactionAmount =
                                                                          value;
                                                                    });
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                              tablet: false,
                                                            ))
                                                              wrapWithModel(
                                                                model: _model
                                                                    .infoHelpIconModel5,
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    const InfoHelpIconWidget(
                                                                  message:
                                                                      'Receive an alert when \na transaction exceeds \nthis dollar amount',
                                                                  iconSize:
                                                                      16.0,
                                                                ),
                                                              ),
                                                          ].divide(const SizedBox(
                                                              width: 8.0)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0.0,
                                                                0.0,
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall
                                                                      ? 12.0
                                                                      : 20.0,
                                                                  0.0,
                                                                ),
                                                                0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
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
                                                                            2.0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                          ),
                                                          child: Checkbox(
                                                            value: _model
                                                                    .emailTransactionAmountValue ??=
                                                                _model
                                                                    .securityAlerts!
                                                                    .isTransactionAmountEmail,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  _model.emailTransactionAmountValue =
                                                                      newValue!);
                                                            },
                                                            side: BorderSide(
                                                              width: 2,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
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
                                                                            2.0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor: _model
                                                                        .securityAlerts
                                                                        ?.isUserEnrollForSMSAlert ==
                                                                    'N'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                          ),
                                                          child: Checkbox(
                                                            value: _model
                                                                    .textTransactionAmountValue ??=
                                                                _model
                                                                    .securityAlerts!
                                                                    .isTransactionAmountText,
                                                            onChanged: (_model
                                                                        .securityAlerts
                                                                        ?.isUserEnrollForSMSAlert ==
                                                                    'N')
                                                                ? null
                                                                : (newValue) async {
                                                                    setState(() =>
                                                                        _model.textTransactionAmountValue =
                                                                            newValue!);
                                                                  },
                                                            side: BorderSide(
                                                              width: 2,
                                                              color: _model
                                                                          .securityAlerts
                                                                          ?.isUserEnrollForSMSAlert ==
                                                                      'N'
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                            ),
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            checkColor: (_model
                                                                        .securityAlerts
                                                                        ?.isUserEnrollForSMSAlert ==
                                                                    'N')
                                                                ? null
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          width: MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? 40.0
                                                              : 50.0)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Divider(
                                              thickness: 1.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent2,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.16,
                                                              constraints:
                                                                  BoxConstraints(
                                                                maxWidth: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.16,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                              ),
                                                              child: Text(
                                                                'Current Balance greater than',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Arial',
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall
                                                                  ? 90.0
                                                                  : 120.0,
                                                              height: 56.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                              ),
                                                              child: SizedBox(
                                                                width: 100.0,
                                                                height: 56.0,
                                                                child: custom_widgets
                                                                    .AmountWidget(
                                                                  width: 100.0,
                                                                  height: 56.0,
                                                                  hasError:
                                                                      false,
                                                                  value: _model
                                                                      .currentBalance,
                                                                  isLoading:
                                                                      false,
                                                                  isLeftAlign:
                                                                      false,
                                                                  isThinBorder:
                                                                      false,
                                                                  onChange:
                                                                      (value) async {
                                                                    setState(
                                                                        () {
                                                                      _model.currentBalance =
                                                                          value;
                                                                    });
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                              tablet: false,
                                                            ))
                                                              wrapWithModel(
                                                                model: _model
                                                                    .infoHelpIconModel6,
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    const InfoHelpIconWidget(
                                                                  message:
                                                                      'Receive an alert if your \nbalance exceeds this \ndollar amount',
                                                                  iconSize:
                                                                      16.0,
                                                                ),
                                                              ),
                                                          ].divide(const SizedBox(
                                                              width: 8.0)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0.0,
                                                                0.0,
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall
                                                                      ? 12.0
                                                                      : 20.0,
                                                                  0.0,
                                                                ),
                                                                0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
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
                                                                            2.0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                          ),
                                                          child: Checkbox(
                                                            value: _model
                                                                    .emailCurrentBalanceValue ??=
                                                                _model
                                                                    .securityAlerts!
                                                                    .isCurrentBalanceEmail,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  _model.emailCurrentBalanceValue =
                                                                      newValue!);
                                                            },
                                                            side: BorderSide(
                                                              width: 2,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
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
                                                                            2.0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor: _model
                                                                        .securityAlerts
                                                                        ?.isUserEnrollForSMSAlert ==
                                                                    'N'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                          ),
                                                          child: Checkbox(
                                                            value: _model
                                                                    .textCurrentBalanceValue ??=
                                                                _model
                                                                    .securityAlerts!
                                                                    .isCurrentBalanceText,
                                                            onChanged: (_model
                                                                        .securityAlerts
                                                                        ?.isUserEnrollForSMSAlert ==
                                                                    'N')
                                                                ? null
                                                                : (newValue) async {
                                                                    setState(() =>
                                                                        _model.textCurrentBalanceValue =
                                                                            newValue!);
                                                                  },
                                                            side: BorderSide(
                                                              width: 2,
                                                              color: _model
                                                                          .securityAlerts
                                                                          ?.isUserEnrollForSMSAlert ==
                                                                      'N'
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                            ),
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            checkColor: (_model
                                                                        .securityAlerts
                                                                        ?.isUserEnrollForSMSAlert ==
                                                                    'N')
                                                                ? null
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          width: MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? 40.0
                                                              : 50.0)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Divider(
                                              thickness: 1.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent2,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.16,
                                                              constraints:
                                                                  BoxConstraints(
                                                                maxWidth: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.16,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                              ),
                                                              child: Text(
                                                                'Available Balance is less than',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Arial',
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall
                                                                  ? 90.0
                                                                  : 120.0,
                                                              height: 56.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                              ),
                                                              child: SizedBox(
                                                                width: 100.0,
                                                                height: 56.0,
                                                                child: custom_widgets
                                                                    .AmountWidget(
                                                                  width: 100.0,
                                                                  height: 56.0,
                                                                  hasError:
                                                                      false,
                                                                  value: _model
                                                                      .availableBalance,
                                                                  isLoading:
                                                                      false,
                                                                  isLeftAlign:
                                                                      false,
                                                                  isThinBorder:
                                                                      false,
                                                                  onChange:
                                                                      (value) async {
                                                                    setState(
                                                                        () {
                                                                      _model.availableBalance =
                                                                          value;
                                                                    });
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                              tablet: false,
                                                            ))
                                                              wrapWithModel(
                                                                model: _model
                                                                    .infoHelpIconModel7,
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    const InfoHelpIconWidget(
                                                                  message:
                                                                      'Receive an alert if your \navailable balance falls \nbelow this dollar \namount',
                                                                  iconSize:
                                                                      16.0,
                                                                ),
                                                              ),
                                                          ].divide(const SizedBox(
                                                              width: 8.0)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0.0,
                                                                0.0,
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall
                                                                      ? 12.0
                                                                      : 20.0,
                                                                  0.0,
                                                                ),
                                                                0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
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
                                                                            2.0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                          ),
                                                          child: Checkbox(
                                                            value: _model
                                                                    .emailAvailableBalanceValue ??=
                                                                _model
                                                                    .securityAlerts!
                                                                    .isAvailableBalanceEmail,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  _model.emailAvailableBalanceValue =
                                                                      newValue!);
                                                            },
                                                            side: BorderSide(
                                                              width: 2,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
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
                                                                            2.0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor: _model
                                                                        .securityAlerts
                                                                        ?.isUserEnrollForSMSAlert ==
                                                                    'N'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                          ),
                                                          child: Checkbox(
                                                            value: _model
                                                                    .textAvailableBalanceValue ??=
                                                                _model
                                                                    .securityAlerts!
                                                                    .isAvailableBalanceText,
                                                            onChanged: (_model
                                                                        .securityAlerts
                                                                        ?.isUserEnrollForSMSAlert ==
                                                                    'N')
                                                                ? null
                                                                : (newValue) async {
                                                                    setState(() =>
                                                                        _model.textAvailableBalanceValue =
                                                                            newValue!);
                                                                  },
                                                            side: BorderSide(
                                                              width: 2,
                                                              color: _model
                                                                          .securityAlerts
                                                                          ?.isUserEnrollForSMSAlert ==
                                                                      'N'
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                            ),
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            checkColor: (_model
                                                                        .securityAlerts
                                                                        ?.isUserEnrollForSMSAlert ==
                                                                    'N')
                                                                ? null
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          width: MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? 40.0
                                                              : 50.0)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Divider(
                                              thickness: 1.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent2,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              'Card Not Present',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Arial',
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                              tablet: false,
                                                            ))
                                                              wrapWithModel(
                                                                model: _model
                                                                    .infoHelpIconModel8,
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    const InfoHelpIconWidget(
                                                                  message:
                                                                      'Receive an alert for any \npurchase where your \ncard was not swiped',
                                                                  iconSize:
                                                                      16.0,
                                                                ),
                                                              ),
                                                          ].divide(const SizedBox(
                                                              width: 8.0)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0.0,
                                                                0.0,
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall
                                                                      ? 12.0
                                                                      : 20.0,
                                                                  0.0,
                                                                ),
                                                                0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
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
                                                                            2.0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                          ),
                                                          child: Checkbox(
                                                            value: _model
                                                                    .emailCardNotPresentValue ??=
                                                                _model
                                                                    .securityAlerts!
                                                                    .isCardNotPresentEmail,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  _model.emailCardNotPresentValue =
                                                                      newValue!);
                                                            },
                                                            side: BorderSide(
                                                              width: 2,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
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
                                                                            2.0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor: _model
                                                                        .securityAlerts
                                                                        ?.isUserEnrollForSMSAlert ==
                                                                    'N'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                          ),
                                                          child: Checkbox(
                                                            value: _model
                                                                    .textCardNotPresentValue ??=
                                                                _model
                                                                    .securityAlerts!
                                                                    .isCardNotPresentText,
                                                            onChanged: (_model
                                                                        .securityAlerts
                                                                        ?.isUserEnrollForSMSAlert ==
                                                                    'N')
                                                                ? null
                                                                : (newValue) async {
                                                                    setState(() =>
                                                                        _model.textCardNotPresentValue =
                                                                            newValue!);
                                                                  },
                                                            side: BorderSide(
                                                              width: 2,
                                                              color: _model
                                                                          .securityAlerts
                                                                          ?.isUserEnrollForSMSAlert ==
                                                                      'N'
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                            ),
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            checkColor: (_model
                                                                        .securityAlerts
                                                                        ?.isUserEnrollForSMSAlert ==
                                                                    'N')
                                                                ? null
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          width: MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? 40.0
                                                              : 50.0)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  } else {
                                    return Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    );
                                  }
                                },
                              ),
                            ],
                          ),
                        if (_model.isPasswordRequired)
                          Material(
                            color: Colors.transparent,
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 32.0, 16.0, 32.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          const TextSpan(
                                            text: 'Current Password ',
                                            style: TextStyle(),
                                          ),
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
                                    Container(
                                      height: _model.hasError ? 115.0 : 56.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                      child: SizedBox(
                                        width: 300.0,
                                        height: 115.0,
                                        child: custom_widgets.PasswordWidget(
                                          width: 300.0,
                                          height: 115.0,
                                          value: _model.password,
                                          isLoading: false,
                                          hasError: _model.hasUpdateError ||
                                              _model.hasError,
                                          errorMessage:
                                              _model.passwordErrorMessage,
                                          onChange: (value) async {
                                            setState(() {
                                              _model.password = value;
                                              _model.passwordErrorMessage = '';
                                              _model.hasError = false;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ].divide(const SizedBox(height: 8.0)),
                                ),
                              ),
                            ),
                          ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FFButtonWidget(
                              onPressed: (((_model.emailTwoFactorValue == _model.securityAlerts?.isTwoFactorAuthenticationEmail) &&
                                          (_model.emailPaymentRecievedValue ==
                                              _model.securityAlerts
                                                  ?.isPaymentReceivedEmail) &&
                                          (_model.emailPaymentRemainderValue ==
                                              _model.securityAlerts
                                                  ?.isPaymentReminderEmail) &&
                                          (_model.emailStatementReadyValue ==
                                              _model.securityAlerts
                                                  ?.isStatementReadyEmail) &&
                                          (_model.emailPastDueRemainderValue ==
                                              _model.securityAlerts
                                                  ?.isPastDueReminderEmail) &&
                                          (_model.emailTransactionAmountValue ==
                                              _model.securityAlerts
                                                  ?.isTransactionAmountEmail) &&
                                          (_model.emailCurrentBalanceValue ==
                                              _model.securityAlerts
                                                  ?.isCurrentBalanceEmail) &&
                                          (_model.emailAvailableBalanceValue ==
                                              _model.securityAlerts
                                                  ?.isAvailableBalanceEmail) &&
                                          (_model.emailCardNotPresentValue ==
                                              _model.securityAlerts
                                                  ?.isCardNotPresentEmail) &&
                                          (_model.remainderDays ==
                                              (_model.securityAlerts!
                                                  .paymentReminderDueDays
                                                  .toString())) &&
                                          (functions.replaceDollar(_model.transactionAmount) ==
                                              (_model.securityAlerts!.transactionAmount
                                                  .toString())) &&
                                          (functions.replaceDollar(_model.currentBalance) ==
                                              (_model.securityAlerts!.currentBalance.toString())) &&
                                          (functions.replaceDollar(_model.availableBalance) == (_model.securityAlerts!.availableBalance.toString())) &&
                                          (_model.textTwoFactorValue == _model.securityAlerts?.isTwoFactorAuthenticationText) &&
                                          (_model.textPaymentRecievedValue == _model.securityAlerts?.isPaymentReceivedText) &&
                                          (_model.textPaymentRemainderValue == _model.securityAlerts?.isPaymentReminderText) &&
                                          (_model.textStatementReadyValue == _model.securityAlerts?.isStatementReadyText) &&
                                          (_model.textPastDueRemainderValue == _model.securityAlerts?.isPastDueReminderText) &&
                                          (_model.textTransactionAmountValue == _model.securityAlerts?.isTransactionAmountText) &&
                                          (_model.textCurrentBalanceValue == _model.securityAlerts?.isCurrentBalanceText) &&
                                          (_model.textAvailableBalanceValue == _model.securityAlerts?.isAvailableBalanceText) &&
                                          (_model.textCardNotPresentValue == _model.securityAlerts?.isCardNotPresentText)) ||
                                      _model.isLoading)
                                  ? null
                                  : () async {
                                      setState(() {
                                        _model.dropDownValueController?.reset();
                                      });
                                      setState(() {
                                        _model.emailTwoFactorValue = _model
                                            .securityAlerts!
                                            .isTwoFactorAuthenticationEmail;
                                        _model.emailPaymentRecievedValue =
                                            _model.securityAlerts!
                                                .isPaymentReceivedEmail;
                                        _model.emailPaymentRemainderValue =
                                            _model.securityAlerts!
                                                .isPaymentReminderEmail;
                                        _model.emailStatementReadyValue = _model
                                            .securityAlerts!
                                            .isStatementReadyEmail;
                                        _model.emailPastDueRemainderValue =
                                            _model.securityAlerts!
                                                .isPastDueReminderEmail;
                                        _model.emailTransactionAmountValue =
                                            _model.securityAlerts!
                                                .isTransactionAmountEmail;
                                        _model.emailCurrentBalanceValue = _model
                                            .securityAlerts!
                                            .isCurrentBalanceEmail;
                                        _model.emailAvailableBalanceValue =
                                            _model.securityAlerts!
                                                .isAvailableBalanceEmail;
                                        _model.emailCardNotPresentValue = _model
                                            .securityAlerts!
                                            .isCardNotPresentEmail;
                                        _model.textTwoFactorValue = _model
                                            .securityAlerts!
                                            .isTwoFactorAuthenticationText;
                                        _model.textPaymentRecievedValue = _model
                                            .securityAlerts!
                                            .isPaymentReceivedText;
                                        _model.textPaymentRemainderValue =
                                            _model.securityAlerts!
                                                .isPaymentReminderText;
                                        _model.textStatementReadyValue = _model
                                            .securityAlerts!
                                            .isStatementReadyText;
                                        _model.textPastDueRemainderValue =
                                            _model.securityAlerts!
                                                .isPastDueReminderText;
                                        _model.textTransactionAmountValue =
                                            _model.securityAlerts!
                                                .isTransactionAmountText;
                                        _model.textCurrentBalanceValue = _model
                                            .securityAlerts!
                                            .isCurrentBalanceText;
                                        _model.textAvailableBalanceValue =
                                            _model.securityAlerts!
                                                .isAvailableBalanceText;
                                        _model.textCardNotPresentValue = _model
                                            .securityAlerts!
                                            .isCardNotPresentText;
                                      });
                                      setState(() {
                                        _model.transactionAmount = _model
                                            .securityAlerts!.transactionAmount
                                            .toString();
                                        _model.currentBalance = _model
                                            .securityAlerts!.currentBalance
                                            .toString();
                                        _model.availableBalance = _model
                                            .securityAlerts!.availableBalance
                                            .toString();
                                        _model.remainderDays = _model
                                            .securityAlerts!
                                            .paymentReminderDueDays
                                            .toString();
                                        _model.isPasswordRequired = false;
                                        _model.password = '';
                                        _model.passwordErrorMessage = '';
                                        _model.hasUpdateError = false;
                                        _model.hasSuccess = false;
                                      });
                                    },
                              text: 'Cancel',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                textStyle:
                                    FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Arial',
                                          color: !(((_model.emailTwoFactorValue == _model.securityAlerts?.isTwoFactorAuthenticationEmail) &&
                                                      (_model.emailPaymentRecievedValue ==
                                                          _model.securityAlerts
                                                              ?.isPaymentReceivedEmail) &&
                                                      (_model.emailPaymentRemainderValue ==
                                                          _model.securityAlerts
                                                              ?.isPaymentReminderEmail) &&
                                                      (_model.emailStatementReadyValue ==
                                                          _model.securityAlerts
                                                              ?.isStatementReadyEmail) &&
                                                      (_model.emailPastDueRemainderValue ==
                                                          _model.securityAlerts
                                                              ?.isPastDueReminderEmail) &&
                                                      (_model.emailTransactionAmountValue ==
                                                          _model.securityAlerts
                                                              ?.isTransactionAmountEmail) &&
                                                      (_model.emailCurrentBalanceValue ==
                                                          _model.securityAlerts
                                                              ?.isCurrentBalanceEmail) &&
                                                      (_model.emailAvailableBalanceValue ==
                                                          _model.securityAlerts
                                                              ?.isAvailableBalanceEmail) &&
                                                      (_model.emailCardNotPresentValue ==
                                                          _model.securityAlerts
                                                              ?.isCardNotPresentEmail) &&
                                                      (_model.remainderDays ==
                                                          (_model
                                                              .securityAlerts!
                                                              .paymentReminderDueDays
                                                              .toString())) &&
                                                      (functions.replaceDollar(_model.transactionAmount) ==
                                                          (_model
                                                              .securityAlerts!
                                                              .transactionAmount
                                                              .toString())) &&
                                                      (functions.replaceDollar(_model.currentBalance) == (_model.securityAlerts!.currentBalance.toString())) &&
                                                      (functions.replaceDollar(_model.availableBalance) == (_model.securityAlerts!.availableBalance.toString())) &&
                                                      (_model.textTwoFactorValue == _model.securityAlerts?.isTwoFactorAuthenticationText) &&
                                                      (_model.textPaymentRecievedValue == _model.securityAlerts?.isPaymentReceivedText) &&
                                                      (_model.textPaymentRemainderValue == _model.securityAlerts?.isPaymentReminderText) &&
                                                      (_model.textStatementReadyValue == _model.securityAlerts?.isStatementReadyText) &&
                                                      (_model.textPastDueRemainderValue == _model.securityAlerts?.isPastDueReminderText) &&
                                                      (_model.textTransactionAmountValue == _model.securityAlerts?.isTransactionAmountText) &&
                                                      (_model.textCurrentBalanceValue == _model.securityAlerts?.isCurrentBalanceText) &&
                                                      (_model.textAvailableBalanceValue == _model.securityAlerts?.isAvailableBalanceText) &&
                                                      (_model.textCardNotPresentValue == _model.securityAlerts?.isCardNotPresentText)) ||
                                                  _model.isLoading)
                                              ? FlutterFlowTheme.of(context).primary
                                              : FlutterFlowTheme.of(context).primaryText,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: !(((_model.emailTwoFactorValue == _model.securityAlerts?.isTwoFactorAuthenticationEmail) &&
                                              (_model.emailPaymentRecievedValue ==
                                                  _model.securityAlerts
                                                      ?.isPaymentReceivedEmail) &&
                                              (_model.emailPaymentRemainderValue ==
                                                  _model.securityAlerts
                                                      ?.isPaymentReminderEmail) &&
                                              (_model.emailStatementReadyValue ==
                                                  _model.securityAlerts
                                                      ?.isStatementReadyEmail) &&
                                              (_model.emailPastDueRemainderValue ==
                                                  _model.securityAlerts
                                                      ?.isPastDueReminderEmail) &&
                                              (_model.emailTransactionAmountValue ==
                                                  _model.securityAlerts
                                                      ?.isTransactionAmountEmail) &&
                                              (_model.emailCurrentBalanceValue ==
                                                  _model.securityAlerts
                                                      ?.isCurrentBalanceEmail) &&
                                              (_model.emailAvailableBalanceValue ==
                                                  _model.securityAlerts
                                                      ?.isAvailableBalanceEmail) &&
                                              (_model.emailCardNotPresentValue ==
                                                  _model.securityAlerts
                                                      ?.isCardNotPresentEmail) &&
                                              (_model.remainderDays ==
                                                  (_model.securityAlerts!.paymentReminderDueDays
                                                      .toString())) &&
                                              (functions.replaceDollar(_model.transactionAmount) ==
                                                  (_model.securityAlerts!.transactionAmount
                                                      .toString())) &&
                                              (functions.replaceDollar(_model.currentBalance) ==
                                                  (_model.securityAlerts!.currentBalance
                                                      .toString())) &&
                                              (functions.replaceDollar(_model.availableBalance) ==
                                                  (_model.securityAlerts!.availableBalance.toString())) &&
                                              (_model.textTwoFactorValue == _model.securityAlerts?.isTwoFactorAuthenticationText) &&
                                              (_model.textPaymentRecievedValue == _model.securityAlerts?.isPaymentReceivedText) &&
                                              (_model.textPaymentRemainderValue == _model.securityAlerts?.isPaymentReminderText) &&
                                              (_model.textStatementReadyValue == _model.securityAlerts?.isStatementReadyText) &&
                                              (_model.textPastDueRemainderValue == _model.securityAlerts?.isPastDueReminderText) &&
                                              (_model.textTransactionAmountValue == _model.securityAlerts?.isTransactionAmountText) &&
                                              (_model.textCurrentBalanceValue == _model.securityAlerts?.isCurrentBalanceText) &&
                                              (_model.textAvailableBalanceValue == _model.securityAlerts?.isAvailableBalanceText) &&
                                              (_model.textCardNotPresentValue == _model.securityAlerts?.isCardNotPresentText)) ||
                                          _model.isLoading)
                                      ? FlutterFlowTheme.of(context).primary
                                      : Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                                disabledColor:
                                    FlutterFlowTheme.of(context).accent2,
                                disabledTextColor:
                                    FlutterFlowTheme.of(context).primaryText,
                              ),
                              showLoadingIndicator: false,
                            ),
                            Builder(
                              builder: (context) => FFButtonWidget(
                                onPressed: ((_model.emailTwoFactorValue == _model.securityAlerts?.isTwoFactorAuthenticationEmail) &&
                                        (_model.emailPaymentRecievedValue ==
                                            _model.securityAlerts
                                                ?.isPaymentReceivedEmail) &&
                                        (_model.emailPaymentRemainderValue ==
                                            _model.securityAlerts
                                                ?.isPaymentReminderEmail) &&
                                        (_model.emailStatementReadyValue ==
                                            _model.securityAlerts
                                                ?.isStatementReadyEmail) &&
                                        (_model.emailPastDueRemainderValue ==
                                            _model.securityAlerts
                                                ?.isPastDueReminderEmail) &&
                                        (_model.emailTransactionAmountValue ==
                                            _model.securityAlerts
                                                ?.isTransactionAmountEmail) &&
                                        (_model.emailCurrentBalanceValue ==
                                            _model.securityAlerts
                                                ?.isCurrentBalanceEmail) &&
                                        (_model.emailAvailableBalanceValue ==
                                            _model.securityAlerts
                                                ?.isAvailableBalanceEmail) &&
                                        (_model.emailCardNotPresentValue ==
                                            _model.securityAlerts
                                                ?.isCardNotPresentEmail) &&
                                        (_model.remainderDays ==
                                            (_model.securityAlerts!.paymentReminderDueDays
                                                .toString())) &&
                                        (functions.replaceDollar(_model.transactionAmount) ==
                                            (_model.securityAlerts!.transactionAmount
                                                .toString())) &&
                                        (functions.replaceDollar(_model.currentBalance) ==
                                            (_model.securityAlerts!.currentBalance
                                                .toString())) &&
                                        (functions.replaceDollar(_model.availableBalance) ==
                                            (_model.securityAlerts!.availableBalance.toString())) &&
                                        (_model.textTwoFactorValue == _model.securityAlerts?.isTwoFactorAuthenticationText) &&
                                        (_model.textPaymentRecievedValue == _model.securityAlerts?.isPaymentReceivedText) &&
                                        (_model.textPaymentRemainderValue == _model.securityAlerts?.isPaymentReminderText) &&
                                        (_model.textStatementReadyValue == _model.securityAlerts?.isStatementReadyText) &&
                                        (_model.textPastDueRemainderValue == _model.securityAlerts?.isPastDueReminderText) &&
                                        (_model.textTransactionAmountValue == _model.securityAlerts?.isTransactionAmountText) &&
                                        (_model.textCurrentBalanceValue == _model.securityAlerts?.isCurrentBalanceText) &&
                                        (_model.textAvailableBalanceValue == _model.securityAlerts?.isAvailableBalanceText) &&
                                        (_model.textCardNotPresentValue == _model.securityAlerts?.isCardNotPresentText))
                                    ? null
                                    : () async {
                                        if (_model.isPasswordRequired &&
                                            (_model.password == '')) {
                                          setState(() {
                                            _model.hasError = true;
                                            _model.passwordErrorMessage =
                                                'Your password is required to complete your profile updates. Please enter your current password.';
                                          });
                                        } else {
                                          setState(() {
                                            _model.passwordErrorMessage = ' ';
                                            _model.hasError = false;
                                            _model.hasUpdateError = false;
                                            _model.hasSuccess = false;
                                            _model.updateErrorMessage = ' ';
                                          });
                                          showDialog(
                                            barrierColor: const Color(0x33042757),
                                            barrierDismissible: false,
                                            context: context,
                                            builder: (dialogContext) {
                                              return Dialog(
                                                elevation: 0,
                                                insetPadding: EdgeInsets.zero,
                                                backgroundColor:
                                                    Colors.transparent,
                                                alignment: const AlignmentDirectional(
                                                        0.0, 0.0)
                                                    .resolve(Directionality.of(
                                                        context)),
                                                child: const WebViewAware(
                                                  child:
                                                      CommonCircularIndicatorWidget(),
                                                ),
                                              );
                                            },
                                          ).then((value) => setState(() {}));

                                          _model.alertsResponse =
                                              await SecurityAlertsGroup
                                                  .updateSecurityAlertsCall
                                                  .call(
                                            userId: FFAppState()
                                                .selectedUserId
                                                .toString(),
                                            dataJson: <String, dynamic>{
                                              'IsTwoFactorAuthenticationEmail':
                                                  _model.emailTwoFactorValue,
                                              'IsTwoFactorAuthenticationText':
                                                  _model.textTwoFactorValue,
                                              'IsPaymentReceivedEmail': _model
                                                  .emailPaymentRecievedValue,
                                              'IsPaymentReceivedText': _model
                                                  .textPaymentRecievedValue,
                                              'IsPaymentReminderEmail': _model
                                                  .emailPaymentRemainderValue,
                                              'IsPaymentReminderText': _model
                                                  .textPaymentRemainderValue,
                                              'IsStatementReadyEmail': _model
                                                  .emailStatementReadyValue,
                                              'IsStatementReadyText': _model
                                                  .textStatementReadyValue,
                                              'IsPastDueReminderEmail': _model
                                                  .emailPastDueRemainderValue,
                                              'IsPastDueReminderText': _model
                                                  .textPastDueRemainderValue,
                                              'IsTransactionAmountEmail': _model
                                                  .emailTransactionAmountValue,
                                              'IsTransactionAmountText': _model
                                                  .textTransactionAmountValue,
                                              'IsCurrentBalanceEmail': _model
                                                  .emailCurrentBalanceValue,
                                              'IsCurrentBalanceText': _model
                                                  .textCurrentBalanceValue,
                                              'IsAvailableBalanceEmail': _model
                                                  .emailAvailableBalanceValue,
                                              'IsAvailableBalanceText': _model
                                                  .textAvailableBalanceValue,
                                              'IsCardNotPresentEmail': _model
                                                  .emailCardNotPresentValue,
                                              'IsCardNotPresentText': _model
                                                  .textCardNotPresentValue,
                                              'IsUserOptedForAnyAlert': _model
                                                  .securityAlerts
                                                  ?.isUserOptedForAnyAlert,
                                              'IsUserEnrollForSMSAlert': _model
                                                  .securityAlerts
                                                  ?.isUserEnrollForSMSAlert,
                                              'IsUserOptedForTwoFA': _model
                                                  .securityAlerts
                                                  ?.isUserOptedForTwoFA,
                                              'IsUserOptedForTwoFASMS': _model
                                                  .securityAlerts
                                                  ?.isUserOptedForTwoFASMS,
                                              'IsUserOptedForTwoFAEmail': _model
                                                  .securityAlerts
                                                  ?.isUserOptedForTwoFAEmail,
                                              'PaymentReminderDueDays':
                                                  functions.stringToInt(
                                                      _model.remainderDays),
                                              'TransactionAmount': functions
                                                  .stringToInt(functions
                                                      .replaceDollar(_model
                                                          .transactionAmount)),
                                              'CurrentBalance':
                                                  functions.stringToInt(
                                                      functions.replaceDollar(
                                                          _model
                                                              .currentBalance)),
                                              'AvailableBalance': functions
                                                  .stringToInt(functions
                                                      .replaceDollar(_model
                                                          .availableBalance)),
                                              'CurrentPassword':
                                                  _model.password,
                                            },
                                            dynamicBaseURL:
                                                FFAppState().dynamicBaseURL,
                                          );
                                          if ((_model
                                                  .alertsResponse?.succeeded ??
                                              true)) {
                                            _model.getSecurityAlertResponse =
                                                await SecurityAlertsGroup
                                                    .securityAlertsCall
                                                    .call(
                                              userId: FFAppState()
                                                  .selectedUserId
                                                  .toString(),
                                              dynamicBaseURL:
                                                  FFAppState().dynamicBaseURL,
                                            );
                                            if ((_model.getSecurityAlertResponse
                                                    ?.succeeded ??
                                                true)) {
                                              _model.securityAlerts =
                                                  SecurityAlertsStruct
                                                      .maybeFromMap((_model
                                                              .getSecurityAlertResponse
                                                              ?.jsonBody ??
                                                          ''));
                                              _model.transactionAmount =
                                                  SecurityAlertsStruct
                                                          .maybeFromMap((_model
                                                                  .getSecurityAlertResponse
                                                                  ?.jsonBody ??
                                                              ''))!
                                                      .transactionAmount
                                                      .toString();
                                              _model.currentBalance =
                                                  SecurityAlertsStruct
                                                          .maybeFromMap((_model
                                                                  .getSecurityAlertResponse
                                                                  ?.jsonBody ??
                                                              ''))!
                                                      .currentBalance
                                                      .toString();
                                              _model.availableBalance =
                                                  SecurityAlertsStruct
                                                          .maybeFromMap((_model
                                                                  .getSecurityAlertResponse
                                                                  ?.jsonBody ??
                                                              ''))!
                                                      .availableBalance
                                                      .toString();
                                              _model.remainderDays =
                                                  SecurityAlertsStruct
                                                          .maybeFromMap((_model
                                                                  .getSecurityAlertResponse
                                                                  ?.jsonBody ??
                                                              ''))!
                                                      .paymentReminderDueDays
                                                      .toString();
                                              _model.hasSuccess = true;
                                              _model.password = '';
                                              _model.isPasswordRequired = false;
                                            }
                                            _model.askTwoFactorRes =
                                                await ManageContactDetailsGroup
                                                    .askTwoFactorCall
                                                    .call(
                                              userName:
                                                  FFAppState().selectedUserName,
                                              dynamicBaseURL:
                                                  FFAppState().dynamicBaseURL,
                                            );
                                            if ((_model.askTwoFactorRes
                                                    ?.succeeded ??
                                                true)) {
                                              if ((_model.askTwoFactorRes
                                                          ?.statusCode ??
                                                      200) ==
                                                  FFAppState()
                                                      .successStatusCode) {
                                                setState(() {
                                                  FFAppState().login2FARes =
                                                      Login2FAResStruct
                                                          .maybeFromMap(
                                                              getJsonField(
                                                    (_model.askTwoFactorRes
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$''',
                                                  ))!;
                                                });
                                              } else {
                                                setState(() {
                                                  _model.hasUpdateError = true;
                                                  _model.updateErrorMessage =
                                                      ManageContactDetailsGroup
                                                          .askTwoFactorCall
                                                          .message(
                                                    (_model.askTwoFactorRes
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!;
                                                });
                                              }
                                            } else {
                                              setState(() {
                                                _model.hasUpdateError = true;
                                                _model.updateErrorMessage =
                                                    ManageContactDetailsGroup
                                                        .askTwoFactorCall
                                                        .message(
                                                  (_model.askTwoFactorRes
                                                          ?.jsonBody ??
                                                      ''),
                                                )!;
                                              });
                                            }
                                          } else {
                                            setState(() {
                                              _model.hasUpdateError = true;
                                              _model.updateErrorMessage =
                                                  getJsonField(
                                                (_model.alertsResponse
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$.Message''',
                                              ).toString();
                                            });
                                          }

                                          Navigator.pop(context);
                                        }

                                        setState(() {});
                                      },
                                text: 'Submit',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle:
                                      FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Arial',
                                            color: !((_model.emailTwoFactorValue == _model.securityAlerts?.isTwoFactorAuthenticationEmail) &&
                                                    (_model.emailPaymentRecievedValue ==
                                                        _model.securityAlerts
                                                            ?.isPaymentReceivedEmail) &&
                                                    (_model.emailPaymentRemainderValue ==
                                                        _model.securityAlerts
                                                            ?.isPaymentReminderEmail) &&
                                                    (_model.emailStatementReadyValue ==
                                                        _model.securityAlerts
                                                            ?.isStatementReadyEmail) &&
                                                    (_model.emailPastDueRemainderValue ==
                                                        _model.securityAlerts
                                                            ?.isPastDueReminderEmail) &&
                                                    (_model.emailTransactionAmountValue ==
                                                        _model.securityAlerts
                                                            ?.isTransactionAmountEmail) &&
                                                    (_model.emailCurrentBalanceValue ==
                                                        _model.securityAlerts
                                                            ?.isCurrentBalanceEmail) &&
                                                    (_model.emailAvailableBalanceValue ==
                                                        _model.securityAlerts
                                                            ?.isAvailableBalanceEmail) &&
                                                    (_model.emailCardNotPresentValue ==
                                                        _model.securityAlerts
                                                            ?.isCardNotPresentEmail) &&
                                                    (_model.remainderDays ==
                                                        (_model.securityAlerts!
                                                            .paymentReminderDueDays
                                                            .toString())) &&
                                                    (functions.replaceDollar(_model.transactionAmount) ==
                                                        (_model.securityAlerts!.transactionAmount
                                                            .toString())) &&
                                                    (functions.replaceDollar(_model.currentBalance) ==
                                                        (_model.securityAlerts!.currentBalance.toString())) &&
                                                    (functions.replaceDollar(_model.availableBalance) == (_model.securityAlerts!.availableBalance.toString())) &&
                                                    (_model.textTwoFactorValue == _model.securityAlerts?.isTwoFactorAuthenticationText) &&
                                                    (_model.textPaymentRecievedValue == _model.securityAlerts?.isPaymentReceivedText) &&
                                                    (_model.textPaymentRemainderValue == _model.securityAlerts?.isPaymentReminderText) &&
                                                    (_model.textStatementReadyValue == _model.securityAlerts?.isStatementReadyText) &&
                                                    (_model.textPastDueRemainderValue == _model.securityAlerts?.isPastDueReminderText) &&
                                                    (_model.textTransactionAmountValue == _model.securityAlerts?.isTransactionAmountText) &&
                                                    (_model.textCurrentBalanceValue == _model.securityAlerts?.isCurrentBalanceText) &&
                                                    (_model.textAvailableBalanceValue == _model.securityAlerts?.isAvailableBalanceText) &&
                                                    (_model.textCardNotPresentValue == _model.securityAlerts?.isCardNotPresentText))
                                                ? FlutterFlowTheme.of(context).primaryBackground
                                                : FlutterFlowTheme.of(context).primaryText,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                  disabledColor:
                                      FlutterFlowTheme.of(context).accent2,
                                ),
                                showLoadingIndicator: false,
                              ),
                            ),
                          ].divide(const SizedBox(width: 8.0)),
                        ),
                      ].divide(const SizedBox(height: 18.0)),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
