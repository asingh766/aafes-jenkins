import '/backend/api_requests/api_calls.dart';
import '/components/common_circular_indicator/common_circular_indicator_widget.dart';
import '/components/confirmation_dailog/confirmation_dailog_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/my_account/account_menu_options/update_banking_profile/banking_profile_form/banking_profile_form_widget.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'update_banking_profile_model.dart';
export 'update_banking_profile_model.dart';

class UpdateBankingProfileWidget extends StatefulWidget {
  const UpdateBankingProfileWidget({super.key});

  @override
  State<UpdateBankingProfileWidget> createState() =>
      _UpdateBankingProfileWidgetState();
}

class _UpdateBankingProfileWidgetState
    extends State<UpdateBankingProfileWidget> {
  late UpdateBankingProfileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpdateBankingProfileModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await _model.reloadData(context);
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
                      'Update Banking Profile',
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
          Builder(
            builder: (context) {
              if (_model.loading || _model.isError) {
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
                      if (_model.loading == true) {
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
                                setState(() {
                                  _model.isError = false;
                                });
                                await _model.reloadData(context);
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
              } else if (_model.isEditing) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: wrapWithModel(
                      model: _model.bankingProfileFormModel,
                      updateCallback: () => setState(() {}),
                      child: BankingProfileFormWidget(
                        title: _model.isEditingTitle,
                        isEdit:
                            _model.selectedBankProfile != null ? true : false,
                        selectedBankProfile: _model.selectedBankProfile,
                        otherBankProfile: _model.selectedBankProfile != null
                            ? (_model.selectedAccount!.bankProfiles
                                        .where((e) =>
                                            e.profileNumber !=
                                            _model.selectedBankProfile
                                                ?.profileNumber)
                                        .toList().isNotEmpty
                                ? ((String profileName, String last4) {
                                    return "$profileName (....$last4)";
                                  }(
                                    _model.selectedAccount!.bankProfiles
                                        .where((e) =>
                                            e.profileNumber !=
                                            _model.selectedBankProfile
                                                ?.profileNumber)
                                        .toList()
                                        .first
                                        .profileName,
                                    _model.selectedAccount!.bankProfiles
                                        .where((e) =>
                                            e.profileNumber !=
                                            _model.selectedBankProfile
                                                ?.profileNumber)
                                        .toList()
                                        .first
                                        .bankAccountNoLast4))
                                : '')
                            : (_model.selectedAccount!.bankProfiles.isNotEmpty
                                ? ((String profileName, String last4) {
                                    return "$profileName (....$last4)";
                                  }(
                                    _model.selectedAccount!.bankProfiles.first
                                        .profileName,
                                    _model.selectedAccount!.bankProfiles.first
                                        .bankAccountNoLast4))
                                : ''),
                        selectedAccount: _model.selectedAccount!.accountNumber,
                        onCancel: (option) async {
                          setState(() {
                            _model.isEditing = false;
                            _model.isEditingTitle = '';
                            _model.selectedBankProfile = null;
                            _model.isOtherBank = null;
                            _model.selectedAccount = null;
                            _model.successOption = option;
                          });
                        },
                        onRefresh: () async {
                          await _model.reloadData(context);
                          setState(() {});
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                );
              } else {
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (_model.successOption != null &&
                        _model.successOption != '')
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 0.0),
                        child: Container(
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
                              () {
                                if (_model.successOption == 'create') {
                                  return 'Your profile has been successfully added.';
                                } else if (_model.successOption == 'delete') {
                                  return 'Payment profile has been successfully deleted.';
                                } else {
                                  return 'Your profile has been successfully updated.';
                                }
                              }(),
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
                      ),
                    Builder(
                      builder: (context) {
                        final bankingDetails =
                            _model.bankingProfiles.map((e) => e).toList();
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(bankingDetails.length,
                              (bankingDetailsIndex) {
                            final bankingDetailsItem =
                                bankingDetails[bankingDetailsIndex];
                            return Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .accent2,
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
                                            (String description,
                                                    String accountNumber,
                                                    bool isPrimary) {
                                              return "$description (....$accountNumber) - ${isPrimary
                                                      ? "Primary User"
                                                      : "Authorized User"}";
                                            }(
                                                bankingDetailsItem
                                                    .productTypeDesc,
                                                bankingDetailsItem
                                                    .accountNoLast4,
                                                bankingDetailsItem
                                                    .isPrimaryUser),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily: 'Arial',
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                          ),
                                          child: Builder(
                                            builder: (context) {
                                              if (!bankingDetailsItem
                                                  .isAccountBlocked) {
                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Builder(
                                                      builder: (context) {
                                                        final bankingProfile =
                                                            bankingDetailsItem
                                                                .bankProfiles
                                                                .toList();
                                                        return Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: List.generate(
                                                              bankingProfile
                                                                  .length,
                                                              (bankingProfileIndex) {
                                                            final bankingProfileItem =
                                                                bankingProfile[
                                                                    bankingProfileIndex];
                                                            return Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Expanded(
                                                                  child: Text(
                                                                    (String last4,
                                                                            String
                                                                                profileName) {
                                                                      return "$profileName (....$last4)";
                                                                    }(
                                                                        bankingProfileItem
                                                                            .bankAccountNoLast4,
                                                                        bankingProfileItem
                                                                            .profileName),
                                                                    style: FlutterFlowTheme.of(
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
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          setState(
                                                                              () {
                                                                            _model.isEditing =
                                                                                true;
                                                                            _model.isEditingTitle = (String description,
                                                                                String accountNumber,
                                                                                bool isPrimary) {
                                                                              return "$description (....$accountNumber) - ${isPrimary ? "Primary User" : "Authorized User"}";
                                                                            }(bankingDetailsItem.productTypeDesc, bankingDetailsItem.accountNoLast4, bankingDetailsItem.isPrimaryUser);
                                                                            _model.selectedBankProfile =
                                                                                bankingProfileItem;
                                                                            _model.selectedAccount =
                                                                                bankingDetailsItem;
                                                                            _model.successOption =
                                                                                null;
                                                                          });
                                                                          setState(
                                                                              () {
                                                                            _model.bankingProfileFormModel.radioButtonValueController?.value = (bankingProfileItem.accountTypeCode == 'C'
                                                                                ? 'Checking'
                                                                                : 'Savings');
                                                                          });
                                                                        },
                                                                        child:
                                                                            Text(
                                                                          'Edit',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Arial',
                                                                                color: const Color(0xFF0000FF),
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height:
                                                                            20.0,
                                                                        child:
                                                                            VerticalDivider(
                                                                          thickness:
                                                                              1.5,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                        ),
                                                                      ),
                                                                      Builder(
                                                                        builder:
                                                                            (context) =>
                                                                                InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            setState(() {
                                                                              _model.successOption = null;
                                                                            });
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (dialogContext) {
                                                                                return Dialog(
                                                                                  elevation: 0,
                                                                                  insetPadding: EdgeInsets.zero,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                  child: WebViewAware(
                                                                                    child: SizedBox(
                                                                                      height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                      width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                      child: ConfirmationDailogWidget(
                                                                                        title: 'Delete Payment Profile',
                                                                                        content: 'You are about to delete a payment profile and associated account number. Any scheduled payments using this payment profile will be canceled.${'\n\n'}Press CONFIRM to continue or CANCEL to stop this action. ',
                                                                                        onConfirm: () async {
                                                                                          Navigator.pop(context);
                                                                                          unawaited(
                                                                                            () async {
                                                                                              await action_blocks.showLoadingDialog(context);
                                                                                            }(),
                                                                                          );
                                                                                          _model.deleteBankingProfile = await BankingProfileGroup.deleteBankingProfileCall.call(
                                                                                            userId: FFAppState().selectedUserId.toString(),
                                                                                            accountNo: bankingDetailsItem.accountNumber,
                                                                                            profileNo: bankingProfileItem.profileNumber,
                                                                                            dynamicBaseURL: FFAppState().dynamicBaseURL,
                                                                                          );
                                                                                          if ((_model.deleteBankingProfile?.succeeded ?? true)) {
                                                                                            await _model.reloadData(context);
                                                                                            _model.updatePage(() {
                                                                                              _model.successOption = 'delete';
                                                                                            });
                                                                                          }
                                                                                          setState(() {});
                                                                                          Navigator.pop(context);
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                setState(() {}));

                                                                            setState(() {});
                                                                          },
                                                                          child:
                                                                              Text(
                                                                            'Delete',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Arial',
                                                                                  color: const Color(0xFF0000FF),
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  width: 8.0)),
                                                            );
                                                          }).divide(const SizedBox(
                                                              height: 16.0)),
                                                        );
                                                      },
                                                    ),
                                                    if (bankingDetailsItem
                                                            .bankProfiles
                                                            .length <
                                                        2)
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          setState(() {
                                                            _model.isEditing =
                                                                true;
                                                            _model.selectedAccount =
                                                                bankingDetailsItem;
                                                            _model
                                                                .isEditingTitle = (String
                                                                        description,
                                                                    String
                                                                        accountNumber,
                                                                    bool
                                                                        isPrimary) {
                                                              return "$description (....$accountNumber) - ${isPrimary
                                                                      ? "Primary User"
                                                                      : "Authorized User"}";
                                                            }(
                                                                bankingDetailsItem
                                                                    .productTypeDesc,
                                                                bankingDetailsItem
                                                                    .accountNoLast4,
                                                                bankingDetailsItem
                                                                    .isPrimaryUser);
                                                            _model.successOption =
                                                                null;
                                                          });
                                                          setState(() {
                                                            _model
                                                                .bankingProfileFormModel
                                                                .radioButtonValueController
                                                                ?.value = '';
                                                          });
                                                        },
                                                        child: Text(
                                                          'Add New Bank Account',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Arial',
                                                                color: const Color(
                                                                    0xFF0000FF),
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                      ),
                                                  ].divide(
                                                      const SizedBox(height: 16.0)),
                                                );
                                              } else {
                                                return Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 8.0, 0.0, 8.0),
                                                  child: Text(
                                                    'This account is ineligible for online payments.',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Arial',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                );
                                              }
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                        );
                      },
                    ),
                  ],
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
