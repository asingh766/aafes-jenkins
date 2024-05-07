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

import 'package:google_fonts/google_fonts.dart';

class PasswordWidget extends StatefulWidget {
  const PasswordWidget({
    super.key,
    this.width,
    this.height,
    required this.hasError,
    this.errorMessage,
    required this.value,
    required this.onChange,
    required this.isLoading,
  });

  final double? width;
  final double? height;
  final String value;
  final bool hasError;
  final String? errorMessage;
  final Future Function(String value) onChange;
  final bool isLoading;

  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  FocusNode focusNode = FocusNode();
  bool passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 56,
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: widget.hasError
                      ? FlutterFlowTheme.of(context).error
                      : focusNode.hasFocus
                          ? FlutterFlowTheme.of(context).primary
                          : FlutterFlowTheme.of(context).primaryText,
                  width: focusNode.hasFocus ? 2 : 1,
                ),
              ),
              child: TextFormField(
                focusNode: focusNode,
                controller: TextEditingController.fromValue(
                    new TextEditingValue(
                        text: widget.value,
                        selection: TextSelection.collapsed(
                            offset: widget.value.length))),
                obscureText: !passwordVisible,
                onChanged: (value) {
                  widget.onChange(value);
                },
                obscuringCharacter: '*',
                cursorColor: FlutterFlowTheme.of(context).primary,
                textAlignVertical: TextAlignVertical.center,
                readOnly: widget.isLoading == true,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 16.0),
                  border: InputBorder.none,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelText: '',
                  labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        color: valueOrDefault<Color>(
                          focusNode.hasFocus == true
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).secondaryText,
                          FlutterFlowTheme.of(context).primary,
                        ),
                        fontSize: 16.0,
                      ),
                  alignLabelWithHint: false,
                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Lato',
                        color: const Color(0xFF2E2E2E),
                      ),
                  suffixIcon: Padding(
                      padding: const EdgeInsetsDirectional.only(top: 8.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                            passwordVisible
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            size: 24.0,
                            color: FlutterFlowTheme.of(context).primaryText),
                        onTap: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                      )),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Lato',
                      fontSize: 16.0,
                    ),
              )),
          if (widget.hasError && !(widget.errorMessage ?? "").isEmpty)
            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                child: Text(
                  widget.errorMessage ?? '',
                  style: GoogleFonts.getFont(
                    'Outfit',
                    color: FlutterFlowTheme.of(context).error,
                  ),
                ))
        ]);
  }
}
