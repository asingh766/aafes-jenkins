import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/components/success_banner_filled/success_banner_filled_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'manage_auth_users_step14_widget.dart' show ManageAuthUsersStep14Widget;
import 'package:flutter/material.dart';

class ManageAuthUsersStep14Model
    extends FlutterFlowModel<ManageAuthUsersStep14Widget> {
  ///  Local state fields for this component.

  List<AuthorisedUserStruct> authUsers = [];
  void addToAuthUsers(AuthorisedUserStruct item) => authUsers.add(item);
  void removeFromAuthUsers(AuthorisedUserStruct item) => authUsers.remove(item);
  void removeAtIndexFromAuthUsers(int index) => authUsers.removeAt(index);
  void insertAtIndexInAuthUsers(int index, AuthorisedUserStruct item) =>
      authUsers.insert(index, item);
  void updateAuthUsersAtIndex(
          int index, Function(AuthorisedUserStruct) updateFn) =>
      authUsers[index] = updateFn(authUsers[index]);

  bool success = false;

  int authUsersCount = 0;

  String errorAPI = ' ';

  bool hasErrorAPI = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Authorised Users)] action in ManageAuthUsersStep_1_4 widget.
  ApiCallResponse? apiResultAuthUsersD;
  // Model for SuccessBannerFilled component.
  late SuccessBannerFilledModel successBannerFilledModel;
  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel;

  @override
  void initState(BuildContext context) {
    successBannerFilledModel =
        createModel(context, () => SuccessBannerFilledModel());
    errorBannerOutlinedModel =
        createModel(context, () => ErrorBannerOutlinedModel());
    commonCustomButtonModel =
        createModel(context, () => CommonCustomButtonModel());
  }

  @override
  void dispose() {
    successBannerFilledModel.dispose();
    errorBannerOutlinedModel.dispose();
    commonCustomButtonModel.dispose();
  }
}
