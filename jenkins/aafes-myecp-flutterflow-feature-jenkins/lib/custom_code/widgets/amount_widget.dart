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
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart'
    as ct;

class AmountWidget extends StatefulWidget {
  const AmountWidget({
    super.key,
    this.width,
    this.height,
    this.isPadding,
    this.isDouble,
    required this.hasError,
    required this.isLeftAlign,
    required this.value,
    required this.onChange,
    required this.isThinBorder,
    required this.isLoading,
  });

  final double? width;
  final double? height;
  final bool hasError;
  final bool? isPadding;
  final bool isLeftAlign;
  final bool isThinBorder;
  final bool? isDouble;
  final String value;
  final Future Function(String value) onChange;
  final bool isLoading;

  @override
  State<AmountWidget> createState() => _AmountWidgetState();
}

class _AmountWidgetState extends State<AmountWidget> {
  final _focusNode = FocusNode();
  bool isFocus = false;

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
    bool isSmallBorder = widget.isPadding ?? false;
    bool isDouble = widget.isDouble ?? false;
    final ct.CurrencyTextInputFormatter _formatter =
        ct.CurrencyTextInputFormatter.currency(
      decimalDigits: isDouble ? 2 : 0,
      symbol: '\$',
    );

    return TextFormField(
      focusNode: _focusNode,
      textAlign: widget.isLeftAlign ? TextAlign.start : TextAlign.end,
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[_formatter],
      obscureText: false,
      controller: TextEditingController.fromValue(TextEditingValue(
          text: widget.value != ''
              ? _formatter.formatString(widget.value)
              : widget.value,
          selection: TextSelection.fromPosition(
            TextPosition(offset: widget.value.length),
          ))),
      onChanged: (value) {
        var newValue = isDouble
            ? double.parse(replaceDollar(value))
            : stringToInt(replaceDollar(value));
        if (!isDouble) {
          if (newValue > 10000) {
            newValue = 10000; // Restricting the value to 10000
          }
        }
        widget.onChange(value != ''
            ? _formatter.formatString(isDouble ? value : newValue.toString())
            : value); // Convert back to string
      },
      cursorColor: FlutterFlowTheme.of(context).primary,
      textAlignVertical: TextAlignVertical.center,
      readOnly: widget.isLoading == true,
      decoration: InputDecoration(
        hintText: '(\$)',
        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
              fontFamily: 'Arial',
              color: FlutterFlowTheme.of(context).accent3,
              fontSize: 16,
              letterSpacing: 0,
              useGoogleFonts: false,
            ),
        contentPadding: (isSmallBorder && !isDouble)
            ? EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 24.0)
            : EdgeInsets.all(16.0),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: (widget.isThinBorder && !(widget.isPadding ?? false))
                ? FlutterFlowTheme.of(context).accent2
                : FlutterFlowTheme.of(context).primaryText,
            width: widget.isThinBorder ? 1.0 : 2.0,
          ),
          borderRadius: BorderRadius.circular(isSmallBorder ? 4.0 : 8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).primary,
            width: isDouble ? 1.0 : 2.0,
          ),
          borderRadius: BorderRadius.circular(isSmallBorder ? 4.0 : 8.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).error,
            width: isDouble ? 1.0 : 2.0,
          ),
          borderRadius: BorderRadius.circular(isSmallBorder ? 4.0 : 8.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).error,
            width: 12.0,
          ),
          borderRadius: BorderRadius.circular(isSmallBorder ? 4.0 : 8.0),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: '',
        labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Lato',
              color: valueOrDefault<Color>(
                (isFocus == true && !isSmallBorder)
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
