import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_dashboard_widget.dart' show HomeDashboardWidget;
import 'package:flutter/material.dart';

class HomeDashboardModel extends FlutterFlowModel<HomeDashboardWidget> {
  ///  Local state fields for this page.

  int selectedIndex = 0;

  int militaryIndex = 0;

  List<dynamic> recentActivityList = [];
  void addToRecentActivityList(dynamic item) => recentActivityList.add(item);
  void removeFromRecentActivityList(dynamic item) =>
      recentActivityList.remove(item);
  void removeAtIndexFromRecentActivityList(int index) =>
      recentActivityList.removeAt(index);
  void insertAtIndexInRecentActivityList(int index, dynamic item) =>
      recentActivityList.insert(index, item);
  void updateRecentActivityListAtIndex(int index, Function(dynamic) updateFn) =>
      recentActivityList[index] = updateFn(recentActivityList[index]);

  List<dynamic> paymentHistoryList = [];
  void addToPaymentHistoryList(dynamic item) => paymentHistoryList.add(item);
  void removeFromPaymentHistoryList(dynamic item) =>
      paymentHistoryList.remove(item);
  void removeAtIndexFromPaymentHistoryList(int index) =>
      paymentHistoryList.removeAt(index);
  void insertAtIndexInPaymentHistoryList(int index, dynamic item) =>
      paymentHistoryList.insert(index, item);
  void updatePaymentHistoryListAtIndex(int index, Function(dynamic) updateFn) =>
      paymentHistoryList[index] = updateFn(paymentHistoryList[index]);

  List<dynamic> rewardPointsList = [];
  void addToRewardPointsList(dynamic item) => rewardPointsList.add(item);
  void removeFromRewardPointsList(dynamic item) =>
      rewardPointsList.remove(item);
  void removeAtIndexFromRewardPointsList(int index) =>
      rewardPointsList.removeAt(index);
  void insertAtIndexInRewardPointsList(int index, dynamic item) =>
      rewardPointsList.insert(index, item);
  void updateRewardPointsListAtIndex(int index, Function(dynamic) updateFn) =>
      rewardPointsList[index] = updateFn(rewardPointsList[index]);

  List<dynamic> statementsList = [];
  void addToStatementsList(dynamic item) => statementsList.add(item);
  void removeFromStatementsList(dynamic item) => statementsList.remove(item);
  void removeAtIndexFromStatementsList(int index) =>
      statementsList.removeAt(index);
  void insertAtIndexInStatementsList(int index, dynamic item) =>
      statementsList.insert(index, item);
  void updateStatementsListAtIndex(int index, Function(dynamic) updateFn) =>
      statementsList[index] = updateFn(statementsList[index]);

  List<String> statementDateList = [];
  void addToStatementDateList(String item) => statementDateList.add(item);
  void removeFromStatementDateList(String item) =>
      statementDateList.remove(item);
  void removeAtIndexFromStatementDateList(int index) =>
      statementDateList.removeAt(index);
  void insertAtIndexInStatementDateList(int index, String item) =>
      statementDateList.insert(index, item);
  void updateStatementDateListAtIndex(int index, Function(String) updateFn) =>
      statementDateList[index] = updateFn(statementDateList[index]);

  List<AccountStruct> accounts = [];
  void addToAccounts(AccountStruct item) => accounts.add(item);
  void removeFromAccounts(AccountStruct item) => accounts.remove(item);
  void removeAtIndexFromAccounts(int index) => accounts.removeAt(index);
  void insertAtIndexInAccounts(int index, AccountStruct item) =>
      accounts.insert(index, item);
  void updateAccountsAtIndex(int index, Function(AccountStruct) updateFn) =>
      accounts[index] = updateFn(accounts[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Account Summary)] action in HomeDashboard widget.
  ApiCallResponse? accountSummaryApiRes;
  // Stores action output result for [Action Block - rewardPointsAPI] action in Text widget.
  List<dynamic>? rewardPointsWebVIewPointAPIRes;
  // Stores action output result for [Action Block - recentActivityAPICall] action in RecentActivityContainer widget.
  List<dynamic>? recentActivityABRes;
  // Stores action output result for [Action Block - paymentHistoryList] action in PaymentHistoryContainer widget.
  List<dynamic>? paymentHistoryListWebABRes;
  // Stores action output result for [Action Block - statementAPICall] action in StatementsContainer widget.
  List<dynamic>? statementWebAPIRes;
  // Stores action output result for [Action Block - rewardPointsAPI] action in RewardsActivityContainer widget.
  List<dynamic>? rewardPointsWebAPIRes;
  // Model for Footer component.
  late FooterModel footerModel1;
  // Model for Header component.
  late HeaderModel headerModel1;
  // Model for Header component.
  late HeaderModel headerModel2;
  // Stores action output result for [Action Block - rewardPointsAPI] action in Text widget.
  List<dynamic>? rewardPointsMobileVIewPointAPIRes;
  // Stores action output result for [Action Block - rewardPointsAPI] action in Text widget.
  List<dynamic>? rewardPointsWebVIewPointAPIResCopy;
  // Stores action output result for [Action Block - recentActivityAPICall] action in Container widget.
  List<dynamic>? recentActivityABMobileRes;
  // Stores action output result for [Action Block - paymentHistoryList] action in Container widget.
  List<dynamic>? paymentHistoryListMobileABRes;
  // Stores action output result for [Action Block - statementAPICall] action in Container widget.
  List<dynamic>? statementMobileAPIRes;
  // Stores action output result for [Action Block - rewardPointsAPI] action in Container widget.
  List<dynamic>? rewardPointsMobileAPIRes;
  // Model for Footer component.
  late FooterModel footerModel2;

  @override
  void initState(BuildContext context) {
    footerModel1 = createModel(context, () => FooterModel());
    headerModel1 = createModel(context, () => HeaderModel());
    headerModel2 = createModel(context, () => HeaderModel());
    footerModel2 = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    footerModel1.dispose();
    headerModel1.dispose();
    headerModel2.dispose();
    footerModel2.dispose();
  }
}
