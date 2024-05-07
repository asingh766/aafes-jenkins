import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'static_widget.dart' show StaticWidget;
import 'package:flutter/material.dart';

class StaticModel extends FlutterFlowModel<StaticWidget> {
  ///  Local state fields for this page.

  String content = '<div></div>';

  String pageTitile = ' ';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Static Pages)] action in Static widget.
  ApiCallResponse? apiResult39r;
  // Model for Footer component.
  late FooterModel footerModel1;
  // Model for Header component.
  late HeaderModel headerModel1;
  // Model for Header component.
  late HeaderModel headerModel2;
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
