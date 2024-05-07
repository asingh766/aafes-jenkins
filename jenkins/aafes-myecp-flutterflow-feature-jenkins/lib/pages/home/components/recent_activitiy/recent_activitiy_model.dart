import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/no_datafound_table_text/no_datafound_table_text_widget.dart';
import '/pages/home/components/recent_activity_column_table/recent_activity_column_table_widget.dart';
import 'recent_activitiy_widget.dart' show RecentActivitiyWidget;
import 'package:flutter/material.dart';

class RecentActivitiyModel extends FlutterFlowModel<RecentActivitiyWidget> {
  ///  Local state fields for this component.

  List<dynamic> pendingActivityList = [];
  void addToPendingActivityList(dynamic item) => pendingActivityList.add(item);
  void removeFromPendingActivityList(dynamic item) =>
      pendingActivityList.remove(item);
  void removeAtIndexFromPendingActivityList(int index) =>
      pendingActivityList.removeAt(index);
  void insertAtIndexInPendingActivityList(int index, dynamic item) =>
      pendingActivityList.insert(index, item);
  void updatePendingActivityListAtIndex(
          int index, Function(dynamic) updateFn) =>
      pendingActivityList[index] = updateFn(pendingActivityList[index]);

  List<dynamic> postedActivityList = [];
  void addToPostedActivityList(dynamic item) => postedActivityList.add(item);
  void removeFromPostedActivityList(dynamic item) =>
      postedActivityList.remove(item);
  void removeAtIndexFromPostedActivityList(int index) =>
      postedActivityList.removeAt(index);
  void insertAtIndexInPostedActivityList(int index, dynamic item) =>
      postedActivityList.insert(index, item);
  void updatePostedActivityListAtIndex(int index, Function(dynamic) updateFn) =>
      postedActivityList[index] = updateFn(postedActivityList[index]);

  ///  State fields for stateful widgets in this component.

  // Model for RecentActivityColumnTable component.
  late RecentActivityColumnTableModel recentActivityColumnTableModel1;
  // Model for NoDatafoundTableText component.
  late NoDatafoundTableTextModel noDatafoundTableTextModel1;
  // Model for RecentActivityColumnTable component.
  late RecentActivityColumnTableModel recentActivityColumnTableModel2;
  // Model for NoDatafoundTableText component.
  late NoDatafoundTableTextModel noDatafoundTableTextModel2;

  @override
  void initState(BuildContext context) {
    recentActivityColumnTableModel1 =
        createModel(context, () => RecentActivityColumnTableModel());
    noDatafoundTableTextModel1 =
        createModel(context, () => NoDatafoundTableTextModel());
    recentActivityColumnTableModel2 =
        createModel(context, () => RecentActivityColumnTableModel());
    noDatafoundTableTextModel2 =
        createModel(context, () => NoDatafoundTableTextModel());
  }

  @override
  void dispose() {
    recentActivityColumnTableModel1.dispose();
    noDatafoundTableTextModel1.dispose();
    recentActivityColumnTableModel2.dispose();
    noDatafoundTableTextModel2.dispose();
  }
}
