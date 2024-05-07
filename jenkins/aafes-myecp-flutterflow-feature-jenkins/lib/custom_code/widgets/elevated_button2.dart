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

class ElevatedButton2 extends StatefulWidget {
  const ElevatedButton2({
    super.key,
    this.width,
    this.height,
    this.paddingLeft = 14,
    this.paddingRight = 14,
    this.paddingTop = 14,
    this.paddingBottom = 14,
    required this.title,
    required this.onTap,
    required this.isEnabled,
  });

  final double? paddingLeft;
  final double? paddingRight;
  final double? paddingTop;
  final double? paddingBottom;
  final double? width;
  final double? height;
  final String title;
  final bool isEnabled;
  final Future Function() onTap;

  @override
  State<ElevatedButton2> createState() => _ElevatedButtonState();
}

class _ElevatedButtonState extends State<ElevatedButton2> {
  bool onHover = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.isEnabled ? widget.onTap : null,
      onHover: (value) {
        setState(() {
          onHover = value;
        });
      },
      style: ElevatedButton.styleFrom(
        disabledForegroundColor: Colors.grey[400],
        foregroundColor: Colors.white,
        backgroundColor: onHover
            ? const Color(0xff9fb7e3)
            : FlutterFlowTheme.of(context).primary,
        disabledBackgroundColor: const Color(0xFFCCCCCD),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: BorderSide(
              color: onHover
                  ? Colors.black
                  : widget.isEnabled
                      ? FlutterFlowTheme.of(context).primary
                      : (Colors.grey[400])!,
            )),
      ),
      child: Text(
        widget.title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
          fontFamily: 'Arial',
          color: onHover
              ? FlutterFlowTheme.of(context).black
              : widget.isEnabled
                  ? FlutterFlowTheme.of(context).white
                  : FlutterFlowTheme.of(context).black,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.6,
        ),
      ),
    );
  }
}
