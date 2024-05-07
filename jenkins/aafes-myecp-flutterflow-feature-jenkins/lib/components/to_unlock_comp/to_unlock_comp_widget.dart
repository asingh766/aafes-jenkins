import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'to_unlock_comp_model.dart';
export 'to_unlock_comp_model.dart';

class ToUnlockCompWidget extends StatefulWidget {
  const ToUnlockCompWidget({
    super.key,
    required this.errorMess,
  });

  final String? errorMess;

  @override
  State<ToUnlockCompWidget> createState() => _ToUnlockCompWidgetState();
}

class _ToUnlockCompWidgetState extends State<ToUnlockCompWidget> {
  late ToUnlockCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ToUnlockCompModel());

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
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).error,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              widget.errorMess!,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Arial',
                    color: FlutterFlowTheme.of(context).error,
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                    lineHeight: 1.5,
                  ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/Help.png',
                      width: 20.0,
                      height: 20.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            'To Unlock your Account using 2 Factor Authentication you may click here:',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Arial',
                                  color: FlutterFlowTheme.of(context).error,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                  lineHeight: 1.5,
                                ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              unawaited(
                                () async {
                                  await action_blocks
                                      .showLoadingDialog(context);
                                }(),
                              );
                              _model.askTwoFactorRes =
                                  await ManageContactDetailsGroup
                                      .askTwoFactorCall
                                      .call(
                                userName: FFAppState().username,
                                dynamicBaseURL: FFAppState().dynamicBaseURL,
                              );
                              if ((_model.askTwoFactorRes?.succeeded ?? true)) {
                                if ((_model.askTwoFactorRes?.statusCode ??
                                        200) ==
                                    FFAppState().successStatusCode) {
                                  if (ManageContactDetailsGroup.askTwoFactorCall
                                      .is2FANeeded(
                                    (_model.askTwoFactorRes?.jsonBody ?? ''),
                                  )!) {
                                    setState(() {
                                      FFAppState().selectedMCDrawerIndex = 9;
                                      FFAppState().isFromTwoFacotrAuth = true;
                                      FFAppState().login2FARes =
                                          Login2FAResStruct.maybeFromMap(
                                              getJsonField(
                                        (_model.askTwoFactorRes?.jsonBody ??
                                            ''),
                                        r'''$''',
                                      ))!;
                                      FFAppState().selectedUserId =
                                          Login2FAResStruct.maybeFromMap(
                                                  getJsonField(
                                        (_model.askTwoFactorRes?.jsonBody ??
                                            ''),
                                        r'''$''',
                                      ))!
                                              .userId;
                                    });
                                    Navigator.pop(context);

                                    context.pushNamed(
                                      'ManageContactDetails',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return WebViewAware(
                                          child: AlertDialog(
                                            title: const Text(
                                                'Two-factor authentication is not enabled'),
                                            content:
                                                const Text('Something went to wrong'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: const Text('Ok'),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                    Navigator.pop(context);
                                  }
                                } else {
                                  Navigator.pop(context);
                                }
                              } else {
                                Navigator.pop(context);
                              }

                              setState(() {});
                            },
                            child: AutoSizeText(
                              'Unlock My Account',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Arial',
                                    color: const Color(0xFF0000FF),
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                    lineHeight: 1.5,
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
          ],
        ),
      ),
    );
  }
}
