// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future environmentVariableAction() async {
  // set value from env variable to app state
  const envValue = String.fromEnvironment('BASE_URL',
      defaultValue: FFAppConstants.isDev ? FFAppConstants.baseURL : '');
  FFAppState().update(() {
    FFAppState().dynamicBaseURL = envValue;
  });
}
