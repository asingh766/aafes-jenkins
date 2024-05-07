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
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';

class AmountWidgetWithDisability extends StatefulWidget {
  const AmountWidgetWithDisability({
    super.key,
    this.width,
    this.height,
    required this.hasError,
    required this.isLeftAlign,
    required this.value,
    required this.onChange,
    required this.isLoading,
    this.isDisabled = false, // Add isDisabled property
  });

  final double? width;
  final double? height;
  final bool hasError;
  final bool isLeftAlign;
  final String value;
  final Future Function(String value) onChange;
  final bool isLoading;
  final bool isDisabled; // Add isDisabled property

  @override
  State<AmountWidgetWithDisability> createState() =>
      _AmountWidgetWithDisabilityState();
}

class _AmountWidgetWithDisabilityState
    extends State<AmountWidgetWithDisability> {
  final _focusNode = FocusNode();
  bool isFocus = false;
  //final CurrencyTextInputFormatter _formatter =
  //  CurrencyTextInputFormatter.currency(
  //decimalDigits: 0,
  //symbol: '\$',
  //);
  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        isFocus = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: _focusNode,

      textAlign: widget.isLeftAlign ? TextAlign.start : TextAlign.end,
      keyboardType: TextInputType.number,
      //   inputFormatters: <TextInputFormatter>[_formatter],
      obscureText: false,
      //    controller: TextEditingController.fromValue(TextEditingValue(
      //        text: widget.value != ''
      //            ? _formatter.formatString(widget.value)
      //             : widget.value,
      //      selection: TextSelection.fromPosition(
      //        TextPosition(offset: widget.value.length),
      //      ))),
      onChanged: (value) {
        var newValue = value;
        widget.onChange(newValue);
      },
      cursorColor: FlutterFlowTheme.of(context).primary,
      textAlignVertical: TextAlignVertical.center,
      readOnly: widget.isLoading == true || widget.isDisabled,
      decoration: InputDecoration(
        hintText: '(\$)',
        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
              fontFamily: 'Arial',
              color: FlutterFlowTheme.of(context).accent3,
              fontSize: 16,
              letterSpacing: 0,
              useGoogleFonts: false,
            ),
        contentPadding: const EdgeInsets.all(16.0),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).primaryText,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).primary,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).error,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).error,
            width: 12.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: '',
        labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Lato',
              color: valueOrDefault<Color>(
                isFocus == true
                    ? FlutterFlowTheme.of(context).primary
                    : FlutterFlowTheme.of(context).secondaryText,
                FlutterFlowTheme.of(context).primary,
              ),
              fontSize: 16.0,
            ),
        alignLabelWithHint: false,
        // suffixIcon: (!isFocus && widget.value == '') ? widget.icon : null,
      ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Lato',
            fontSize: 16.0,
          ),
    );
  }
}
