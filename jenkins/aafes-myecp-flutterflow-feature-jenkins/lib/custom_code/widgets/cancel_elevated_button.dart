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

class CancelElevatedButton extends StatefulWidget {
  const CancelElevatedButton({
    super.key,
    this.width,
    this.height,
    this.title,
    this.onTap,
  });

  final double? width;
  final double? height;
  final String? title;
  final Future Function()? onTap;

  @override
  State<CancelElevatedButton> createState() => _CancelElevatedButtonState();
}

class _CancelElevatedButtonState extends State<CancelElevatedButton> {
  bool onHover = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onTap,
      onHover: (value) {
        setState(() {
          onHover = value;
        });
      },
      style: ElevatedButton.styleFrom(
        disabledForegroundColor: Colors.black,
        foregroundColor: Colors.white,
        backgroundColor: onHover
            ? const Color(0xffe0e0e0)
            : FlutterFlowTheme.of(context).primaryBackground,
        disabledBackgroundColor: const Color(0xFFCCCCCD),
        padding: const EdgeInsets.symmetric(vertical: 23, horizontal: 15),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: BorderSide(
              color:
                  onHover ? Colors.grey : FlutterFlowTheme.of(context).primary,
            )),
      ),
      child: Text(
        widget.title ?? "",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
          fontFamily: 'Arial',
          color: onHover
              ? FlutterFlowTheme.of(context).black
              : FlutterFlowTheme.of(context).primary,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.6,
        ),
      ),
    );
  }
}
