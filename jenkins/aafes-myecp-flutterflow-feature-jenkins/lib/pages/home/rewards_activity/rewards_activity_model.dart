import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/no_datafound_table_text/no_datafound_table_text_widget.dart';
import 'rewards_activity_widget.dart' show RewardsActivityWidget;
import 'package:flutter/material.dart';

class RewardsActivityModel extends FlutterFlowModel<RewardsActivityWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for NoDatafoundTableText component.
  late NoDatafoundTableTextModel noDatafoundTableTextModel;

  @override
  void initState(BuildContext context) {
    noDatafoundTableTextModel =
        createModel(context, () => NoDatafoundTableTextModel());
  }

  @override
  void dispose() {
    noDatafoundTableTextModel.dispose();
  }
}
