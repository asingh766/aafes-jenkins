import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_general/custom_outlined_text_field_general_widget.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'banking_profile_form_model.dart';
export 'banking_profile_form_model.dart';

class BankingProfileFormWidget extends StatefulWidget {
  const BankingProfileFormWidget({
    super.key,
    required this.title,
    this.onCancel,
    bool? isEdit,
    this.selectedBankProfile,
    this.otherBankProfile,
    required this.selectedAccount,
    this.onRefresh,
  }) : isEdit = isEdit ?? false;

  final String? title;
  final Future Function(String? option)? onCancel;
  final bool isEdit;
  final BankingProfileStruct? selectedBankProfile;
  final String? otherBankProfile;
  final String? selectedAccount;
  final Future Function()? onRefresh;

  @override
  State<BankingProfileFormWidget> createState() =>
      _BankingProfileFormWidgetState();
}

class _BankingProfileFormWidgetState extends State<BankingProfileFormWidget> {
  late BankingProfileFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BankingProfileFormModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.hasCommonError = false;
        _model.commonError = null;
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

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).accent2,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                widget.title!,
                textAlign: TextAlign.justify,
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Arial',
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      useGoogleFonts: false,
                    ),
              ),
            ),
          ),
          if (_model.hasCommonError &&
              (_model.commonError != null && _model.commonError != ''))
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
              child: Container(
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
                    _model.commonError!,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Arial',
                          color: FlutterFlowTheme.of(context).error,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ),
            ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 0.0),
                  child: Text(
                    widget.isEdit
                        ? ((String profileName, String last4) {
                            return "$profileName (....$last4)";
                          }(widget.selectedBankProfile!.profileName,
                            widget.selectedBankProfile!.bankAccountNoLast4))
                        : 'Add New Bank Account',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Arial',
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Material(
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
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Builder(
                            builder: (context) {
                              if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall
                                  ? false
                                  : true) {
                                return Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                        child: wrapWithModel(
                                          model: _model.accountNumberModel,
                                          updateCallback: () => setState(() {}),
                                          child:
                                              CustomOutlinedTextFieldGeneralWidget(
                                            enabled: true,
                                            title: 'Account Number',
                                            icon: const Icon(
                                              Icons.ten_k,
                                              color: Colors.transparent,
                                            ),
                                            hasIconAction: false,
                                            isRequired: false,
                                            infoMessage: '',
                                            errorMessage:
                                                _model.accountNumberError,
                                            hasError:
                                                _model.hasAccountNumberError,
                                            hintText: '',
                                            initialValue: widget.isEdit
                                                ? widget.selectedBankProfile
                                                    ?.bankAccountNumber
                                                : '',
                                            defaultFocus: false,
                                            maxLength: 17,
                                            isUseFull: true,
                                            onIconTap: () async {},
                                            validate: () async {
                                              setState(() {
                                                _model.accountNumberError = () {
                                                  if (_model.accountNumberModel
                                                              .value ==
                                                          null ||
                                                      _model.accountNumberModel
                                                              .value ==
                                                          '') {
                                                    return 'Account Number is required';
                                                  } else if (!((String value) {
                                                    return RegExp(
                                                            r'^[0-9]*[1-9]+[0-9]*$')
                                                        .hasMatch(value);
                                                  }(_model.accountNumberModel
                                                      .value!))) {
                                                    return 'Account Number - Please enter only numeric characters (cannot be all zeros).';
                                                  } else if ((_model
                                                              .accountNumberModel
                                                              .value!)
                                                          .length <
                                                      3) {
                                                    return 'Account Number - Length must be 3 to 17 characters.';
                                                  } else {
                                                    return '';
                                                  }
                                                }();
                                                _model.hasAccountNumberError =
                                                    valueOrDefault<bool>(
                                                  (_model.accountNumberModel
                                                                      .value ==
                                                                  null ||
                                                              _model.accountNumberModel
                                                                      .value ==
                                                                  '') ||
                                                          !((String value) {
                                                            return RegExp(
                                                                    r'^[0-9]*[1-9]+[0-9]*$')
                                                                .hasMatch(
                                                                    value);
                                                          }(_model
                                                              .accountNumberModel
                                                              .value!)) ||
                                                          ((_model.accountNumberModel
                                                                      .value!)
                                                                  .length <
                                                              3)
                                                      ? true
                                                      : false,
                                                  false,
                                                );
                                              });
                                            },
                                            resetError: () async {
                                              setState(() {
                                                _model.hasAccountNumberError =
                                                    false;
                                                _model.accountNumberError = '';
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: wrapWithModel(
                                          model: _model.routingNumberModel,
                                          updateCallback: () => setState(() {}),
                                          child:
                                              CustomOutlinedTextFieldGeneralWidget(
                                            enabled: true,
                                            title: 'Routing Number',
                                            icon: const Icon(
                                              Icons.ten_k,
                                              color: Colors.transparent,
                                            ),
                                            hasIconAction: false,
                                            isRequired: false,
                                            infoMessage: '',
                                            errorMessage: _model.routingError,
                                            hasError: _model.hasRoutingError,
                                            hintText: '',
                                            initialValue: widget.isEdit
                                                ? widget.selectedBankProfile
                                                    ?.routingNumber
                                                : '',
                                            defaultFocus: false,
                                            maxLength: 9,
                                            isUseFull: true,
                                            onIconTap: () async {},
                                            validate: () async {
                                              setState(() {
                                                _model.routingError = () {
                                                  if (_model.routingNumberModel
                                                              .value ==
                                                          null ||
                                                      _model.routingNumberModel
                                                              .value ==
                                                          '') {
                                                    return 'Routing Number is required';
                                                  } else if (!((String value) {
                                                    return RegExp(
                                                            r'^[0-9]*[1-9]+[0-9]*$')
                                                        .hasMatch(value);
                                                  }(_model.routingNumberModel
                                                      .value!))) {
                                                    return 'Routing Number - Please enter only numeric characters (cannot be all zeros).';
                                                  } else if ((_model
                                                              .routingNumberModel
                                                              .value!)
                                                          .length <
                                                      9) {
                                                    return 'Routing Number - Length must be 9 characters.';
                                                  } else if (!functions
                                                      .validateRoutingNumber(
                                                          _model
                                                              .routingNumberModel
                                                              .value!)) {
                                                    return 'Routing Number is not valid.';
                                                  } else {
                                                    return '';
                                                  }
                                                }();
                                                _model.hasRoutingError =
                                                    valueOrDefault<bool>(
                                                  (_model.routingNumberModel.value ==
                                                                  null ||
                                                              _model.routingNumberModel
                                                                      .value ==
                                                                  '') ||
                                                          !((String value) {
                                                            return RegExp(
                                                                    r'^[0-9]*[1-9]+[0-9]*$')
                                                                .hasMatch(
                                                                    value);
                                                          }(_model
                                                              .routingNumberModel
                                                              .value!)) ||
                                                          ((_model.routingNumberModel
                                                                      .value!)
                                                                  .length <
                                                              9) ||
                                                          !functions
                                                              .validateRoutingNumber(
                                                                  _model
                                                                      .routingNumberModel
                                                                      .value!)
                                                      ? true
                                                      : false,
                                                  false,
                                                );
                                              });
                                            },
                                            resetError: () async {
                                              setState(() {
                                                _model.hasRoutingError = false;
                                                _model.routingError = null;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 16.0)),
                                );
                              } else {
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                      child: wrapWithModel(
                                        model: _model.accountNumberMobileModel,
                                        updateCallback: () => setState(() {}),
                                        child:
                                            CustomOutlinedTextFieldGeneralWidget(
                                          enabled: true,
                                          title: 'Account Number',
                                          icon: const Icon(
                                            Icons.ten_k,
                                            color: Colors.transparent,
                                          ),
                                          hasIconAction: false,
                                          isRequired: false,
                                          infoMessage: '',
                                          errorMessage:
                                              _model.accountNumberError,
                                          hasError:
                                              _model.hasAccountNumberError,
                                          hintText: '',
                                          initialValue: widget.isEdit
                                              ? widget.selectedBankProfile
                                                  ?.bankAccountNumber
                                              : '',
                                          defaultFocus: false,
                                          maxLength: 17,
                                          isUseFull: true,
                                          onIconTap: () async {},
                                          validate: () async {
                                            setState(() {
                                              _model.accountNumberError = () {
                                                if (_model.accountNumberMobileModel
                                                            .value ==
                                                        null ||
                                                    _model.accountNumberMobileModel
                                                            .value ==
                                                        '') {
                                                  return 'Account Number is required';
                                                } else if (!((String value) {
                                                  return RegExp(
                                                          r'^[0-9]*[1-9]+[0-9]*$')
                                                      .hasMatch(value);
                                                }(_model
                                                    .accountNumberMobileModel
                                                    .value!))) {
                                                  return 'Account Number - Please enter only numeric characters (cannot be all zeros).';
                                                } else if ((_model
                                                            .accountNumberMobileModel
                                                            .value!)
                                                        .length <
                                                    3) {
                                                  return 'Account Number - Length must be 3 to 17 characters.';
                                                } else {
                                                  return '';
                                                }
                                              }();
                                              _model.hasAccountNumberError =
                                                  valueOrDefault<bool>(
                                                (_model.accountNumberMobileModel
                                                                    .value ==
                                                                null ||
                                                            _model.accountNumberMobileModel
                                                                    .value ==
                                                                '') ||
                                                        !((String value) {
                                                          return RegExp(
                                                                  r'^[0-9]*[1-9]+[0-9]*$')
                                                              .hasMatch(value);
                                                        }(_model
                                                            .accountNumberMobileModel
                                                            .value!)) ||
                                                        ((_model.accountNumberMobileModel
                                                                    .value!)
                                                                .length <
                                                            3)
                                                    ? true
                                                    : false,
                                                false,
                                              );
                                            });
                                          },
                                          resetError: () async {
                                            setState(() {
                                              _model.hasAccountNumberError =
                                                  false;
                                              _model.accountNumberError = '';
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: wrapWithModel(
                                        model: _model.routingNumberMobileModel,
                                        updateCallback: () => setState(() {}),
                                        child:
                                            CustomOutlinedTextFieldGeneralWidget(
                                          enabled: true,
                                          title: 'Routing Number',
                                          icon: const Icon(
                                            Icons.ten_k,
                                            color: Colors.transparent,
                                          ),
                                          hasIconAction: false,
                                          isRequired: false,
                                          infoMessage: '',
                                          errorMessage: _model.routingError,
                                          hasError: _model.hasRoutingError,
                                          hintText: '',
                                          initialValue: widget.isEdit
                                              ? widget.selectedBankProfile
                                                  ?.routingNumber
                                              : '',
                                          defaultFocus: false,
                                          maxLength: 9,
                                          isUseFull: true,
                                          onIconTap: () async {},
                                          validate: () async {
                                            setState(() {
                                              _model.routingError = () {
                                                if (_model.routingNumberMobileModel
                                                            .value ==
                                                        null ||
                                                    _model.routingNumberMobileModel
                                                            .value ==
                                                        '') {
                                                  return 'Routing Number is required';
                                                } else if (!((String value) {
                                                  return RegExp(
                                                          r'^[0-9]*[1-9]+[0-9]*$')
                                                      .hasMatch(value);
                                                }(_model
                                                    .routingNumberMobileModel
                                                    .value!))) {
                                                  return 'Routing Number - Please enter only numeric characters (cannot be all zeros).';
                                                } else if ((_model
                                                            .routingNumberMobileModel
                                                            .value!)
                                                        .length <
                                                    9) {
                                                  return 'Routing Number - Length must be 9 characters.';
                                                } else if (!functions
                                                    .validateRoutingNumber(_model
                                                        .routingNumberMobileModel
                                                        .value!)) {
                                                  return 'Routing Number is not valid.';
                                                } else {
                                                  return '';
                                                }
                                              }();
                                              _model.hasRoutingError =
                                                  valueOrDefault<bool>(
                                                (_model.routingNumberMobileModel
                                                                    .value ==
                                                                null ||
                                                            _model.routingNumberMobileModel
                                                                    .value ==
                                                                '') ||
                                                        !((String value) {
                                                          return RegExp(
                                                                  r'^[0-9]*[1-9]+[0-9]*$')
                                                              .hasMatch(value);
                                                        }(_model
                                                            .routingNumberMobileModel
                                                            .value!)) ||
                                                        ((_model.routingNumberMobileModel
                                                                    .value!)
                                                                .length <
                                                            9) ||
                                                        !functions
                                                            .validateRoutingNumber(
                                                                _model
                                                                    .routingNumberMobileModel
                                                                    .value!)
                                                    ? true
                                                    : false,
                                                false,
                                              );
                                            });
                                          },
                                          resetError: () async {
                                            setState(() {
                                              _model.hasRoutingError = false;
                                              _model.routingError = null;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ].divide(const SizedBox(height: 16.0)),
                                );
                              }
                            },
                          ),
                          wrapWithModel(
                            model: _model.nicknameModel,
                            updateCallback: () => setState(() {}),
                            child: CustomOutlinedTextFieldGeneralWidget(
                              enabled: true,
                              title: 'Nickname',
                              icon: const Icon(
                                Icons.ten_k,
                                color: Colors.transparent,
                              ),
                              hasIconAction: false,
                              isRequired: false,
                              infoMessage: '',
                              errorMessage: _model.nickNameError,
                              hasError: _model.hasNickNameError,
                              hintText: '',
                              initialValue: widget.isEdit
                                  ? widget.selectedBankProfile?.profileName
                                  : '',
                              defaultFocus: false,
                              maxLength: 30,
                              isUseFull: true,
                              onIconTap: () async {},
                              validate: () async {
                                setState(() {
                                  _model.nickNameError = () {
                                    if (_model.nicknameModel.value == null ||
                                        _model.nicknameModel.value == '') {
                                      return 'The Profile Nickname field is required.';
                                    } else if (!((String value) {
                                      return RegExp(
                                              r"^[a-zA-Z]+[a-zA-Z\,\.\'\_\- \s]*$")
                                          .hasMatch(value);
                                    }(_model.nicknameModel.value!))) {
                                      return 'Profile Name - Must begin with an alphabetic character, and may contain spaces, single quotes, commas, periods, dashes and underscores.';
                                    } else {
                                      return '';
                                    }
                                  }();
                                  _model.hasNickNameError =
                                      valueOrDefault<bool>(
                                    (_model.nicknameModel.value == null ||
                                                _model.nicknameModel.value ==
                                                    '') ||
                                            !((String value) {
                                              return RegExp(
                                                      r"^[a-zA-Z]+[a-zA-Z\,\.\'\_\- \s]*$")
                                                  .hasMatch(value);
                                            }(_model.nicknameModel.value!))
                                        ? true
                                        : false,
                                    false,
                                  );
                                });
                              },
                              resetError: () async {
                                setState(() {
                                  _model.hasNickNameError = false;
                                  _model.nickNameError = null;
                                });
                              },
                            ),
                          ),
                          FlutterFlowRadioButton(
                            options: ['Checking', 'Savings'].toList(),
                            onChanged: (val) => setState(() {}),
                            controller: _model.radioButtonValueController ??=
                                FormFieldController<String>(widget.isEdit
                                    ? (widget.selectedBankProfile
                                                ?.accountTypeCode ==
                                            'S'
                                        ? 'Savings'
                                        : 'Checking')
                                    : ''),
                            optionHeight: 32.0,
                            optionWidth: 150.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Arial',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                            selectedTextStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Arial',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor:
                                FlutterFlowTheme.of(context).primary,
                            inactiveRadioButtonColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  setState(() {
                                    _model.radioButtonValueController?.reset();
                                  });
                                  setState(() {
                                    _model.accountNumberModel.textController
                                        ?.clear();
                                    _model.routingNumberModel.textController
                                        ?.clear();
                                    _model.nicknameModel.textController
                                        ?.clear();
                                    _model
                                        .accountNumberMobileModel.textController
                                        ?.clear();
                                    _model
                                        .routingNumberMobileModel.textController
                                        ?.clear();
                                  });
                                  setState(() {
                                    _model.hasAccountNumberError = false;
                                    _model.accountNumberError = '';
                                    _model.hasRoutingError = false;
                                    _model.routingError = null;
                                    _model.nickNameError = null;
                                    _model.hasNickNameError = false;
                                    _model.hasCommonError = false;
                                    _model.commonError = null;
                                  });
                                  await widget.onCancel?.call(
                                    '',
                                  );
                                },
                                text: 'Cancel',
                                options: FFButtonOptions(
                                  height: 44.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Arial',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
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
                              ),
                              Builder(
                                builder: (context) {
                                  if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall
                                      ? true
                                      : false) {
                                    return FFButtonWidget(
                                      onPressed: (((_model.accountNumberMobileModel.value == null ||
                                                          _model.accountNumberMobileModel.value ==
                                                              '') ||
                                                      !((String value) {
                                                        return RegExp(
                                                                r'^[0-9]*[1-9]+[0-9]*$')
                                                            .hasMatch(value);
                                                      }(_model
                                                          .accountNumberMobileModel
                                                          .value!)) ||
                                                      ((_model.accountNumberMobileModel.value!).length <
                                                          3)) ||
                                                  ((_model.routingNumberMobileModel.value == null ||
                                                          _model.routingNumberMobileModel
                                                                  .value ==
                                                              '') ||
                                                      !((String value) {
                                                        return RegExp(
                                                                r'^[0-9]*[1-9]+[0-9]*$')
                                                            .hasMatch(value);
                                                      }(_model
                                                          .routingNumberMobileModel
                                                          .value!)) ||
                                                      ((_model.routingNumberMobileModel.value!)
                                                              .length <
                                                          9) ||
                                                      !functions.validateRoutingNumber(_model
                                                          .routingNumberMobileModel
                                                          .value!)) ||
                                                  ((_model.nicknameModel.value == null ||
                                                          _model.nicknameModel.value == '') ||
                                                      !((String value) {
                                                        return RegExp(
                                                                r"^[a-zA-Z]+[a-zA-Z\,\.\'\_\- \s]*$")
                                                            .hasMatch(value);
                                                      }(_model.nicknameModel.value!))) ||
                                                  (_model.radioButtonValue == null || _model.radioButtonValue == '') ||
                                                  (widget.isEdit && (_model.accountNumberMobileModel.value == widget.selectedBankProfile?.bankAccountNumber) && (_model.routingNumberMobileModel.value == widget.selectedBankProfile?.routingNumber) && (_model.nicknameModel.value == widget.selectedBankProfile?.profileName) && (_model.radioButtonValue == (widget.selectedBankProfile?.accountTypeCode == 'S' ? 'Savings' : 'Checking')))
                                              ? true
                                              : false)
                                          ? null
                                          : () async {
                                              unawaited(
                                                () async {
                                                  await action_blocks
                                                      .showLoadingDialog(
                                                          context);
                                                }(),
                                              );
                                              setState(() {
                                                _model.hasCommonError = false;
                                                _model.commonError = null;
                                              });
                                              _model.createApiResult =
                                                  await BankingProfileGroup
                                                      .createBankingProfileCall
                                                      .call(
                                                userId: FFAppState()
                                                    .selectedUserId
                                                    .toString(),
                                                accountNo:
                                                    widget.selectedAccount,
                                                dataJson: <String, dynamic>{
                                                  'ProfileNumber':
                                                      widget.selectedBankProfile !=
                                                              null
                                                          ? widget
                                                              .selectedBankProfile
                                                              ?.profileNumber
                                                          : 0,
                                                  'ProfileName': _model
                                                      .nicknameModel.value,
                                                  'RoutingNumber': _model
                                                      .routingNumberModel.value,
                                                  'BankAccountNumber': MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointSmall
                                                      ? _model
                                                          .accountNumberMobileModel
                                                          .value
                                                      : _model
                                                          .accountNumberModel
                                                          .value,
                                                  'AccountTypeCode':
                                                      _model.radioButtonValue ==
                                                              'Savings'
                                                          ? 'S'
                                                          : 'C',
                                                },
                                                dynamicBaseURL:
                                                    FFAppState().dynamicBaseURL,
                                              );
                                              if ((_model.createApiResult
                                                      ?.succeeded ??
                                                  true)) {
                                                await widget.onRefresh?.call();
                                                setState(() {
                                                  _model
                                                      .radioButtonValueController
                                                      ?.reset();
                                                });
                                                setState(() {
                                                  _model.accountNumberModel
                                                      .textController
                                                      ?.clear();
                                                  _model.routingNumberModel
                                                      .textController
                                                      ?.clear();
                                                  _model.nicknameModel
                                                      .textController
                                                      ?.clear();
                                                  _model
                                                      .accountNumberMobileModel
                                                      .textController
                                                      ?.clear();
                                                  _model
                                                      .routingNumberMobileModel
                                                      .textController
                                                      ?.clear();
                                                });
                                                setState(() {
                                                  _model.hasAccountNumberError =
                                                      false;
                                                  _model.accountNumberError =
                                                      '';
                                                  _model.hasRoutingError =
                                                      false;
                                                  _model.routingError = null;
                                                  _model.nickNameError = null;
                                                  _model.hasNickNameError =
                                                      false;
                                                });
                                                await widget.onCancel?.call(
                                                  widget.selectedBankProfile ==
                                                          null
                                                      ? 'create'
                                                      : 'update',
                                                );
                                              } else {
                                                if ((String message) {
                                                  return message.contains(
                                                      'Profile name is already used');
                                                }(getJsonField(
                                                  (_model.createApiResult
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.Message''',
                                                ).toString())) {
                                                  setState(() {
                                                    _model.nickNameError =
                                                        getJsonField(
                                                      (_model.createApiResult
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.Message''',
                                                    ).toString();
                                                    _model.hasNickNameError =
                                                        true;
                                                  });
                                                } else {
                                                  setState(() {
                                                    _model.hasCommonError =
                                                        true;
                                                    _model.commonError =
                                                        getJsonField(
                                                      (_model.createApiResult
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.Message''',
                                                    ).toString();
                                                  });
                                                }
                                              }

                                              Navigator.pop(context);

                                              setState(() {});
                                            },
                                      text: 'Submit',
                                      options: FFButtonOptions(
                                        height: 44.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
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
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        disabledColor:
                                            FlutterFlowTheme.of(context)
                                                .accent2,
                                        disabledTextColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                      ),
                                      showLoadingIndicator: false,
                                    );
                                  } else {
                                    return FFButtonWidget(
                                      onPressed: (((_model.accountNumberModel.value == null ||
                                                          _model.accountNumberModel.value ==
                                                              '') ||
                                                      !((String value) {
                                                        return RegExp(
                                                                r'^[0-9]*[1-9]+[0-9]*$')
                                                            .hasMatch(value);
                                                      }(_model.accountNumberModel
                                                          .value!)) ||
                                                      ((_model.accountNumberModel.value!).length <
                                                          3)) ||
                                                  ((_model.routingNumberModel.value == null ||
                                                          _model.routingNumberModel
                                                                  .value ==
                                                              '') ||
                                                      !((String value) {
                                                        return RegExp(
                                                                r'^[0-9]*[1-9]+[0-9]*$')
                                                            .hasMatch(value);
                                                      }(_model
                                                          .routingNumberModel
                                                          .value!)) ||
                                                      ((_model.routingNumberModel.value!)
                                                              .length <
                                                          9) ||
                                                      !functions.validateRoutingNumber(
                                                          _model
                                                              .routingNumberModel
                                                              .value!)) ||
                                                  ((_model.nicknameModel.value == null ||
                                                          _model.nicknameModel.value == '') ||
                                                      !((String value) {
                                                        return RegExp(
                                                                r"^[a-zA-Z]+[a-zA-Z\,\.\'\_\- \s]*$")
                                                            .hasMatch(value);
                                                      }(_model.nicknameModel.value!))) ||
                                                  (_model.radioButtonValue == null || _model.radioButtonValue == '') ||
                                                  (widget.isEdit && (_model.accountNumberModel.value == widget.selectedBankProfile?.bankAccountNumber) && (_model.routingNumberModel.value == widget.selectedBankProfile?.routingNumber) && (_model.nicknameModel.value == widget.selectedBankProfile?.profileName) && (_model.radioButtonValue == (widget.selectedBankProfile?.accountTypeCode == 'S' ? 'Savings' : 'Checking')))
                                              ? true
                                              : false)
                                          ? null
                                          : () async {
                                              unawaited(
                                                () async {
                                                  await action_blocks
                                                      .showLoadingDialog(
                                                          context);
                                                }(),
                                              );
                                              setState(() {
                                                _model.hasCommonError = false;
                                                _model.commonError = null;
                                              });
                                              _model.createApiResultCopy =
                                                  await BankingProfileGroup
                                                      .createBankingProfileCall
                                                      .call(
                                                userId: FFAppState()
                                                    .selectedUserId
                                                    .toString(),
                                                accountNo:
                                                    widget.selectedAccount,
                                                dataJson: <String, dynamic>{
                                                  'ProfileNumber':
                                                      widget.selectedBankProfile !=
                                                              null
                                                          ? widget
                                                              .selectedBankProfile
                                                              ?.profileNumber
                                                          : 0,
                                                  'ProfileName': _model
                                                      .nicknameModel.value,
                                                  'RoutingNumber': _model
                                                      .routingNumberModel.value,
                                                  'BankAccountNumber': MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointSmall
                                                      ? _model
                                                          .accountNumberMobileModel
                                                          .value
                                                      : _model
                                                          .accountNumberModel
                                                          .value,
                                                  'AccountTypeCode':
                                                      _model.radioButtonValue ==
                                                              'Savings'
                                                          ? 'S'
                                                          : 'C',
                                                },
                                                dynamicBaseURL:
                                                    FFAppState().dynamicBaseURL,
                                              );
                                              if ((_model.createApiResultCopy
                                                      ?.succeeded ??
                                                  true)) {
                                                await widget.onRefresh?.call();
                                                setState(() {
                                                  _model
                                                      .radioButtonValueController
                                                      ?.reset();
                                                });
                                                setState(() {
                                                  _model.accountNumberModel
                                                      .textController
                                                      ?.clear();
                                                  _model.routingNumberModel
                                                      .textController
                                                      ?.clear();
                                                  _model.nicknameModel
                                                      .textController
                                                      ?.clear();
                                                  _model
                                                      .accountNumberMobileModel
                                                      .textController
                                                      ?.clear();
                                                  _model
                                                      .routingNumberMobileModel
                                                      .textController
                                                      ?.clear();
                                                });
                                                setState(() {
                                                  _model.hasAccountNumberError =
                                                      false;
                                                  _model.accountNumberError =
                                                      '';
                                                  _model.hasRoutingError =
                                                      false;
                                                  _model.routingError = null;
                                                  _model.nickNameError = null;
                                                  _model.hasNickNameError =
                                                      false;
                                                });
                                                await widget.onCancel?.call(
                                                  widget.selectedBankProfile ==
                                                          null
                                                      ? 'create'
                                                      : 'update',
                                                );
                                              } else {
                                                if ((String message) {
                                                  return message.contains(
                                                      'Profile name is already used');
                                                }(getJsonField(
                                                  (_model.createApiResultCopy
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.Message''',
                                                ).toString())) {
                                                  setState(() {
                                                    _model.nickNameError =
                                                        getJsonField(
                                                      (_model.createApiResultCopy
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.Message''',
                                                    ).toString();
                                                    _model.hasNickNameError =
                                                        true;
                                                  });
                                                } else {
                                                  setState(() {
                                                    _model.hasCommonError =
                                                        true;
                                                    _model.commonError =
                                                        getJsonField(
                                                      (_model.createApiResultCopy
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.Message''',
                                                    ).toString();
                                                  });
                                                }
                                              }

                                              Navigator.pop(context);

                                              setState(() {});
                                            },
                                      text: 'Submit',
                                      options: FFButtonOptions(
                                        height: 44.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
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
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        disabledColor:
                                            FlutterFlowTheme.of(context)
                                                .accent2,
                                        disabledTextColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                      ),
                                      showLoadingIndicator: false,
                                    );
                                  }
                                },
                              ),
                            ].divide(const SizedBox(width: 16.0)),
                          ),
                        ].divide(const SizedBox(height: 16.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          if (widget.otherBankProfile != null && widget.otherBankProfile != '')
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                widget.otherBankProfile!,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Arial',
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
            ),
        ],
      ),
    );
  }
}
