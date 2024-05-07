import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/my_account/account_menu_options/account_menu_options/account_menu_options_widget.dart';
import '/pages/my_account/manage_contact_details/m_c_common_drawer/m_c_common_drawer_widget.dart';
import 'manage_contact_details_widget.dart' show ManageContactDetailsWidget;
import 'package:flutter/material.dart';

class ManageContactDetailsModel
    extends FlutterFlowModel<ManageContactDetailsWidget> {
  ///  Local state fields for this page.

  double? bodyHeightMobile;

  double? bodyHeightDesktop = 0.0;

  bool isPrimaryUser = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (isPrimary User)] action in ManageContactDetails widget.
  ApiCallResponse? primaryUserApi;
  // Model for MCCommonDrawer component.
  late MCCommonDrawerModel mCCommonDrawerModel1;
  // Model for accountMenuOptions component.
  late AccountMenuOptionsModel accountMenuOptionsModel1;
  // Model for Footer component.
  late FooterModel footerModel1;
  // Model for Header component.
  late HeaderModel headerModel1;
  // Model for Header component.
  late HeaderModel headerModel2;
  // Model for MCCommonDrawer component.
  late MCCommonDrawerModel mCCommonDrawerModel2;
  // Model for accountMenuOptions component.
  late AccountMenuOptionsModel accountMenuOptionsModel2;
  // Model for Footer component.
  late FooterModel footerModel2;

  @override
  void initState(BuildContext context) {
    mCCommonDrawerModel1 = createModel(context, () => MCCommonDrawerModel());
    accountMenuOptionsModel1 =
        createModel(context, () => AccountMenuOptionsModel());
    footerModel1 = createModel(context, () => FooterModel());
    headerModel1 = createModel(context, () => HeaderModel());
    headerModel2 = createModel(context, () => HeaderModel());
    mCCommonDrawerModel2 = createModel(context, () => MCCommonDrawerModel());
    accountMenuOptionsModel2 =
        createModel(context, () => AccountMenuOptionsModel());
    footerModel2 = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mCCommonDrawerModel1.dispose();
    accountMenuOptionsModel1.dispose();
    footerModel1.dispose();
    headerModel1.dispose();
    headerModel2.dispose();
    mCCommonDrawerModel2.dispose();
    accountMenuOptionsModel2.dispose();
    footerModel2.dispose();
  }
}
