import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_general/custom_outlined_text_field_general_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_s_s_n/custom_outlined_text_field_s_s_n_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'manage_auth_users_step2_model.dart';
export 'manage_auth_users_step2_model.dart';

class ManageAuthUsersStep2Widget extends StatefulWidget {
  const ManageAuthUsersStep2Widget({
    super.key,
    required this.nextCallback,
    this.accountNumber,
    required this.cancelCallback,
  });

  final Future Function()? nextCallback;
  final String? accountNumber;
  final Future Function()? cancelCallback;

  @override
  State<ManageAuthUsersStep2Widget> createState() =>
      _ManageAuthUsersStep2WidgetState();
}

class _ManageAuthUsersStep2WidgetState extends State<ManageAuthUsersStep2Widget>
    with TickerProviderStateMixin {
  late ManageAuthUsersStep2Model _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ManageAuthUsersStep2Model());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.firstNameTextField1DModel.textController?.clear();
        _model.middleNameTextField1DModel.textController?.clear();
        _model.lastNameTextField1DModel.textController?.clear();
        _model.firstNameTextField1MModel.textController?.clear();
        _model.middleNameTextField1MModel.textController?.clear();
        _model.lastNameTextField1MModel.textController?.clear();
      });
      setState(() {
        _model.errorSSN = ' ';
        _model.hasErrorSSN = false;
      });
      setState(() {
        FFAppState().addressList = [];
        FFAppState().addressJson = null;
      });
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, 0.0),
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
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (_model.hasErrorAPI)
                    wrapWithModel(
                      model: _model.errorBannerOutlinedModel1,
                      updateCallback: () => setState(() {}),
                      child: ErrorBannerOutlinedWidget(
                        message: _model.errorAPI,
                      ),
                    ),
                  Text(
                    'Provide the following details for the person you would like to add as an Authorized User to your account.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Arial',
                          color: FlutterFlowTheme.of(context).black,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.firstNameTextField1DModel,
                                updateCallback: () => setState(() {}),
                                child: CustomOutlinedTextFieldGeneralWidget(
                                  enabled: true,
                                  title: 'First Name',
                                  icon: const Icon(
                                    Icons.ten_k,
                                    color: Colors.transparent,
                                  ),
                                  hasIconAction: false,
                                  isRequired: true,
                                  infoMessage: '',
                                  hasError: false,
                                  hintText: '',
                                  defaultFocus: false,
                                  onIconTap: () async {},
                                  validate: () async {},
                                  resetError: () async {},
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.middleNameTextField1DModel,
                                updateCallback: () => setState(() {}),
                                child: CustomOutlinedTextFieldGeneralWidget(
                                  enabled: true,
                                  title: 'MI',
                                  icon: const Icon(
                                    Icons.ten_k,
                                    color: Colors.transparent,
                                  ),
                                  hasIconAction: false,
                                  isRequired: false,
                                  infoMessage: '',
                                  hasError: false,
                                  hintText: '',
                                  defaultFocus: false,
                                  maxLength: 1,
                                  onIconTap: () async {},
                                  validate: () async {},
                                  resetError: () async {},
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.lastNameTextField1DModel,
                                updateCallback: () => setState(() {}),
                                child: CustomOutlinedTextFieldGeneralWidget(
                                  enabled: true,
                                  title: 'Last Name',
                                  icon: const Icon(
                                    Icons.ten_k,
                                    color: Colors.transparent,
                                  ),
                                  hasIconAction: false,
                                  isRequired: true,
                                  infoMessage: '',
                                  hasError: false,
                                  hintText: '',
                                  defaultFocus: false,
                                  onIconTap: () async {},
                                  validate: () async {},
                                  resetError: () async {},
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: const BoxDecoration(),
                            ),
                          ),
                        ].divide(const SizedBox(width: 16.0)),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.sSNTextField1DModel,
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
                                  infoMessage: '',
                                  errorMessage: _model.errorSSN,
                                  hasError: _model.hasErrorSSN,
                                  hint: 'XXX - XX - XXXX',
                                  onIconTap: () async {},
                                  validate: () async {
                                    if (!(((_model.sSNTextField1DModel
                                                    .ssnValue!)
                                                .length ??
                                            0) ==
                                        9)) {
                                      setState(() {
                                        _model.errorSSN =
                                            'Invalid Social Security Number';
                                        _model.hasErrorSSN = true;
                                      });
                                    }
                                  },
                                  resetError: () async {
                                    setState(() {
                                      _model.errorSSN = ' ';
                                      _model.hasErrorSSN = false;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                          if (MediaQuery.sizeOf(context).width >=
                              kBreakpointLarge)
                            Expanded(
                              child: Container(
                                decoration: const BoxDecoration(),
                              ),
                            ),
                        ].divide(const SizedBox(width: 16.0)),
                      ),
                      Text(
                        'You may authorize eligible dependents (as defined by the Department of Defense) who are 18 years or older, with current exchange privileges, to use your account as an authorized user. You understand and agree that authorized users may use your account to make purchases from the exchange and may make account payments on your behalf. You also understand and agree that you are liable for all amounts due for the account under the agreement, including amounts due for account purchases made by you and by any authorized user.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Arial',
                              color: FlutterFlowTheme.of(context).black,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                      Row(
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
                          wrapWithModel(
                            model: _model.commonCustomButtonDModel,
                            updateCallback: () => setState(() {}),
                            child: CommonCustomButtonWidget(
                              titile: 'Next',
                              isDisabled: !((_model.firstNameTextField1DModel
                                              .value !=
                                          null &&
                                      _model.firstNameTextField1DModel.value !=
                                          '') &&
                                  (_model.lastNameTextField1DModel.value !=
                                          null &&
                                      _model.lastNameTextField1DModel.value !=
                                          '') &&
                                  (_model.sSNTextField1DModel.ssnValue !=
                                          null &&
                                      _model.sSNTextField1DModel.ssnValue !=
                                          '') &&
                                  !_model.hasErrorSSN),
                              isEditIconVisible: false,
                              onTap: () async {
                                var shouldSetState = false;
                                setState(() {
                                  FFAppState().addressList = [];
                                  FFAppState().addressJson = null;
                                });
                                await action_blocks.showLoadingDialog(context);
                                _model.apiResultUserAddressD =
                                    await AuthorisedUsersGroup.userAddressCall
                                        .call(
                                  authToken: currentAuthenticationToken,
                                  userId:
                                      FFAppState().selectedUserId.toString(),
                                  accountNumber: widget.accountNumber,
                                  firstName:
                                      _model.firstNameTextField1DModel.value,
                                  middleName:
                                      _model.middleNameTextField1DModel.value,
                                  lastName:
                                      _model.lastNameTextField1DModel.value,
                                  ssn: _model.sSNTextField1DModel.ssnValue,
                                  dynamicBaseURL: FFAppState().dynamicBaseURL,
                                );
                                shouldSetState = true;
                                Navigator.pop(context);
                                if ((_model.apiResultUserAddressD?.succeeded ??
                                    true)) {
                                  if ((getJsonField(
                                            (_model.apiResultUserAddressD
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.Address1''',
                                          ) !=
                                          null) &&
                                      (getJsonField(
                                            (_model.apiResultUserAddressD
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.Address2''',
                                          ) !=
                                          null) &&
                                      (getJsonField(
                                            (_model.apiResultUserAddressD
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.City''',
                                          ) !=
                                          null) &&
                                      (getJsonField(
                                            (_model.apiResultUserAddressD
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.State''',
                                          ) !=
                                          null) &&
                                      (getJsonField(
                                            (_model.apiResultUserAddressD
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.Zip''',
                                          ) !=
                                          null)) {
                                    setState(() {
                                      FFAppState().addToAddressList(
                                          'Address on File${'\n'}${getJsonField(
                                        (_model.apiResultUserAddressD
                                                ?.jsonBody ??
                                            ''),
                                        r'''$.Address1''',
                                      ).toString()} ${getJsonField(
                                        (_model.apiResultUserAddressD
                                                ?.jsonBody ??
                                            ''),
                                        r'''$.Address2''',
                                      ).toString()} ${getJsonField(
                                        (_model.apiResultUserAddressD
                                                ?.jsonBody ??
                                            ''),
                                        r'''$.City''',
                                      ).toString()} ${getJsonField(
                                        (_model.apiResultUserAddressD
                                                ?.jsonBody ??
                                            ''),
                                        r'''$.State''',
                                      ).toString()} ${getJsonField(
                                        (_model.apiResultUserAddressD
                                                ?.jsonBody ??
                                            ''),
                                        r'''$.Zip''',
                                      ).toString()}');
                                      FFAppState().addressJson = (_model
                                              .apiResultUserAddressD
                                              ?.jsonBody ??
                                          '');
                                    });
                                    setState(() {
                                      FFAppState()
                                          .addToAddressList('Other Address');
                                    });
                                    await widget.nextCallback?.call();
                                    if (shouldSetState) setState(() {});
                                    return;
                                  } else {
                                    setState(() {
                                      _model.hasErrorAPI = true;
                                      _model.errorAPI = getJsonField(
                                        (_model.apiResultUserAddressD
                                                ?.jsonBody ??
                                            ''),
                                        r'''$.Message''',
                                      ).toString();
                                    });
                                    if (shouldSetState) setState(() {});
                                    return;
                                  }
                                } else {
                                  setState(() {
                                    _model.hasErrorAPI = true;
                                    _model.errorAPI = getJsonField(
                                      (_model.apiResultUserAddressD?.jsonBody ??
                                          ''),
                                      r'''$.Message''',
                                    ).toString();
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
                  ),
                ].divide(const SizedBox(height: 26.0)),
              ),
            ),
          ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation1']!),
        if (responsiveVisibility(
          context: context,
          desktop: false,
        ))
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (_model.hasErrorAPI)
                    wrapWithModel(
                      model: _model.errorBannerOutlinedModel2,
                      updateCallback: () => setState(() {}),
                      child: ErrorBannerOutlinedWidget(
                        message: _model.errorAPI,
                      ),
                    ),
                  Text(
                    'Provide the following details for the person you would like to add as an Authorized User to your account.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Arial',
                          color: FlutterFlowTheme.of(context).black,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      wrapWithModel(
                        model: _model.firstNameTextField1MModel,
                        updateCallback: () => setState(() {}),
                        child: CustomOutlinedTextFieldGeneralWidget(
                          enabled: true,
                          title: 'First Name',
                          icon: const Icon(
                            Icons.ten_k,
                            color: Colors.transparent,
                          ),
                          hasIconAction: false,
                          isRequired: true,
                          infoMessage: '',
                          hasError: false,
                          hintText: '',
                          defaultFocus: false,
                          onIconTap: () async {},
                          validate: () async {},
                          resetError: () async {},
                        ),
                      ),
                      wrapWithModel(
                        model: _model.middleNameTextField1MModel,
                        updateCallback: () => setState(() {}),
                        child: CustomOutlinedTextFieldGeneralWidget(
                          enabled: true,
                          title: 'MI',
                          icon: const Icon(
                            Icons.ten_k,
                            color: Colors.transparent,
                          ),
                          hasIconAction: false,
                          isRequired: false,
                          infoMessage: '',
                          hasError: false,
                          hintText: '',
                          defaultFocus: false,
                          maxLength: 1,
                          onIconTap: () async {},
                          validate: () async {},
                          resetError: () async {},
                        ),
                      ),
                      wrapWithModel(
                        model: _model.lastNameTextField1MModel,
                        updateCallback: () => setState(() {}),
                        child: CustomOutlinedTextFieldGeneralWidget(
                          enabled: true,
                          title: 'Last Name',
                          icon: const Icon(
                            Icons.ten_k,
                            color: Colors.transparent,
                          ),
                          hasIconAction: false,
                          isRequired: true,
                          infoMessage: '',
                          hasError: false,
                          hintText: '',
                          defaultFocus: false,
                          onIconTap: () async {},
                          validate: () async {},
                          resetError: () async {},
                        ),
                      ),
                      wrapWithModel(
                        model: _model.sSNTextField1MModel,
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
                          infoMessage: '',
                          errorMessage: _model.errorSSN,
                          hasError: _model.hasErrorSSN,
                          hint: 'XXX - XX - XXXX',
                          onIconTap: () async {},
                          validate: () async {
                            if (!(((_model.sSNTextField1MModel.ssnValue!)
                                        .length ??
                                    0) ==
                                9)) {
                              setState(() {
                                _model.errorSSN =
                                    'Invalid Social Security Number';
                                _model.hasErrorSSN = true;
                              });
                            }
                          },
                          resetError: () async {
                            setState(() {
                              _model.errorSSN = ' ';
                              _model.hasErrorSSN = false;
                            });
                          },
                        ),
                      ),
                      Text(
                        'You may authorize eligible dependents (as defined by the Department of Defense) who are 18 years or older, with current exchange privileges, to use your account as an authorized user. You understand and agree that authorized users may use your account to make purchases from the exchange and may make account payments on your behalf. You also understand and agree that you are liable for all amounts due for the account under the agreement, including amounts due for account purchases made by you and by any authorized user.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Arial',
                              color: FlutterFlowTheme.of(context).black,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
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
                              onTap: () async {
                                await widget.cancelCallback?.call();
                              },
                            ),
                          ),
                          wrapWithModel(
                            model: _model.commonCustomButtonMModel,
                            updateCallback: () => setState(() {}),
                            child: CommonCustomButtonWidget(
                              titile: 'Next',
                              isDisabled: !((_model.firstNameTextField1MModel
                                              .value !=
                                          null &&
                                      _model.firstNameTextField1MModel.value !=
                                          '') &&
                                  (_model.lastNameTextField1MModel.value !=
                                          null &&
                                      _model.lastNameTextField1MModel.value !=
                                          '') &&
                                  (_model.sSNTextField1MModel.ssnValue !=
                                          null &&
                                      _model.sSNTextField1MModel.ssnValue !=
                                          '') &&
                                  !_model.hasErrorSSN),
                              isEditIconVisible: false,
                              onTap: () async {
                                var shouldSetState = false;
                                setState(() {
                                  FFAppState().addressList = [];
                                  FFAppState().addressJson = null;
                                });
                                await action_blocks.showLoadingDialog(context);
                                _model.apiResultUserAddressM =
                                    await AuthorisedUsersGroup.userAddressCall
                                        .call(
                                  authToken: currentAuthenticationToken,
                                  userId:
                                      FFAppState().selectedUserId.toString(),
                                  accountNumber: widget.accountNumber,
                                  firstName:
                                      _model.firstNameTextField1MModel.value,
                                  middleName:
                                      _model.middleNameTextField1MModel.value,
                                  lastName:
                                      _model.lastNameTextField1MModel.value,
                                  ssn: _model.sSNTextField1MModel.ssnValue,
                                  dynamicBaseURL: FFAppState().dynamicBaseURL,
                                );
                                shouldSetState = true;
                                Navigator.pop(context);
                                if ((_model.apiResultUserAddressM?.succeeded ??
                                    true)) {
                                  if ((getJsonField(
                                            (_model.apiResultUserAddressM
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.Address1''',
                                          ) !=
                                          null) &&
                                      (getJsonField(
                                            (_model.apiResultUserAddressM
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.Address2''',
                                          ) !=
                                          null) &&
                                      (getJsonField(
                                            (_model.apiResultUserAddressM
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.City''',
                                          ) !=
                                          null) &&
                                      (getJsonField(
                                            (_model.apiResultUserAddressM
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.State''',
                                          ) !=
                                          null) &&
                                      (getJsonField(
                                            (_model.apiResultUserAddressM
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.Zip''',
                                          ) !=
                                          null)) {
                                    setState(() {
                                      FFAppState().addToAddressList(
                                          'Address on File${'\n'}${getJsonField(
                                        (_model.apiResultUserAddressM
                                                ?.jsonBody ??
                                            ''),
                                        r'''$.Address1''',
                                      ).toString()} ${getJsonField(
                                        (_model.apiResultUserAddressM
                                                ?.jsonBody ??
                                            ''),
                                        r'''$.Address2''',
                                      ).toString()} ${getJsonField(
                                        (_model.apiResultUserAddressM
                                                ?.jsonBody ??
                                            ''),
                                        r'''$.City''',
                                      ).toString()} ${getJsonField(
                                        (_model.apiResultUserAddressM
                                                ?.jsonBody ??
                                            ''),
                                        r'''$.State''',
                                      ).toString()} ${getJsonField(
                                        (_model.apiResultUserAddressM
                                                ?.jsonBody ??
                                            ''),
                                        r'''$.Zip''',
                                      ).toString()}');
                                      FFAppState().addressJson = (_model
                                              .apiResultUserAddressM
                                              ?.jsonBody ??
                                          '');
                                    });
                                    setState(() {
                                      FFAppState()
                                          .addToAddressList('Other Address');
                                    });
                                    await widget.nextCallback?.call();
                                    if (shouldSetState) setState(() {});
                                    return;
                                  } else {
                                    setState(() {
                                      _model.hasErrorAPI = true;
                                      _model.errorAPI = getJsonField(
                                        (_model.apiResultUserAddressD
                                                ?.jsonBody ??
                                            ''),
                                        r'''$.Message''',
                                      ).toString();
                                    });
                                    if (shouldSetState) setState(() {});
                                    return;
                                  }
                                } else {
                                  setState(() {
                                    _model.hasErrorAPI = true;
                                    _model.errorAPI = getJsonField(
                                      (_model.apiResultUserAddressD?.jsonBody ??
                                          ''),
                                      r'''$.Message''',
                                    ).toString();
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
                  ),
                ].divide(const SizedBox(height: 26.0)),
              ),
            ),
          ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation2']!),
      ],
    );
  }
}
