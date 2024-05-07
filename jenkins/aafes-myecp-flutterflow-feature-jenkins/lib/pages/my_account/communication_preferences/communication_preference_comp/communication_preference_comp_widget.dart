import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/common_circular_indicator/common_circular_indicator_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/components/success_banner_filled/success_banner_filled_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'communication_preference_comp_model.dart';
export 'communication_preference_comp_model.dart';

class CommunicationPreferenceCompWidget extends StatefulWidget {
  const CommunicationPreferenceCompWidget({
    super.key,
    bool? isPrimaryUser,
  }) : isPrimaryUser = isPrimaryUser ?? false;

  final bool isPrimaryUser;

  @override
  State<CommunicationPreferenceCompWidget> createState() =>
      _CommunicationPreferenceCompWidgetState();
}

class _CommunicationPreferenceCompWidgetState
    extends State<CommunicationPreferenceCompWidget> {
  late CommunicationPreferenceCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommunicationPreferenceCompModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.isSuccess = false;
        _model.isError = false;
        _model.isEnabled = false;
        _model.isLoading = true;
      });
      unawaited(
        () async {}(),
      );
      _model.preferenceAPIRes =
          await ManageContactDetailsGroup.preferencesCall.call(
        userId: currentUserUid,
        dynamicBaseURL: FFAppState().dynamicBaseURL,
      );
      if ((_model.preferenceAPIRes?.succeeded ?? true)) {
        setState(() {
          _model.statementCheckboxValue = valueOrDefault<bool>(
            ManageContactDetailsGroup.preferencesCall.isStatementEmail(
              (_model.preferenceAPIRes?.jsonBody ?? ''),
            ),
            false,
          );
        });
        setState(() {
          _model.legalCheckboxValue = valueOrDefault<bool>(
            ManageContactDetailsGroup.preferencesCall.isLegalNoticeEmail(
              (_model.preferenceAPIRes?.jsonBody ?? ''),
            ),
            false,
          );
        });
        setState(() {
          _model.exchangeCheckboxValue = valueOrDefault<bool>(
            ManageContactDetailsGroup.preferencesCall.isExchangeCreditPromotion(
              (_model.preferenceAPIRes?.jsonBody ?? ''),
            ),
            false,
          );
        });
        setState(() {
          _model.preference = PreferenceStruct.maybeFromMap(
              (_model.preferenceAPIRes?.jsonBody ?? ''));
        });
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
                      'Communication Preferences',
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
                if (!_model.isLoading!) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (_model.isSuccess)
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: wrapWithModel(
                              model: _model.successBannerFilledModel,
                              updateCallback: () => setState(() {}),
                              child: SuccessBannerFilledWidget(
                                message: _model.successText!,
                              ),
                            ),
                          ),
                        if (_model.isError ?? true)
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: wrapWithModel(
                              model: _model.errorBannerOutlinedModel,
                              updateCallback: () => setState(() {}),
                              child: ErrorBannerOutlinedWidget(
                                message: getJsonField(
                                  (_model.updatePreferencesAPIRes?.jsonBody ??
                                      ''),
                                  r'''$.Message''',
                                ).toString(),
                              ),
                            ),
                          ),
                        Text(
                          'Statements:',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Arial',
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (widget.isPrimaryUser) {
                                setState(() {
                                  _model.statementCheckboxValue =
                                      !_model.statementCheckboxValue!;
                                });
                                setState(() {
                                  _model.isEnabled = true;
                                });
                              } else {
                                setState(() {
                                  _model.statementCheckboxValue =
                                      _model.statementCheckboxValue!;
                                });
                              }
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
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
                                    value: _model.statementCheckboxValue ??=
                                        _model.preference!.isStatementEmail,
                                    onChanged: !widget.isPrimaryUser
                                        ? null
                                        : (newValue) async {
                                            setState(() =>
                                                _model.statementCheckboxValue =
                                                    newValue!);
                                            if (newValue!) {
                                              if (widget.isPrimaryUser) {
                                                setState(() {
                                                  _model.isEnabled = true;
                                                });
                                              } else {
                                                setState(() {
                                                  _model.statementCheckboxValue =
                                                      _model
                                                          .statementCheckboxValue!;
                                                });
                                              }
                                            } else {
                                              if (widget.isPrimaryUser) {
                                                setState(() {
                                                  _model.isEnabled = true;
                                                });
                                              } else {
                                                setState(() {
                                                  _model.statementCheckboxValue =
                                                      _model
                                                          .statementCheckboxValue!;
                                                });
                                              }
                                            }
                                          },
                                    side: BorderSide(
                                      width: 2,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor: !widget.isPrimaryUser
                                        ? FlutterFlowTheme.of(context)
                                            .primaryBackground
                                        : FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 5.0, 0.0),
                                  child: Text(
                                    'Yes, Paperless',
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
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/ico-paperless_1.png',
                                    width: 20.0,
                                    height: 20.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Text(
                            'Legal Notices: ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Arial',
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (widget.isPrimaryUser) {
                                setState(() {
                                  _model.isEnabled = true;
                                });
                                setState(() {
                                  _model.legalCheckboxValue =
                                      !_model.legalCheckboxValue!;
                                });
                              } else {
                                setState(() {
                                  _model.legalCheckboxValue =
                                      _model.legalCheckboxValue!;
                                });
                              }
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
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
                                    value: _model.legalCheckboxValue ??=
                                        _model.preference!.isLegalNoticeEmail,
                                    onChanged: !widget.isPrimaryUser
                                        ? null
                                        : (newValue) async {
                                            setState(() =>
                                                _model.legalCheckboxValue =
                                                    newValue!);
                                            if (newValue!) {
                                              if (widget.isPrimaryUser) {
                                                setState(() {
                                                  _model.isEnabled = true;
                                                });
                                              } else {
                                                setState(() {
                                                  _model.legalCheckboxValue =
                                                      _model
                                                          .legalCheckboxValue!;
                                                });
                                              }
                                            } else {
                                              if (widget.isPrimaryUser) {
                                                setState(() {
                                                  _model.isEnabled = true;
                                                });
                                              } else {
                                                setState(() {
                                                  _model.legalCheckboxValue =
                                                      _model
                                                          .legalCheckboxValue!;
                                                });
                                              }
                                            }
                                          },
                                    side: BorderSide(
                                      width: 2,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor: !widget.isPrimaryUser
                                        ? FlutterFlowTheme.of(context)
                                            .primaryBackground
                                        : FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 5.0, 0.0),
                                  child: Text(
                                    'Yes, Paperless',
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
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/ico-paperless_1.png',
                                    width: 20.0,
                                    height: 20.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Text(
                            'Exchange Credit Marketing',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Arial',
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (widget.isPrimaryUser) {
                                setState(() {
                                  _model.isEnabled = true;
                                });
                                setState(() {
                                  _model.exchangeCheckboxValue =
                                      !_model.exchangeCheckboxValue!;
                                });
                              } else {
                                setState(() {
                                  _model.exchangeCheckboxValue =
                                      _model.exchangeCheckboxValue!;
                                });
                              }
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
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
                                    value: _model.exchangeCheckboxValue ??=
                                        _model.preference!
                                            .isExchangeCreditPromotion,
                                    onChanged: !widget.isPrimaryUser
                                        ? null
                                        : (newValue) async {
                                            setState(() =>
                                                _model.exchangeCheckboxValue =
                                                    newValue!);
                                            if (newValue!) {
                                              if (widget.isPrimaryUser) {
                                                setState(() {
                                                  _model.isEnabled = true;
                                                });
                                              } else {
                                                setState(() {
                                                  _model.exchangeCheckboxValue =
                                                      _model
                                                          .exchangeCheckboxValue!;
                                                });
                                              }
                                            } else {
                                              if (widget.isPrimaryUser) {
                                                setState(() {
                                                  _model.isEnabled = true;
                                                });
                                              } else {
                                                setState(() {
                                                  _model.exchangeCheckboxValue =
                                                      _model
                                                          .exchangeCheckboxValue!;
                                                });
                                              }
                                            }
                                          },
                                    side: BorderSide(
                                      width: 2,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor: !widget.isPrimaryUser
                                        ? FlutterFlowTheme.of(context)
                                            .primaryBackground
                                        : FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 5.0, 0.0),
                                  child: Text(
                                    'Yes',
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
                                ),
                              ],
                            ),
                          ),
                        ),
                        if ((_model.preference?.isLegalNoticeEmail !=
                                _model.legalCheckboxValue) &&
                            !_model.preference!.isLegalNoticeEmail)
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 40.0, 0.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: const Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 10.0),
                                child: FlutterFlowWebView(
                                  content:
                                      '<!DOCTYPE html>\n\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n\n<head>\n    <title></title>\n</head>\n\n<body>\n\n    <table border=0 style=\"width:98%\">\n        <tbody>\n            <div class=\"terms-and-conditions\">\n                <div class=\"align-center pb5\"\n                    style=\"text-align:centre;padding-bottom:5px; display: flex; justify-content: center;\"><b\n                    style=\"text-align: center;\">ELECTRONIC\n                        NOTICE DISCLOSURE AND CONSENT FOR THE <span>MILITARY\n                            STAR</span>\n                        EXCHANGE CREDIT PROGRAM</b></div>\n\n\n\n                <div  style=\"text-align: justify;\">\n                    This Electronic Notice Disclosure and Consent (the \"Consent\") describes how we will deliver\n                    disclosures\n                    and notices required by law to you (and will include account updates, changes to terms and\n                    conditions,\n                    statements, privacy notices, and notices of credit line increases or decreases). Receipt of such\n                    documents electronically requires your consent. We reserve the right to provide any disclosures or\n                    notices in writing to the primary address of record in our files. You have the right to receive all\n                    such\n                    documents in paper form at no charge. You must update your contact information, as needed, through\n                    this\n                    website or by calling the Exchange Credit Program Call Center at 1‑877‑891‑STAR&nbsp;(7827). You may\n                    likewise withdraw consent at any time, with no charge or fee, in the same manner.\n                    Applicability of Consent - Prior to consenting, you understand that:\n                    1) Your consent applies to disclosures and notices regarding your credit card, any related servicing\n                    including your periodic statements, and any products or services associated with your credit card;\n                    2) Your consent applies to any other person named on your credit card account, subject to applicable\n                    law. The e-mail address you provide is that of an account owner who has authority to make\n                    transactions\n                    and act on behalf of the account;\n                    3) Electronic disclosures and notices may be provided by posting the information on our website\n                    where\n                    you access your credit card information, through e-mail, or by other electronic means;\n                    4) If you wish to receive a paper copy of the disclosure in addition to the electronic disclosure,\n                    you\n                    can obtain one free of charge by calling us or by writing us at the number or address listed below;\n                    To receive your legal notices electronically, your computer must be capable of printing or storing\n                    email, web pages and documents in PDF format and your browser must meet minimum system requirements.\n                    BY CLICKING ON \"SUBMIT\" YOU ACKNOWLEDGE THAT YOU CAN ACCESS, RECEIVE AND RETAIN THE DISCLOSURES AND\n                    NOTICES ELECTRONICALLY IN THE FORMATS WE USE, AND AFFIRMATIVELY CONSENT TO THE RECEIPT OF SUCH\n                    INFORMATION ELECTRONICALLY.\n                </div>\n            </div>\n\n        </tbody>\n    </table>\n\n</body>\n\n</html>',
                                  height: 150.0,
                                  verticalScroll: false,
                                  horizontalScroll: false,
                                  html: true,
                                ),
                              ),
                            ),
                          ),
                        if (widget.isPrimaryUser)
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                wrapWithModel(
                                  model: _model.commonCustomButtonModel,
                                  updateCallback: () => setState(() {}),
                                  child: CommonCustomButtonWidget(
                                    titile: 'Submit',
                                    isDisabled: (_model.preference
                                                ?.isLegalNoticeEmail ==
                                            _model.legalCheckboxValue) &&
                                        (_model.preference?.isStatementEmail ==
                                            _model.statementCheckboxValue) &&
                                        (_model.preference
                                                ?.isExchangeCreditPromotion ==
                                            _model.exchangeCheckboxValue),
                                    isEditIconVisible: false,
                                    onTap: () async {
                                      unawaited(
                                        () async {
                                          await action_blocks
                                              .showLoadingDialog(context);
                                        }(),
                                      );
                                      _model.updatePreferencesAPIRes =
                                          await ManageContactDetailsGroup
                                              .updatePreferencesCall
                                              .call(
                                        userId: currentUserUid,
                                        isStatementEmail:
                                            _model.statementCheckboxValue,
                                        isLegalNoticeEmail:
                                            _model.legalCheckboxValue,
                                        isExchangeCreditPromotion:
                                            _model.exchangeCheckboxValue,
                                        dynamicBaseURL:
                                            FFAppState().dynamicBaseURL,
                                      );
                                      if ((_model.updatePreferencesAPIRes
                                              ?.succeeded ??
                                          true)) {
                                        if ((_model.updatePreferencesAPIRes
                                                    ?.statusCode ??
                                                200) !=
                                            FFAppState().successStatusCode) {
                                          setState(() {
                                            _model.isSuccess = false;
                                            _model.isError = true;
                                          });
                                        } else {
                                          setState(() {
                                            _model.isSuccess = true;
                                            _model.isError = false;
                                            _model.successText = getJsonField(
                                              (_model.updatePreferencesAPIRes
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$''',
                                            ).toString();
                                          });
                                          _model.preferenceAPIRes1 =
                                              await ManageContactDetailsGroup
                                                  .preferencesCall
                                                  .call(
                                            userId: currentUserUid,
                                            dynamicBaseURL:
                                                FFAppState().dynamicBaseURL,
                                          );
                                          if ((_model.preferenceAPIRes1
                                                  ?.succeeded ??
                                              true)) {
                                            setState(() {
                                              _model.preference =
                                                  PreferenceStruct.maybeFromMap(
                                                      (_model.preferenceAPIRes1
                                                              ?.jsonBody ??
                                                          ''));
                                            });
                                            setState(() {
                                              _model.statementCheckboxValue =
                                                  valueOrDefault<bool>(
                                                ManageContactDetailsGroup
                                                    .preferencesCall
                                                    .isStatementEmail(
                                                  (_model.preferenceAPIRes1
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                false,
                                              );
                                            });
                                            setState(() {
                                              _model.legalCheckboxValue =
                                                  valueOrDefault<bool>(
                                                ManageContactDetailsGroup
                                                    .preferencesCall
                                                    .isLegalNoticeEmail(
                                                  (_model.preferenceAPIRes1
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                false,
                                              );
                                            });
                                            setState(() {
                                              _model.exchangeCheckboxValue =
                                                  valueOrDefault<bool>(
                                                ManageContactDetailsGroup
                                                    .preferencesCall
                                                    .isExchangeCreditPromotion(
                                                  (_model.preferenceAPIRes1
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                false,
                                              );
                                            });
                                          }
                                        }
                                      } else {
                                        setState(() {
                                          _model.isSuccess = false;
                                          _model.isError = true;
                                        });
                                      }

                                      Navigator.pop(context);

                                      setState(() {});
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).accent2,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/Info.png',
                                      width: 24.0,
                                      height: 24.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Any changes made to your contact information will automatically be applied to all Exchange Credit Program accounts where you are the primary account holder. Contact information may only be updated by the primary account holder.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Arial',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                              lineHeight: 1.2,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
          ),
        ],
      ),
    );
  }
}
