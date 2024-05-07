// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class ErrorBanner extends StatefulWidget {
  const ErrorBanner({
    super.key,
    this.width,
    this.height,
    required this.message,
  });

  final double? width;
  final double? height;
  final String message;

  @override
  State<ErrorBanner> createState() => _ErrorBannerState();
}

class _ErrorBannerState extends State<ErrorBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFB70100)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        widget.message,
        style: const TextStyle(
          color: Color(0xFFB70100),
          fontSize: 14,
          fontFamily: 'Arial',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
