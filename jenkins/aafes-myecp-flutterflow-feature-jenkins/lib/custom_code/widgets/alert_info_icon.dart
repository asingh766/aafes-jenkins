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

import 'package:flutter/gestures.dart';

import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AlertInfoIcon extends StatefulWidget {
  const AlertInfoIcon(
      {super.key,
      this.width,
      this.height,
      this.iconSize,
      required this.message,
      this.linkTitle,
      this.onClick});

  final double? width;
  final double? height;
  final double? iconSize;
  final String message;
  final String? linkTitle;
  final Future Function()? onClick;

  @override
  State<AlertInfoIcon> createState() => _AlertInfoIconState();
}

class _AlertInfoIconState extends State<AlertInfoIcon> {
  @override
  Widget build(BuildContext context) {
    return AlignedTooltip(
      content: Padding(
          padding: EdgeInsets.all(8.0),
          child: RichText(
            textScaler: MediaQuery.of(context).textScaler,
            text: TextSpan(
              children: [
                TextSpan(
                  text: '${widget.message} ',
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Arial',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 14,
                        letterSpacing: 0,
                        useGoogleFonts: false,
                      ),
                ),
                TextSpan(
                  text: widget.linkTitle!,
                  style: TextStyle(
                    color: Color(0xFF0088FF),
                    fontSize: 14,
                    height: 1.5,
                  ),
                  mouseCursor: SystemMouseCursors.click,
                  recognizer: TapGestureRecognizer()..onTap = widget.onClick,
                )
              ],
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Lato',
                    fontSize: 16,
                    letterSpacing: 0,
                  ),
            ),
          )),
      offset: 4.0,
      preferredDirection: AxisDirection.right,
      borderRadius: BorderRadius.circular(8.0),
      backgroundColor: Colors.black,
      elevation: 4.0,
      tailBaseWidth: 24.0,
      tailLength: 12.0,
      waitDuration: Duration(milliseconds: 100),
      showDuration: Duration(milliseconds: 2000),
      triggerMode: TooltipTriggerMode.tap,
      child: FaIcon(
        // ignore: deprecated_member_use
        FontAwesomeIcons.solidQuestionCircle,
        color: FlutterFlowTheme.of(context).primary,
        size: widget.iconSize,
      ),
    );
  }
}
