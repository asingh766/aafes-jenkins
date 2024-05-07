import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/account_summary_banner/account_summary_banner_widget.dart';
import '/pages/manage_user/components/manage_auth_users_step2/manage_auth_users_step2_widget.dart';
import '/pages/manage_user/components/manage_auth_users_step3/manage_auth_users_step3_widget.dart';
import '/pages/manage_user/components/manage_auth_users_step_1_4/manage_auth_users_step14_widget.dart';
import 'manage_user_page_widget.dart' show ManageUserPageWidget;
import 'package:flutter/material.dart';

class ManageUserPageModel extends FlutterFlowModel<ManageUserPageWidget> {
  ///  Local state fields for this page.

  int pageStep = 0;

  bool addUserSuccess = false;

  List<String> addressList = [];
  void addToAddressList(String item) => addressList.add(item);
  void removeFromAddressList(String item) => addressList.remove(item);
  void removeAtIndexFromAddressList(int index) => addressList.removeAt(index);
  void insertAtIndexInAddressList(int index, String item) =>
      addressList.insert(index, item);
  void updateAddressListAtIndex(int index, Function(String) updateFn) =>
      addressList[index] = updateFn(addressList[index]);

  dynamic addressJson;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AccountSummaryBanner component.
  late AccountSummaryBannerModel accountSummaryBannerModel1;
  // Model for ManageAuthUsersStep1.
  late ManageAuthUsersStep14Model manageAuthUsersStep1Model1;
  // Model for ManageAuthUsersStep2 component.
  late ManageAuthUsersStep2Model manageAuthUsersStep2Model1;
  // Model for ManageAuthUsersStep3 component.
  late ManageAuthUsersStep3Model manageAuthUsersStep3Model1;
  // Model for Footer component.
  late FooterModel footerModel1;
  // Model for Header component.
  late HeaderModel headerModel1;
  // Model for Header component.
  late HeaderModel headerModel2;
  // Model for AccountSummaryBanner component.
  late AccountSummaryBannerModel accountSummaryBannerModel2;
  // Model for ManageAuthUsersStep1.
  late ManageAuthUsersStep14Model manageAuthUsersStep1Model2;
  // Model for ManageAuthUsersStep2 component.
  late ManageAuthUsersStep2Model manageAuthUsersStep2Model2;
  // Model for ManageAuthUsersStep3 component.
  late ManageAuthUsersStep3Model manageAuthUsersStep3Model2;
  // Model for Footer component.
  late FooterModel footerModel2;

  @override
  void initState(BuildContext context) {
    accountSummaryBannerModel1 =
        createModel(context, () => AccountSummaryBannerModel());
    manageAuthUsersStep1Model1 =
        createModel(context, () => ManageAuthUsersStep14Model());
    manageAuthUsersStep2Model1 =
        createModel(context, () => ManageAuthUsersStep2Model());
    manageAuthUsersStep3Model1 =
        createModel(context, () => ManageAuthUsersStep3Model());
    footerModel1 = createModel(context, () => FooterModel());
    headerModel1 = createModel(context, () => HeaderModel());
    headerModel2 = createModel(context, () => HeaderModel());
    accountSummaryBannerModel2 =
        createModel(context, () => AccountSummaryBannerModel());
    manageAuthUsersStep1Model2 =
        createModel(context, () => ManageAuthUsersStep14Model());
    manageAuthUsersStep2Model2 =
        createModel(context, () => ManageAuthUsersStep2Model());
    manageAuthUsersStep3Model2 =
        createModel(context, () => ManageAuthUsersStep3Model());
    footerModel2 = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    accountSummaryBannerModel1.dispose();
    manageAuthUsersStep1Model1.dispose();
    manageAuthUsersStep2Model1.dispose();
    manageAuthUsersStep3Model1.dispose();
    footerModel1.dispose();
    headerModel1.dispose();
    headerModel2.dispose();
    accountSummaryBannerModel2.dispose();
    manageAuthUsersStep1Model2.dispose();
    manageAuthUsersStep2Model2.dispose();
    manageAuthUsersStep3Model2.dispose();
    footerModel2.dispose();
  }
}
