import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/components/text_field_with_title/text_field_with_title_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'for_your_added_security_comp_model.dart';
export 'for_your_added_security_comp_model.dart';

class ForYourAddedSecurityCompWidget extends StatefulWidget {
  const ForYourAddedSecurityCompWidget({
    super.key,
    required this.continueCallBack,
    required this.cancelCallback,
    required this.question,
    this.questionId,
    this.userId,
    this.username,
  });

  final Future Function()? continueCallBack;
  final Future Function()? cancelCallback;
  final String? question;
  final int? questionId;
  final int? userId;
  final String? username;

  @override
  State<ForYourAddedSecurityCompWidget> createState() =>
      _ForYourAddedSecurityCompWidgetState();
}

class _ForYourAddedSecurityCompWidgetState
    extends State<ForYourAddedSecurityCompWidget> {
  late ForYourAddedSecurityCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ForYourAddedSecurityCompModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.isError = false;
        _model.hasError = false;
        _model.errorText = null;
      });
      setState(() {
        _model.securityQuestion1Model.textController?.clear();
      });
      setState(() {
        _model.desktopCheckboxValue = false;
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

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
      child: Material(
        color: Colors.transparent,
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                  child: Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                      child: Text(
                        'For Your Added Security',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                  ),
                ),
                const Divider(
                  height: 2.5,
                  thickness: 2.0,
                  color: Color(0xFF801B0E),
                ),
                if (_model.isError ?? true)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: wrapWithModel(
                      model: _model.errorBannerOutlinedModel,
                      updateCallback: () => setState(() {}),
                      child: ErrorBannerOutlinedWidget(
                        message: AuthenticationGroup.verifysecurityquestionsCall
                                        .message(
                                      (_model.askSecurityQuestionsAPiRes
                                              ?.jsonBody ??
                                          ''),
                                    ) !=
                                    null &&
                                AuthenticationGroup.verifysecurityquestionsCall
                                        .message(
                                      (_model.askSecurityQuestionsAPiRes
                                              ?.jsonBody ??
                                          ''),
                                    ) !=
                                    ''
                            ? AuthenticationGroup.verifysecurityquestionsCall
                                .message(
                                (_model.askSecurityQuestionsAPiRes?.jsonBody ??
                                    ''),
                              )
                            : 'Something went to wrong',
                      ),
                    ),
                  ),
                Align(
                  alignment: const AlignmentDirectional(1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
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
                                  color: const Color(0xFFEA3423),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                ),
                          ),
                          const TextSpan(
                            text: 'Required Fields',
                            style: TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Arial',
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w800,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 16.0),
                  child: Text(
                    'We need to confirm it’s really you. To verify and protect your account, please answer your security question.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Arial',
                          color: Colors.black,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
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
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: wrapWithModel(
                                  model: _model.securityQuestion1Model,
                                  updateCallback: () => setState(() {}),
                                  updateOnChange: true,
                                  child: TextFieldWithTitleWidget(
                                    textFieldLabel: '',
                                    isRequiredField: true,
                                    title: widget.question!,
                                    isDatePicker: false,
                                    width: double.infinity,
                                    textColour: Colors.black,
                                    isPasswordField: true,
                                    onChange: (value) async {
                                      if (_model.securityQuestion1Model
                                                  .textController.text !=
                                              '') {
                                        setState(() {
                                          _model.hasError = false;
                                        });
                                      } else {
                                        setState(() {
                                          _model.hasError = false;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                  child: Checkbox(
                                    value: _model.desktopCheckboxValue ??=
                                        false,
                                    onChanged: (newValue) async {
                                      setState(() => _model
                                          .desktopCheckboxValue = newValue!);
                                    },
                                    side: BorderSide(
                                      width: 2,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                                Text(
                                  'Remember device',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Arial',
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Do not select this option if you are using a public computer, such as in a library',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Arial',
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontStyle: FontStyle.italic,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ].divide(const SizedBox(height: 10.0)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
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
                            await widget.cancelCallback?.call();
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.commonCustomButtonModel,
                          updateCallback: () => setState(() {}),
                          child: CommonCustomButtonWidget(
                            titile: 'Continue',
                            isDisabled: _model.securityQuestion1Model.textController
                                        .text ==
                                    '',
                            isEditIconVisible: false,
                            onTap: () async {
                              await action_blocks.showLoadingDialog(context);
                              _model.askSecurityQuestionsAPiRes =
                                  await AuthenticationGroup
                                      .verifysecurityquestionsCall
                                      .call(
                                userId: FFAppState().selectedUserId,
                                questionID: widget.questionId,
                                answer: _model
                                    .securityQuestion1Model.textController.text,
                                dynamicBaseURL: FFAppState().dynamicBaseURL,
                              );
                              if ((_model.askSecurityQuestionsAPiRes
                                          ?.statusCode ??
                                      200) !=
                                  FFAppState().successStatusCode) {
                                setState(() {
                                  _model.isError = true;
                                });
                                Navigator.pop(context);
                              } else {
                                if (_model.desktopCheckboxValue!) {
                                  _model.updatePage(() {
                                    FFAppState().addToRememberUsersOnDevice(
                                        widget.username!);
                                    FFAppState().username = widget.username!;
                                  });
                                }
                                GoRouter.of(context).prepareAuthEvent();
                                await authManager.signIn(
                                  authenticationToken: AuthenticationGroup
                                      .verifysecurityquestionsCall
                                      .token(
                                    (_model.askSecurityQuestionsAPiRes
                                            ?.jsonBody ??
                                        ''),
                                  ),
                                  authUid: AuthenticationGroup
                                      .verifysecurityquestionsCall
                                      .userId(
                                        (_model.askSecurityQuestionsAPiRes
                                                ?.jsonBody ??
                                            ''),
                                      )
                                      ?.toString(),
                                );
                                setState(() {
                                  FFAppState().isFroYourSecurity = false;
                                  FFAppState()
                                      .LastLoginDate = AuthenticationGroup
                                                  .verifysecurityquestionsCall
                                                  .lastLoginDate(
                                                (_model.askSecurityQuestionsAPiRes
                                                        ?.jsonBody ??
                                                    ''),
                                              ) !=
                                              null &&
                                          AuthenticationGroup
                                                  .verifysecurityquestionsCall
                                                  .lastLoginDate(
                                                (_model.askSecurityQuestionsAPiRes
                                                        ?.jsonBody ??
                                                    ''),
                                              ) !=
                                              ''
                                      ? AuthenticationGroup
                                          .verifysecurityquestionsCall
                                          .lastLoginDate(
                                          (_model.askSecurityQuestionsAPiRes
                                                  ?.jsonBody ??
                                              ''),
                                        )!
                                      : '';
                                  FFAppState()
                                      .selectedFirstName = AuthenticationGroup
                                                  .verifysecurityquestionsCall
                                                  .firstName(
                                                (_model.askSecurityQuestionsAPiRes
                                                        ?.jsonBody ??
                                                    ''),
                                              ) !=
                                              null &&
                                          AuthenticationGroup
                                                  .verifysecurityquestionsCall
                                                  .firstName(
                                                (_model.askSecurityQuestionsAPiRes
                                                        ?.jsonBody ??
                                                    ''),
                                              ) !=
                                              ''
                                      ? AuthenticationGroup
                                          .verifysecurityquestionsCall
                                          .firstName(
                                          (_model.askSecurityQuestionsAPiRes
                                                  ?.jsonBody ??
                                              ''),
                                        )!
                                      : '';
                                  FFAppState()
                                      .selectedUserName = AuthenticationGroup
                                                  .verifysecurityquestionsCall
                                                  .userName(
                                                (_model.askSecurityQuestionsAPiRes
                                                        ?.jsonBody ??
                                                    ''),
                                              ) !=
                                              null &&
                                          AuthenticationGroup
                                                  .verifysecurityquestionsCall
                                                  .userName(
                                                (_model.askSecurityQuestionsAPiRes
                                                        ?.jsonBody ??
                                                    ''),
                                              ) !=
                                              ''
                                      ? AuthenticationGroup
                                          .verifysecurityquestionsCall
                                          .userName(
                                          (_model.askSecurityQuestionsAPiRes
                                                  ?.jsonBody ??
                                              ''),
                                        )!
                                      : '';
                                });
                                Navigator.pop(context);

                                context.pushNamedAuth(
                                  'HomeDashboard',
                                  context.mounted,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              }

                              setState(() {});
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
