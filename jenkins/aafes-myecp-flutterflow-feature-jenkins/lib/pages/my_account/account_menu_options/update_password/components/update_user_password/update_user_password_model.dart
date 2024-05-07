import '/flutter_flow/flutter_flow_util.dart';
import '/pages/my_account/account_menu_options/update_password/components/manage_password_static/manage_password_static_widget.dart';
import '/pages/my_account/account_menu_options/update_password/components/new_password/new_password_widget.dart';
import '/pages/my_account/update_email_address/added2_f_a_sec_comp/added2_f_a_sec_comp_widget.dart';
import 'update_user_password_widget.dart' show UpdateUserPasswordWidget;
import 'package:flutter/material.dart';

class UpdateUserPasswordModel
    extends FlutterFlowModel<UpdateUserPasswordWidget> {
  ///  Local state fields for this component.

  bool isEdit = false;

  bool isSuccess = false;

  bool? isTwoFactAuth = false;

  ///  State fields for stateful widgets in this component.

  // Model for managePasswordStatic component.
  late ManagePasswordStaticModel managePasswordStaticModel;
  // Model for newPassword component.
  late NewPasswordModel newPasswordModel;
  // Model for Added2FASecComp component.
  late Added2FASecCompModel added2FASecCompModel;

  @override
  void initState(BuildContext context) {
    managePasswordStaticModel =
        createModel(context, () => ManagePasswordStaticModel());
    newPasswordModel = createModel(context, () => NewPasswordModel());
    added2FASecCompModel = createModel(context, () => Added2FASecCompModel());
  }

  @override
  void dispose() {
    managePasswordStaticModel.dispose();
    newPasswordModel.dispose();
    added2FASecCompModel.dispose();
  }
}
