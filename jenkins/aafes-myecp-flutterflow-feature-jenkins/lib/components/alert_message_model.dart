import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'alert_message_widget.dart' show AlertMessageWidget;
import 'package:flutter/material.dart';

class AlertMessageModel extends FlutterFlowModel<AlertMessageWidget> {
  ///  Local state fields for this component.

  List<AlertsStruct> internalAlerts = [];
  void addToInternalAlerts(AlertsStruct item) => internalAlerts.add(item);
  void removeFromInternalAlerts(AlertsStruct item) =>
      internalAlerts.remove(item);
  void removeAtIndexFromInternalAlerts(int index) =>
      internalAlerts.removeAt(index);
  void insertAtIndexInInternalAlerts(int index, AlertsStruct item) =>
      internalAlerts.insert(index, item);
  void updateInternalAlertsAtIndex(
          int index, Function(AlertsStruct) updateFn) =>
      internalAlerts[index] = updateFn(internalAlerts[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
