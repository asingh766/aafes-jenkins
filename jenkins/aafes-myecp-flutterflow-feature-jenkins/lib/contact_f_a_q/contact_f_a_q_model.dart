import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'contact_f_a_q_widget.dart' show ContactFAQWidget;
import 'package:flutter/material.dart';

class ContactFAQModel extends FlutterFlowModel<ContactFAQWidget> {
  ///  Local state fields for this page.

  int id = 0;

  FaqStruct? content;
  void updateContentStruct(Function(FaqStruct) updateFn) =>
      updateFn(content ??= FaqStruct());

  String selectedOption = 'help';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Static Pages)] action in ContactFAQ widget.
  ApiCallResponse? faqresults;
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
