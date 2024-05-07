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

import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/services.dart';

class OutlineTextField2 extends StatefulWidget {
  const OutlineTextField2({
    super.key,
    this.width,
    this.height,
    required this.onValueChange,
    required this.hasError,
    required this.error,
    required this.title,
    required this.isRequried,
    required this.hintText,
    required this.maxLength,
    required this.numericKeyboard,
    required this.hiddenField,
    required this.showObscureIcon,
    required this.onResetError,
    required this.onValidate,
  });

  final double? width;
  final double? height;
  final String title;
  final bool hasError;
  final String error;
  final bool isRequried;
  final String hintText;
  final int maxLength;
  final bool numericKeyboard;
  final bool hiddenField;
  final bool showObscureIcon;
  final Future Function(String data) onValueChange;
  final Future Function() onResetError;
  final Future Function(String data) onValidate;

  @override
  State<OutlineTextField2> createState() => _OutlineTextField2State();
}

class _OutlineTextField2State extends State<OutlineTextField2> {
  late TextEditingController _controller;
  late bool obscureText = widget.hiddenField ?? false;
  Widget? suffixIcon;
  late InputBorder border;
  late FocusNode _focusNode;
  TextInputType? keyboardType;
  List<TextInputFormatter>? inputFormatters;

  //Colors
  final errorColor = const Color(0xFFB70100);

  void toggle() {
    obscureText = !obscureText;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _focusNode = FocusNode();

    keyboardType = widget.numericKeyboard == true
        ? TextInputType.number
        : TextInputType.text;

    if (widget.numericKeyboard == true) {
      inputFormatters = [FilteringTextInputFormatter.digitsOnly];
    }

    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        widget.onResetError?.call();
      } else {
        widget.onValidate?.call(_controller.text);
      }
    });

    _controller.addListener(() {
      EasyDebounce.debounce(
        'OutlineTextField2',
        const Duration(milliseconds: 150),
        () => widget.onValueChange?.call(_controller.text),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.hasError == true) {
      suffixIcon = Icon(Icons.error_outline, color: errorColor);
    } else if (widget.hiddenField == true && widget.showObscureIcon == true) {
      suffixIcon = Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          onPressed: toggle,
          icon: Icon(
            obscureText
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
            color: Colors.black87,
            size: 24,
          ),
        ),
      );
    } else {
      suffixIcon = null;
    }

    if (widget.hasError == true) {
      border = OutlineInputBorder(
        borderSide: BorderSide(width: 2.0, color: errorColor),
      );
    } else {
      border = const OutlineInputBorder();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null && widget.title!.isNotEmpty) ...[
          Row(
            children: [
              Text(
                widget.title ?? "",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w400,
                  color: widget.hasError == true
                      ? errorColor
                      : const Color(0xFF505050),
                  // height: 0.10,
                ),
              ),
              if (widget.isRequried == true) ...[
                const SizedBox(width: 1),
                Text(
                  '*',
                  style: TextStyle(
                    color: errorColor,
                    fontSize: 12,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.w400,
                    height: 0.11,
                  ),
                ),
              ]
            ],
          ),
          const SizedBox(height: 1),
        ],
        TextField(
          cursorColor: const Color(0xFF042757),
          textCapitalization: TextCapitalization.sentences,
          controller: _controller,
          focusNode: _focusNode,
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
          obscureText: obscureText,
          obscuringCharacter: "*",
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'Arial',
            fontWeight: FontWeight.w400,
          ),
          maxLength: widget.maxLength,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            suffixIconColor: Colors.black87,
            hintText: widget.hintText,
            counterText: "",
            hintStyle: const TextStyle(
              color: Color(0xFF838383),
              fontSize: 16,
              fontFamily: 'Arial',
              fontWeight: FontWeight.w400,
            ),
            enabledBorder: border,
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 2.0, color: Color(0xFF00153F)),
            ),
          ),
        ),

        ///Error Text
        const SizedBox(height: 1),
        Text(
          widget.error ?? "",
          style: TextStyle(
            color: errorColor,
            fontSize: 14,
            fontFamily: 'Arial',
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
