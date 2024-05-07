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

import 'package:dots_indicator/dots_indicator.dart';

class DotIndicator extends StatefulWidget {
  const DotIndicator({
    super.key,
    this.width,
    this.height,
    required this.count,
    required this.currentPosition,
  });

  final double? width;
  final double? height;
  final int count;
  final int currentPosition;

  @override
  State<DotIndicator> createState() => _DotIndicatorState();
}

class _DotIndicatorState extends State<DotIndicator> {
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: widget.count,
      position: widget.currentPosition,
      decorator: DotsDecorator(
        color: Color(0x7A7D7D7D), // Inactive color
        activeColor: Colors.white,
      ),
      // onTap: (pos) {
      //   setState(() => _currentPosition = pos);
      // },
    );
  }
}
