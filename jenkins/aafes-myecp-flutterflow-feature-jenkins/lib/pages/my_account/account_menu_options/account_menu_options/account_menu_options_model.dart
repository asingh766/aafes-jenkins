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
import 'account_menu_options_widget.dart' show AccountMenuOptionsWidget;
import 'package:flutter/material.dart';

class AccountMenuOptionsModel
    extends FlutterFlowModel<AccountMenuOptionsWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for securityAlerts component.
  late SecurityAlertsModel securityAlertsModel;
  // Model for updateUserPassword component.
  late UpdateUserPasswordModel updateUserPasswordModel;
  // Model for updateSecurityQuestions component.
  late UpdateSecurityQuestionsModel updateSecurityQuestionsModel;
  // Model for CommunicationPreferenceComp component.
  late CommunicationPreferenceCompModel communicationPreferenceCompModel;
  // Model for UpdateAddressComp component.
  late UpdateAddressCompModel updateAddressCompModel;
  // Model for UpdateEmailAddressComp component.
  late UpdateEmailAddressCompModel updateEmailAddressCompModel;
  // Model for UpdatePhoneNumberComp component.
  late UpdatePhoneNumberCompModel updatePhoneNumberCompModel;
  // Model for Added2FASecComp component.
  late Added2FASecCompModel added2FASecCompModel;
  // Model for updateBankingProfile component.
  late UpdateBankingProfileModel updateBankingProfileModel;

  @override
  void initState(BuildContext context) {
    securityAlertsModel = createModel(context, () => SecurityAlertsModel());
    updateUserPasswordModel =
        createModel(context, () => UpdateUserPasswordModel());
    updateSecurityQuestionsModel =
        createModel(context, () => UpdateSecurityQuestionsModel());
    communicationPreferenceCompModel =
        createModel(context, () => CommunicationPreferenceCompModel());
    updateAddressCompModel =
        createModel(context, () => UpdateAddressCompModel());
    updateEmailAddressCompModel =
        createModel(context, () => UpdateEmailAddressCompModel());
    updatePhoneNumberCompModel =
        createModel(context, () => UpdatePhoneNumberCompModel());
    added2FASecCompModel = createModel(context, () => Added2FASecCompModel());
    updateBankingProfileModel =
        createModel(context, () => UpdateBankingProfileModel());
  }

  @override
  void dispose() {
    securityAlertsModel.dispose();
    updateUserPasswordModel.dispose();
    updateSecurityQuestionsModel.dispose();
    communicationPreferenceCompModel.dispose();
    updateAddressCompModel.dispose();
    updateEmailAddressCompModel.dispose();
    updatePhoneNumberCompModel.dispose();
    added2FASecCompModel.dispose();
    updateBankingProfileModel.dispose();
  }
}
