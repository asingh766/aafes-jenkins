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

import 'package:flutter/services.dart';

class MaskedTextField extends StatefulWidget {
  const MaskedTextField(
      {super.key,
      this.width,
      this.height,
      required this.mask,
      required this.escapeCharacter,
      required this.maxLength,
      required this.onChanged,
      required this.resetError,
      required this.onValidate,
      required this.enabled,
      required this.onFocusChanged,
      this.hint,
      this.initialValue});

  final double? width;
  final double? height;
  final String mask;
  final String escapeCharacter;
  final int maxLength;
  final Future Function(String data) onChanged;
  final Future Function() onValidate;
  final Future Function() resetError;
  final Future Function(bool hasFocus) onFocusChanged;
  final bool enabled;
  final String? hint;
  final String? initialValue;

  @override
  State<MaskedTextField> createState() => _MaskedTextFieldState();
}

class _MaskedTextFieldState extends State<MaskedTextField> {
  late final TextEditingController textFieldController;
  late FocusNode _focusNode;
  var lastTextSize = 0;
  var internalText = "";

  @override
  void initState() {
    textFieldController = TextEditingController();

    if (widget.initialValue?.isNotEmpty == true) {
      textFieldController.text = _buildInitialText(widget.initialValue!,
          widget.mask, widget.escapeCharacter, widget.maxLength);

      internalText = widget.initialValue!;
    } else {
      textFieldController.clear();
      widget.onChanged("");
      widget.resetError();
    }

    _focusNode = FocusNode();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        // Handle focus lost event here
        widget.resetError();
        widget.onFocusChanged(true);
      } else {
        widget.onValidate();
        widget.onFocusChanged(false);
        // Reset error message and hasError when focus is regained
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    textFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Container(
        alignment: Alignment.center,
        child: TextField(
          enabled: widget.enabled,
          controller: textFieldController,
          cursorColor: Colors.black,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Arial',
              letterSpacing: 0,
              useGoogleFonts: false,
              color: widget.enabled ? Colors.black : Color(0xff505050)),
          decoration: InputDecoration(
            hintText:
                widget.enabled == false ? '' : widget.hint ?? "123 - 456 - 789",
            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Arial',
                  color: FlutterFlowTheme.of(context).accent3,
                  useGoogleFonts: false,
                ),
            disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
            // contentPadding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 2),
          ),
          focusNode: _focusNode, // Assign focus node here
          keyboardType: TextInputType.number,
          inputFormatters: [
            LengthLimitingTextInputFormatter(widget.maxLength),
          ],
          onChanged: (String text) {
            //? Deleting text
            if (lastTextSize > text.length) {
              lastTextSize = text.length;
              var replaced = text.replaceAll(widget.escapeCharacter, "");
              internalText = internalText.substring(0, replaced.length);

              textFieldController.selection = TextSelection.fromPosition(
                TextPosition(offset: textFieldController.text.length),
              );

              widget.onChanged(internalText);

              return;
            }

            //? Typing text
            internalText += text[text.length - 1];
            textFieldController.text = _buildText(
                text, widget.mask, widget.escapeCharacter, widget.maxLength);
            lastTextSize = textFieldController.text.length;

            if (textFieldController.selection.start <
                textFieldController.text.length) {
              textFieldController.selection = TextSelection.fromPosition(
                  TextPosition(offset: textFieldController.text.length));
            }

            widget.onChanged(internalText);
          },
        ),
      ),
    );
  }

//For building the initail value.
  String _buildInitialText(
    String text,
    String mask,
    String escapeCharacter,
    int maxLength,
  ) {
    var result = "";

    var j = 0;
    for (int i = 0; i < text.length; i++) {
      if (mask[j] == escapeCharacter) {
        result += escapeCharacter;
        j++;
      }

      result += '*';
      j++;
    }

    return result;
  }

  //For build Text Method
  String _buildText(
      String text, String mask, String escapeCharacter, int maxLength) {
    var result = "";

    for (int i = 0; i < text.length; i++) {
      result += text[i] == escapeCharacter || mask[i] == escapeCharacter
          ? escapeCharacter
          : '*';
    }

    //? Check next character if its a 'escapedCharacter'
    if (maxLength != text.length && mask[text.length] == escapeCharacter) {
      result += escapeCharacter;
    }

    return result;
  }
}
