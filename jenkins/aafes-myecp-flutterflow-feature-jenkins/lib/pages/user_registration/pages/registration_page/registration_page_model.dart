import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/user_registration/components/registration1_component/registration1_component_widget.dart';
import '/pages/user_registration/components/registration2_component/registration2_component_widget.dart';
import '/pages/user_registration/components/registration3_component/registration3_component_widget.dart';
import '/pages/user_registration/components/registration4_component/registration4_component_widget.dart';
import 'registration_page_widget.dart' show RegistrationPageWidget;
import 'package:flutter/material.dart';

class RegistrationPageModel extends FlutterFlowModel<RegistrationPageWidget> {
  ///  Local state fields for this page.

  int pageStep = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Registration1Component component.
  late Registration1ComponentModel registration1ComponentModel1;
  // Model for Registration2Component component.
  late Registration2ComponentModel registration2ComponentModel1;
  // Model for Registration3Component component.
  late Registration3ComponentModel registration3ComponentModel1;
  // Model for Registration4Component component.
  late Registration4ComponentModel registration4ComponentModel1;
  // Model for Footer component.
  late FooterModel footerModel1;
  // Model for Header component.
  late HeaderModel headerModel1;
  // Model for Header component.
  late HeaderModel headerModel2;
  // Model for Registration1Component component.
  late Registration1ComponentModel registration1ComponentModel2;
  // Model for Registration2Component component.
  late Registration2ComponentModel registration2ComponentModel2;
  // Model for Registration3Component component.
  late Registration3ComponentModel registration3ComponentModel2;
  // Model for Registration4Component component.
  late Registration4ComponentModel registration4ComponentModel2;
  // Model for Footer component.
  late FooterModel footerModel2;

  @override
  void initState(BuildContext context) {
    registration1ComponentModel1 =
        createModel(context, () => Registration1ComponentModel());
    registration2ComponentModel1 =
        createModel(context, () => Registration2ComponentModel());
    registration3ComponentModel1 =
        createModel(context, () => Registration3ComponentModel());
    registration4ComponentModel1 =
        createModel(context, () => Registration4ComponentModel());
    footerModel1 = createModel(context, () => FooterModel());
    headerModel1 = createModel(context, () => HeaderModel());
    headerModel2 = createModel(context, () => HeaderModel());
    registration1ComponentModel2 =
        createModel(context, () => Registration1ComponentModel());
    registration2ComponentModel2 =
        createModel(context, () => Registration2ComponentModel());
    registration3ComponentModel2 =
        createModel(context, () => Registration3ComponentModel());
    registration4ComponentModel2 =
        createModel(context, () => Registration4ComponentModel());
    footerModel2 = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    registration1ComponentModel1.dispose();
    registration2ComponentModel1.dispose();
    registration3ComponentModel1.dispose();
    registration4ComponentModel1.dispose();
    footerModel1.dispose();
    headerModel1.dispose();
    headerModel2.dispose();
    registration1ComponentModel2.dispose();
    registration2ComponentModel2.dispose();
    registration3ComponentModel2.dispose();
    registration4ComponentModel2.dispose();
    footerModel2.dispose();
  }
}
