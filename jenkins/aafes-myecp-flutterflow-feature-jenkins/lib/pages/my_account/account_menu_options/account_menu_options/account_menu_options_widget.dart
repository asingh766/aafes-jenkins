import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/my_account/account_menu_options/manage_account_alerts/security_alerts/security_alerts_widget.dart';
import '/pages/my_account/account_menu_options/update_banking_profile/update_banking_profile/update_banking_profile_widget.dart';
import '/pages/my_account/account_menu_options/update_password/components/update_user_password/update_user_password_widget.dart';
import '/pages/my_account/account_menu_options/update_security_questions/update_security_questions/update_security_questions_widget.dart';
import '/pages/my_account/communication_preferences/communication_preference_comp/communication_preference_comp_widget.dart';
import '/pages/my_account/update_address_screen/update_address_comp/update_address_comp_widget.dart';
import '/pages/my_account/update_email_address/added2_f_a_sec_comp/added2_f_a_sec_comp_widget.dart';
import '/pages/my_account/update_email_address/update_email_address_comp/update_email_address_comp_widget.dart';
import '/pages/my_account/update_phone_number/update_phone_number_comp/update_phone_number_comp_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'account_menu_options_model.dart';
export 'account_menu_options_model.dart';

class AccountMenuOptionsWidget extends StatefulWidget {
  const AccountMenuOptionsWidget({
    super.key,
    bool? isPrimaryUser,
  }) : isPrimaryUser = isPrimaryUser ?? false;

  final bool isPrimaryUser;

  @override
  State<AccountMenuOptionsWidget> createState() =>
      _AccountMenuOptionsWidgetState();
}

class _AccountMenuOptionsWidgetState extends State<AccountMenuOptionsWidget> {
  late AccountMenuOptionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountMenuOptionsModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(
          0.0,
          valueOrDefault<double>(
            () {
              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                return 16.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                return 0.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                return 0.0;
              } else {
                return 0.0;
              }
            }(),
            0.0,
          ),
          0.0,
          0.0),
      child: Builder(
        builder: (context) {
          if (FFAppState().selectedMCDrawerIndex == 5) {
            return wrapWithModel(
              model: _model.securityAlertsModel,
              updateCallback: () => setState(() {}),
              child: SecurityAlertsWidget(
                isPrimaryUser: widget.isPrimaryUser,
              ),
            );
          } else if (FFAppState().selectedMCDrawerIndex == 6) {
            return wrapWithModel(
              model: _model.updateUserPasswordModel,
              updateCallback: () => setState(() {}),
              child: UpdateUserPasswordWidget(
                onEdit: () async {},
              ),
            );
          } else if (FFAppState().selectedMCDrawerIndex == 7) {
            return wrapWithModel(
              model: _model.updateSecurityQuestionsModel,
              updateCallback: () => setState(() {}),
              child: const UpdateSecurityQuestionsWidget(),
            );
          } else if (FFAppState().selectedMCDrawerIndex == 4) {
            return wrapWithModel(
              model: _model.communicationPreferenceCompModel,
              updateCallback: () => setState(() {}),
              child: CommunicationPreferenceCompWidget(
                isPrimaryUser: widget.isPrimaryUser,
              ),
            );
          } else if (FFAppState().selectedMCDrawerIndex == 1) {
            return wrapWithModel(
              model: _model.updateAddressCompModel,
              updateCallback: () => setState(() {}),
              child: UpdateAddressCompWidget(
                isPrimaryUser: widget.isPrimaryUser,
              ),
            );
          } else if (FFAppState().selectedMCDrawerIndex == 2) {
            return wrapWithModel(
              model: _model.updateEmailAddressCompModel,
              updateCallback: () => setState(() {}),
              child: const UpdateEmailAddressCompWidget(),
            );
          } else if (FFAppState().selectedMCDrawerIndex == 3) {
            return wrapWithModel(
              model: _model.updatePhoneNumberCompModel,
              updateCallback: () => setState(() {}),
              child: const UpdatePhoneNumberCompWidget(),
            );
          } else if (FFAppState().selectedMCDrawerIndex == 9) {
            return wrapWithModel(
              model: _model.added2FASecCompModel,
              updateCallback: () => setState(() {}),
              child: Added2FASecCompWidget(
                isFromManageUserDetails: false,
                confirmCallBack: () async {},
                cancelCallBack: () async {},
              ),
            );
          } else if (FFAppState().selectedMCDrawerIndex == 8) {
            return wrapWithModel(
              model: _model.updateBankingProfileModel,
              updateCallback: () => setState(() {}),
              child: const UpdateBankingProfileWidget(),
            );
          } else {
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
                              'My Profile',
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
                  Container(
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.sizeOf(context).height * 0.52,
                    ),
                    decoration: const BoxDecoration(),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/McPlaceholder.png',
                        height: MediaQuery.sizeOf(context).height * 0.4,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ].addToEnd(const SizedBox(height: 16.0)),
              ),
            );
          }
        },
      ),
    );
  }
}
