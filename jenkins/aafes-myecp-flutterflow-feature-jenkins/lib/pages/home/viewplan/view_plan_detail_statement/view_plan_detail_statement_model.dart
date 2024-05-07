import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/viewplan/view_plan_table_header/view_plan_table_header_widget.dart';
import '/pages/home/viewplan/view_plan_table_row/view_plan_table_row_widget.dart';
import 'view_plan_detail_statement_widget.dart'
    show ViewPlanDetailStatementWidget;
import 'package:flutter/material.dart';

class ViewPlanDetailStatementModel
    extends FlutterFlowModel<ViewPlanDetailStatementWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for viewPlanTableHeader component.
  late ViewPlanTableHeaderModel viewPlanTableHeaderModel1;
  // Model for viewPlanTableRow component.
  late ViewPlanTableRowModel viewPlanTableRowModel1;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel1;
  // Model for Footer component.
  late FooterModel footerModel1;
  // Model for Header component.
  late HeaderModel headerModel1;
  // Model for Header component.
  late HeaderModel headerModel2;
  // Model for viewPlanTableHeader component.
  late ViewPlanTableHeaderModel viewPlanTableHeaderModel2;
  // Model for viewPlanTableRow component.
  late ViewPlanTableRowModel viewPlanTableRowModel2;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel2;
  // Model for Footer component.
  late FooterModel footerModel2;

  @override
  void initState(BuildContext context) {
    viewPlanTableHeaderModel1 =
        createModel(context, () => ViewPlanTableHeaderModel());
    viewPlanTableRowModel1 =
        createModel(context, () => ViewPlanTableRowModel());
    commonCustomButtonModel1 =
        createModel(context, () => CommonCustomButtonModel());
    footerModel1 = createModel(context, () => FooterModel());
    headerModel1 = createModel(context, () => HeaderModel());
    headerModel2 = createModel(context, () => HeaderModel());
    viewPlanTableHeaderModel2 =
        createModel(context, () => ViewPlanTableHeaderModel());
    viewPlanTableRowModel2 =
        createModel(context, () => ViewPlanTableRowModel());
    commonCustomButtonModel2 =
        createModel(context, () => CommonCustomButtonModel());
    footerModel2 = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    viewPlanTableHeaderModel1.dispose();
    viewPlanTableRowModel1.dispose();
    commonCustomButtonModel1.dispose();
    footerModel1.dispose();
    headerModel1.dispose();
    headerModel2.dispose();
    viewPlanTableHeaderModel2.dispose();
    viewPlanTableRowModel2.dispose();
    commonCustomButtonModel2.dispose();
    footerModel2.dispose();
  }
}
