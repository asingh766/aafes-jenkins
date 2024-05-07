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

class CustomOutlinedTextFieldWidget extends StatefulWidget {
  const CustomOutlinedTextFieldWidget({
    super.key,
    this.width,
    this.height,
    required this.value,
    required this.readOnly,
    required this.onValueChange,
    required this.hasError,
  });

  final double? width;
  final double? height;
  final bool readOnly;
  final String value;
  final Future Function(String data) onValueChange;
  final Future Function(bool error) hasError;

  @override
  State<CustomOutlinedTextFieldWidget> createState() =>
      _CustomOutlinedTextFieldWidgetState();
}

class _CustomOutlinedTextFieldWidgetState
    extends State<CustomOutlinedTextFieldWidget> {
  TextEditingController securityQuestionController = TextEditingController();
  String? securityQuestionData;
  bool obsecureSecurityQuestion = true;
  late FocusNode _focusNode;
  String? errorMessage;
  bool hasError = false;
  bool hasFocus = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        hasFocus = false;
        // Handle focus lost event here
        validateInput();
      } else {
        hasFocus = true;
        // Reset error message and hasError when focus is regained
        setState(() {
          errorMessage = null;
          hasError = false;
          widget.hasError(hasError); // Callback for hasError update
        });
      }
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void validateInput() {
    if (widget.value != null && widget.value.length < 3) {
      setState(() {
        errorMessage =
            'Your security answer must contain more than 2 characters. To continue, please update your security answer.';
        hasError = true;
        widget.hasError(hasError); // Callback for hasError update
      });
    } else {
      setState(() {
        errorMessage = null;
        hasError = false;
        widget.hasError(hasError); // Callback for hasError update
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    bool readOnly = widget.readOnly;
    return Container(
      decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          shape: BoxShape.rectangle),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: readOnly
                  ? FlutterFlowTheme.of(context).secondaryBackground
                  : FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: () {
                  if (readOnly) {
                    return FlutterFlowTheme.of(context).accent2;
                  } else if (hasError) {
                    return FlutterFlowTheme.of(context).error;
                  } else {
                    return FlutterFlowTheme.of(context).primaryText;
                  }
                }(),
                width: readOnly
                    ? 1
                    : hasFocus
                        ? 2
                        : 1,
              ),
            ),
            child: Row(
              children: [
                Flexible(
                  child: TextField(
                    readOnly: readOnly,
                    controller:
                        TextEditingController.fromValue(TextEditingValue(
                            text: widget.value,
                            selection: TextSelection.fromPosition(
                              TextPosition(offset: widget.value.length),
                            ))),
                    cursorColor: Colors.black,
                    obscureText: readOnly || obsecureSecurityQuestion,
                    obscuringCharacter: '*',
                    focusNode: _focusNode, // Assign focus node here
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Arial',
                                  color: FlutterFlowTheme.of(context).accent3,
                                  useGoogleFonts: false,
                                ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        contentPadding: EdgeInsetsDirectional.all(5)),

                    onChanged: (text) {
                      setState(() {
                        securityQuestionData = text;
                        // Reset error message and hasError on text change
                        errorMessage = null;
                        hasError = false;
                        widget.onValueChange(
                            securityQuestionData!); // Callback for data update
                        widget
                            .hasError(hasError); // Callback for hasError update
                      });
                    },
                  ),
                ),
                if (hasError && !readOnly)
                  Icon(
                    Icons.error_outlined,
                    color: FlutterFlowTheme.of(context).error,
                    size: 22,
                  )
                else
                  Visibility(
                    visible: widget.value.isNotEmpty ?? false,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          obsecureSecurityQuestion = !obsecureSecurityQuestion;
                        });
                      },
                      child: Icon(
                        readOnly || obsecureSecurityQuestion
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          if (hasError && !readOnly)
            Flexible(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                child: Text(
                  errorMessage ?? '',
                  style: GoogleFonts.getFont(
                    'Outfit',
                    color: FlutterFlowTheme.of(context).error,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
