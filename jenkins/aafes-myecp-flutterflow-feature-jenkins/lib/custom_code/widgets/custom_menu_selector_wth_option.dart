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

class CustomMenuSelectorWthOption extends StatefulWidget {
  const CustomMenuSelectorWthOption({
    super.key,
    this.width,
    this.height,
    required this.hintText,
    required this.isSelected,
    this.listData,
    this.onMenuStateCallBack,
    this.onChange,
  });

  final double? width;
  final double? height;
  final String hintText;
  final bool isSelected;
  final List<OptionStruct>? listData;
  final Future Function(bool? isOpen)? onMenuStateCallBack;
  final Future Function(String? text)? onChange;

  @override
  State<CustomMenuSelectorWthOption> createState() =>
      _CustomMenuSelectorWthOptionState();
}

class _CustomMenuSelectorWthOptionState
    extends State<CustomMenuSelectorWthOption> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
