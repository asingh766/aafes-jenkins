import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'promotion_page_widget.dart' show PromotionPageWidget;
import 'package:flutter/material.dart';

class PromotionPageModel extends FlutterFlowModel<PromotionPageWidget> {
  ///  Local state fields for this page.

  String pageTitle = ' ';

  List<AdListStruct> adList = [];
  void addToAdList(AdListStruct item) => adList.add(item);
  void removeFromAdList(AdListStruct item) => adList.remove(item);
  void removeAtIndexFromAdList(int index) => adList.removeAt(index);
  void insertAtIndexInAdList(int index, AdListStruct item) =>
      adList.insert(index, item);
  void updateAdListAtIndex(int index, Function(AdListStruct) updateFn) =>
      adList[index] = updateFn(adList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Promotions)] action in PromotionPage widget.
  ApiCallResponse? adResults;
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // Model for Footer component.
  late FooterModel footerModel1;
  // Model for Header component.
  late HeaderModel headerModel1;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // Model for Header component.
  late HeaderModel headerModel2;
  // Model for Footer component.
  late FooterModel footerModel2;

  @override
  void initState(BuildContext context) {
    columnController1 = ScrollController();
    footerModel1 = createModel(context, () => FooterModel());
    headerModel1 = createModel(context, () => HeaderModel());
    columnController2 = ScrollController();
    headerModel2 = createModel(context, () => HeaderModel());
    footerModel2 = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    columnController1?.dispose();
    footerModel1.dispose();
    headerModel1.dispose();
    columnController2?.dispose();
    headerModel2.dispose();
    footerModel2.dispose();
  }
}
