import '/backend/api_requests/api_calls.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/resend_email_dialog/resend_email_dialog_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'registration2_component_model.dart';
export 'registration2_component_model.dart';

class Registration2ComponentWidget extends StatefulWidget {
  const Registration2ComponentWidget({
    super.key,
    this.nextCallback,
    required this.email,
  });

  final Future Function()? nextCallback;
  final String? email;

  @override
  State<Registration2ComponentWidget> createState() =>
      _Registration2ComponentWidgetState();
}

class _Registration2ComponentWidgetState
    extends State<Registration2ComponentWidget> with TickerProviderStateMixin {
  late Registration2ComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Registration2ComponentModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
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

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Material(
          color: Colors.transparent,
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(0.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'A verification link has been emailed to ${functions.maskAndCapitalizeEmail(widget.email!)}',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Arial',
                        color: Colors.black,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
                Text(
                  'Please follow the instructions in the email to proceed with the registration process.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Arial',
                        color: Colors.black,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
                RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Note:',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Arial',
                              color: Colors.black,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              useGoogleFonts: false,
                            ),
                      ),
                      const TextSpan(
                        text: ' The validation email will expire in 30 minutes',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                      )
                    ],
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Arial',
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                Text(
                  'If you would like to receive a new link, please click on the Resend Email button below',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Arial',
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
                Align(
                  alignment: const AlignmentDirectional(1.0, 0.0),
                  child: Builder(
                    builder: (context) => wrapWithModel(
                      model: _model.commonCustomButtonModel,
                      updateCallback: () => setState(() {}),
                      child: CommonCustomButtonWidget(
                        titile: 'Resend Email',
                        isDisabled: false,
                        isEditIconVisible: false,
                        onTap: () async {
                          await action_blocks.showLoadingDialog(context);
                          _model.apiResponseResendEmail =
                              await RegistrationGroup.resendEmailCall.call(
                            email: widget.email,
                            dynamicBaseURL: FFAppState().dynamicBaseURL,
                          );
                          Navigator.pop(context);
                          if ((_model.apiResponseResendEmail?.succeeded ??
                              true)) {
                            await showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: const AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: WebViewAware(
                                    child: SizedBox(
                                      height: 180.0,
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      child: const ResendEmailDialogWidget(),
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));
                          } else {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return WebViewAware(
                                  child: AlertDialog(
                                    title: const Text('Error'),
                                    content: const Text(
                                        'Something went wrong, please try agian later.'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: const Text('Ok'),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          }

                          setState(() {});
                        },
                      ),
                    ),
                  ),
                ),
              ].divide(const SizedBox(height: 16.0)),
            ),
          ),
        ),
      ],
    ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!);
  }
}
