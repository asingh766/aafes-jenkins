import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/paperless_comp/paperless_comp_widget.dart';
import '/pages/home/components/select_statement_comp/select_statement_comp_widget.dart';
import 'statements_widget.dart' show StatementsWidget;
import 'package:flutter/material.dart';

class StatementsModel extends FlutterFlowModel<StatementsWidget> {
  ///  Local state fields for this component.

  List<String> dateList = [];
  void addToDateList(String item) => dateList.add(item);
  void removeFromDateList(String item) => dateList.remove(item);
  void removeAtIndexFromDateList(int index) => dateList.removeAt(index);
  void insertAtIndexInDateList(int index, String item) =>
      dateList.insert(index, item);
  void updateDateListAtIndex(int index, Function(String) updateFn) =>
      dateList[index] = updateFn(dateList[index]);

  ///  State fields for stateful widgets in this component.

  // Model for SelectStatementComp component.
  late SelectStatementCompModel selectStatementCompModel1;
  // Model for paperlessComp component.
  late PaperlessCompModel paperlessCompModel1;
  // Model for SelectStatementComp component.
  late SelectStatementCompModel selectStatementCompModel2;
  // Model for paperlessComp component.
  late PaperlessCompModel paperlessCompModel2;

  @override
  void initState(BuildContext context) {
    selectStatementCompModel1 =
        createModel(context, () => SelectStatementCompModel());
    paperlessCompModel1 = createModel(context, () => PaperlessCompModel());
    selectStatementCompModel2 =
        createModel(context, () => SelectStatementCompModel());
    paperlessCompModel2 = createModel(context, () => PaperlessCompModel());
  }

  @override
  void dispose() {
    selectStatementCompModel1.dispose();
    paperlessCompModel1.dispose();
    selectStatementCompModel2.dispose();
    paperlessCompModel2.dispose();
  }
}
