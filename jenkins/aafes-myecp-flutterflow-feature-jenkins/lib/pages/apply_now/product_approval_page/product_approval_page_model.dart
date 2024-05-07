import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/common_custom_button_icon/common_custom_button_icon_widget.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_approval_page_widget.dart' show ProductApprovalPageWidget;
import 'package:flutter/material.dart';

class ProductApprovalPageModel
    extends FlutterFlowModel<ProductApprovalPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CommonCustomButtonIcon component.
  late CommonCustomButtonIconModel commonCustomButtonIconModel1;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel1;
  // Model for Footer component.
  late FooterModel footerModel1;
  // Model for Header component.
  late HeaderModel headerModel1;
  // Model for Header component.
  late HeaderModel headerModel2;
  // Model for CommonCustomButtonIcon component.
  late CommonCustomButtonIconModel commonCustomButtonIconModel2;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel2;
  // Model for Footer component.
  late FooterModel footerModel2;

  @override
  void initState(BuildContext context) {
    commonCustomButtonIconModel1 =
        createModel(context, () => CommonCustomButtonIconModel());
    commonCustomButtonModel1 =
        createModel(context, () => CommonCustomButtonModel());
    footerModel1 = createModel(context, () => FooterModel());
    headerModel1 = createModel(context, () => HeaderModel());
    headerModel2 = createModel(context, () => HeaderModel());
    commonCustomButtonIconModel2 =
        createModel(context, () => CommonCustomButtonIconModel());
    commonCustomButtonModel2 =
        createModel(context, () => CommonCustomButtonModel());
    footerModel2 = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonCustomButtonIconModel1.dispose();
    commonCustomButtonModel1.dispose();
    footerModel1.dispose();
    headerModel1.dispose();
    headerModel2.dispose();
    commonCustomButtonIconModel2.dispose();
    commonCustomButtonModel2.dispose();
    footerModel2.dispose();
  }
}
