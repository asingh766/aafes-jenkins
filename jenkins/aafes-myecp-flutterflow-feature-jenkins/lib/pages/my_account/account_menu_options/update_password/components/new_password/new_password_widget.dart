import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/components/common_circular_indicator/common_circular_indicator_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'new_password_model.dart';
export 'new_password_model.dart';

class NewPasswordWidget extends StatefulWidget {
  const NewPasswordWidget({
    super.key,
    this.onCancel,
  });

  final Future Function(bool? isSuccess)? onCancel;

  @override
  State<NewPasswordWidget> createState() => _NewPasswordWidgetState();
}

class _NewPasswordWidgetState extends State<NewPasswordWidget> {
  late NewPasswordModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewPasswordModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.password = '';
        _model.errorPassword = ' ';
        _model.errorConfirmPassword = ' ';
        _model.hasErrorPassword = false;
        _model.hasConfirmErrorPassword = false;
        _model.hasPasswordError = false;
        _model.errorMessage = '';
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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (_model.errorMessage != '')
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).error,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                _model.errorMessage,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Arial',
                      color: FlutterFlowTheme.of(context).error,
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
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
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Arial',
                        color: FlutterFlowTheme.of(context).error,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        useGoogleFonts: false,
                      ),
                ),
                const TextSpan(
                  text: '  Required Fields',
                  style: TextStyle(),
                )
              ],
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Arial',
                    letterSpacing: 0.0,
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
            width: MediaQuery.sizeOf(context).width * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).alternate,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 300.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        custom_widgets.PasswordField(
                          width: 1.0,
                          height: 100.0,
                          matchWidth: false,
                          label: 'New Password',
                          error: _model.errorPassword!,
                          hasError: _model.hasErrorPassword,
                          alignment: PSIAlignment.right,
                          onFocusChange: () async {
                            if (FFAppState().password != '') {
                              if (FFAppState().isPasswordValid) {
                                if ((FFAppState().confirmPassword != '') &&
                                    FFAppState().isConfirmPasswordValid) {
                                  if (FFAppState().password ==
                                      FFAppState().confirmPassword) {
                                    // Reset errors
                                    _model.errorPassword = ' ';
                                    _model.errorConfirmPassword = ' ';
                                    _model.hasErrorPassword = false;
                                  } else {
                                    // Triiger equality error
                                    _model.errorPassword = '';
                                    _model.errorConfirmPassword =
                                        'Your passwords do not match. Please re-enter your passwords.';
                                    _model.hasErrorPassword = true;
                                    _model.hasConfirmErrorPassword = true;
                                  }

                                  return;
                                } else {
                                  return;
                                }
                              } else {
                                // Validation error
                                _model.errorPassword =
                                    'Password does not meet all requirements ';
                                _model.hasErrorPassword = true;
                                return;
                              }
                            } else {
                              return;
                            }
                          },
                          onResetError: () async {
                            setState(() {
                              _model.errorPassword = ' ';
                              _model.hasErrorPassword = false;
                            });
                          },
                        ),
                        custom_widgets.ConfirmPasswordField(
                          width: 1.0,
                          height: 100.0,
                          matchWidth: false,
                          label: 'Confirm Password',
                          error: _model.errorConfirmPassword!,
                          hasError: _model.hasConfirmErrorPassword,
                          alignment: PSIAlignment.right,
                          onFocusChange: () async {
                            if (FFAppState().confirmPassword != '') {
                              if (FFAppState().isConfirmPasswordValid) {
                                if (FFAppState().isPasswordValid) {
                                  if (FFAppState().password ==
                                      FFAppState().confirmPassword) {
                                    // Reset Errors
                                    _model.errorPassword = ' ';
                                    _model.errorConfirmPassword = ' ';
                                    _model.hasErrorPassword = false;
                                    _model.hasConfirmErrorPassword = false;
                                  } else {
                                    // Triiger equality error
                                    _model.errorPassword = '';
                                    _model.errorConfirmPassword =
                                        'Your passwords do not match. Please re-enter your passwords.';
                                    _model.hasErrorPassword = true;
                                    _model.hasConfirmErrorPassword = true;
                                  }

                                  return;
                                } else {
                                  return;
                                }
                              } else {
                                // Trigger Errors
                                _model.errorConfirmPassword =
                                    'Password does not meet all requirements ';
                                _model.hasConfirmErrorPassword = true;
                                return;
                              }
                            } else {
                              return;
                            }
                          },
                          onResetError: () async {
                            setState(() {
                              _model.errorConfirmPassword = ' ';
                              _model.hasConfirmErrorPassword = false;
                            });
                          },
                        ),
                      ].divide(const SizedBox(height: 8.0)),
                    ),
                  ),
                ].divide(const SizedBox(height: 8.0)),
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
            width: MediaQuery.sizeOf(context).width * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).alternate,
              ),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 32.0, 16.0, 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Current Password ',
                          style: TextStyle(),
                        ),
                        TextSpan(
                          text: '*',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Arial',
                                    color: FlutterFlowTheme.of(context).error,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts: false,
                                  ),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Arial',
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  SizedBox(
                    width: 300.0,
                    height: 56.0,
                    child: custom_widgets.PasswordWidget(
                      width: 300.0,
                      height: 56.0,
                      value: _model.password,
                      isLoading: false,
                      hasError: _model.hasPasswordError == true,
                      onChange: (value) async {
                        setState(() {
                          _model.password = value;
                          _model.hasPasswordError = false;
                        });
                      },
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
              onPressed: () async {
                await widget.onCancel?.call(
                  false,
                );
              },
              text: 'Cancel',
              options: FFButtonOptions(
                height: 40.0,
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primaryBackground,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Arial',
                      color: FlutterFlowTheme.of(context).primary,
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).primary,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              showLoadingIndicator: false,
            ),
            Builder(
              builder: (context) => FFButtonWidget(
                onPressed: ((_model.password == '') ||
                        (FFAppState().password == '') ||
                        (FFAppState().confirmPassword == '') ||
                        _model.hasErrorPassword ||
                        _model.hasConfirmErrorPassword ||
                        _model.hasPasswordError)
                    ? null
                    : () async {
                        showDialog(
                          barrierColor: const Color(0x33042757),
                          barrierDismissible: false,
                          context: context,
                          builder: (dialogContext) {
                            return Dialog(
                              elevation: 0,
                              insetPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              alignment: const AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              child: const WebViewAware(
                                child: CommonCircularIndicatorWidget(),
                              ),
                            );
                          },
                        ).then((value) => setState(() {}));

                        setState(() {
                          _model.errorMessage = '';
                        });
                        _model.updatePassword =
                            await SecurityAlertsGroup.updatePasswordCall.call(
                          userId: FFAppState().selectedUserId,
                          currentPassword: _model.password,
                          password: FFAppState().password,
                          confirmPassword: FFAppState().confirmPassword,
                          dynamicBaseURL: FFAppState().dynamicBaseURL,
                        );
                        if ((_model.updatePassword?.succeeded ?? true)) {
                          await widget.onCancel?.call(
                            true,
                          );
                        } else {
                          setState(() {
                            _model.hasPasswordError = true;
                            _model.errorMessage = getJsonField(
                              (_model.updatePassword?.jsonBody ?? ''),
                              r'''$.Message''',
                            ).toString();
                          });
                        }

                        Navigator.pop(context);

                        setState(() {});
                      },
                text: 'Save',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
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
                  disabledColor: FlutterFlowTheme.of(context).alternate,
                  disabledTextColor: FlutterFlowTheme.of(context).primaryText,
                ),
                showLoadingIndicator: false,
              ),
            ),
          ].divide(const SizedBox(width: 8.0)),
        ),
      ].divide(const SizedBox(height: 16.0)),
    );
  }
}
