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

Future<PasswordValidationResult> passwordValidation(
  String password,
  String? confirmPassword,
  bool isPasswordValid,
) async {
  // Add your function code here!

  if (password.isEmpty) {
    return PasswordValidationResult.Valid;
  }

  if (!isPasswordValid) {
    return PasswordValidationResult.Invalid;
  }

  if (confirmPassword != null &&
      confirmPassword.isNotEmpty &&
      password != confirmPassword) {
    return PasswordValidationResult.NoMatch;
  }

  return PasswordValidationResult.Valid;
}
