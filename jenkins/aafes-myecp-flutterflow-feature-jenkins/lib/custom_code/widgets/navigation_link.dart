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

class NavigationLink extends StatefulWidget {
  const NavigationLink({
    super.key,
    this.width,
    this.height,
    required this.onLinkTap,
    required this.link,
  });

  final double? width;
  final double? height;
  final String link;
  final Future Function() onLinkTap;

  @override
  State<NavigationLink> createState() => _NavigationLinkState();
}

class _NavigationLinkState extends State<NavigationLink> {
  var showBorder = false;
  var showFullBorder = false;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: showFullBorder
            ? Border.all(
                color: Color(0xFF0000FF),
                width: 1,
              )
            : showBorder
                ? const Border(
                    bottom: BorderSide(color: Color(0xFF0000FF), width: 1),
                  )
                : null,
      ),
      child: InkWell(
        onTap: widget.onLinkTap,
        onFocusChange: (hasFocus) {
          setState(() {
            showFullBorder = hasFocus;
          });
        },
        onHover: (hovered) {
          setState(() {
            showBorder = hovered;
          });
        },
        child: Text(
          widget.link,
          style: TextStyle(
            color: Color(0xFF0000FF),
            fontSize: 14,
            fontFamily: 'Arial',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
