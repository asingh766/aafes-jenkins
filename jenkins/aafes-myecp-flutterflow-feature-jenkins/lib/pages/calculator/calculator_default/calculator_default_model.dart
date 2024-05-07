import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'calculator_default_widget.dart' show CalculatorDefaultWidget;
import 'package:flutter/material.dart';

class CalculatorDefaultModel extends FlutterFlowModel<CalculatorDefaultWidget> {
  ///  Local state fields for this page.

  bool? isError = false;

  bool? isSuccess = false;

  String? errorText;

  dynamic calculationResult;

  String? periods = '36';

  bool? isEnable = false;

  int? ammount;

  String? cureText;

  String purchaseAmount = ' ';

  bool isAmountError = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (calculatorsettings)] action in calculator_default widget.
  ApiCallResponse? calulatorRes;
  // State field(s) for InterestTFDesktop widget.
  FocusNode? interestTFDesktopFocusNode;
  TextEditingController? interestTFDesktopTextController;
  String? Function(BuildContext, String?)?
      interestTFDesktopTextControllerValidator;
  // Model for Footer component.
  late FooterModel footerModel1;
  // Model for Header component.
  late HeaderModel headerModel1;
  // Model for Header component.
  late HeaderModel headerModel2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
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
    interestTFDesktopFocusNode?.dispose();
    interestTFDesktopTextController?.dispose();

    footerModel1.dispose();
    headerModel1.dispose();
    headerModel2.dispose();
    textFieldFocusNode?.dispose();
    textController2?.dispose();

    footerModel2.dispose();
  }
}
