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

class SessionWidget extends StatefulWidget {
  const SessionWidget({
    super.key,
    this.width,
    this.height,
    this.resetTimer,
  });

  final double? width;
  final double? height;
  final Future Function()? resetTimer;

  @override
  State<SessionWidget> createState() => _SessionWidgetState();
}

class _SessionWidgetState extends State<SessionWidget> {
  @override
  Widget build(BuildContext context) {
    return Listener(
      behavior: HitTestBehavior.translucent,
      onPointerDown: (details) {
        widget.resetTimer!();
      },
      onPointerMove: (details) {
        widget.resetTimer!();
      },
      onPointerUp: (details) {
        widget.resetTimer!();
      },
      child: Container(width: widget.width, height: widget.height),
    );
  }
}
