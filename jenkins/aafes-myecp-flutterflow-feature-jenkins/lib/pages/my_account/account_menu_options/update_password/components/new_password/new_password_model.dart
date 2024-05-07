import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_password_widget.dart' show NewPasswordWidget;
import 'package:flutter/material.dart';

class NewPasswordModel extends FlutterFlowModel<NewPasswordWidget> {
  ///  Local state fields for this component.

  String? errorPassword = ' ';

  String? errorConfirmPassword = ' ';

  bool hasErrorPassword = false;

  bool hasConfirmErrorPassword = false;

  String password = ' ';

  bool hasPasswordError = false;

  String errorMessage = '';

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (updatePassword)] action in Button widget.
  ApiCallResponse? updatePassword;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
