import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/no_datafound_table_text/no_datafound_table_text_widget.dart';
import '/pages/home/viewplan/view_plan_table_header/view_plan_table_header_widget.dart';
import 'view_plan_statement_widget.dart' show ViewPlanStatementWidget;
import 'package:flutter/material.dart';

class ViewPlanStatementModel extends FlutterFlowModel<ViewPlanStatementWidget> {
  ///  Local state fields for this page.

  List<dynamic> viewPlansList = [];
  void addToViewPlansList(dynamic item) => viewPlansList.add(item);
  void removeFromViewPlansList(dynamic item) => viewPlansList.remove(item);
  void removeAtIndexFromViewPlansList(int index) =>
      viewPlansList.removeAt(index);
  void insertAtIndexInViewPlansList(int index, dynamic item) =>
      viewPlansList.insert(index, item);
  void updateViewPlansListAtIndex(int index, Function(dynamic) updateFn) =>
      viewPlansList[index] = updateFn(viewPlansList[index]);

  bool? isLoading = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (View Plan)] action in ViewPlanStatement widget.
  ApiCallResponse? viewPlansAPIRes;
  // Model for viewPlanTableHeader component.
  late ViewPlanTableHeaderModel viewPlanTableHeaderModel1;
  // Model for NoDatafoundTableText component.
  late NoDatafoundTableTextModel noDatafoundTableTextModel1;
  // Model for Footer component.
  late FooterModel footerModel1;
  // Model for Header component.
  late HeaderModel headerModel1;
  // Model for Header component.
  late HeaderModel headerModel2;
  // Model for viewPlanTableHeader component.
  late ViewPlanTableHeaderModel viewPlanTableHeaderModel2;
  // Model for NoDatafoundTableText component.
  late NoDatafoundTableTextModel noDatafoundTableTextModel2;
  // Model for Footer component.
  late FooterModel footerModel2;

  @override
  void initState(BuildContext context) {
    viewPlanTableHeaderModel1 =
        createModel(context, () => ViewPlanTableHeaderModel());
    noDatafoundTableTextModel1 =
        createModel(context, () => NoDatafoundTableTextModel());
    footerModel1 = createModel(context, () => FooterModel());
    headerModel1 = createModel(context, () => HeaderModel());
    headerModel2 = createModel(context, () => HeaderModel());
    viewPlanTableHeaderModel2 =
        createModel(context, () => ViewPlanTableHeaderModel());
    noDatafoundTableTextModel2 =
        createModel(context, () => NoDatafoundTableTextModel());
    footerModel2 = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    viewPlanTableHeaderModel1.dispose();
    noDatafoundTableTextModel1.dispose();
    footerModel1.dispose();
    headerModel1.dispose();
    headerModel2.dispose();
    viewPlanTableHeaderModel2.dispose();
    noDatafoundTableTextModel2.dispose();
    footerModel2.dispose();
  }
}
