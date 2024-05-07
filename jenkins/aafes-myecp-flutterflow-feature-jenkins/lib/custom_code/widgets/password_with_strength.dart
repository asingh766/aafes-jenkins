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

import 'package:aligned_tooltip/aligned_tooltip.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:google_fonts/google_fonts.dart';

class PasswordWithStrength extends StatefulWidget {
  const PasswordWithStrength({
    super.key,
    this.width,
    this.height,
    required this.alignment,
    required this.matchWidth,
    required this.onValidate,
    required this.onValueChanged,
    this.errorMsg = "",
    required this.onResetError,
    required this.label,
    required this.infoMessage,
    required this.hasError,
  });

  final double? width;
  final double? height;
  final PSIAlignment alignment;
  final bool matchWidth;
  final String? errorMsg;
  final Future Function(String text, bool isValid) onValidate;
  final Future Function(String text) onValueChanged;
  final Future Function() onResetError;
  final String label;
  final String infoMessage;
  final bool hasError;

  @override
  State<PasswordWithStrength> createState() => _PasswordWithStrengthState();
}

class _PasswordWithStrengthState extends State<PasswordWithStrength> {
  late final OverlayPortalController controller;
  late final TextEditingController textController;
  late final GlobalKey fieldKey;
  late final FocusNode node;

  bool _isFocused = false;

  final numberRegex = RegExp(r'[0-9]');
  final lowerCaseRegex = RegExp(r"[a-z]");
  final specialSymbolRegex = RegExp(r"[&@#%$^!*]");

  var hasLength = false;
  var hasNumber = false;
  var hasLowerCase = false;
  var hasSpecialChar = false;
  var isObscured = true;

  @override
  void initState() {
    super.initState();
    controller = OverlayPortalController();
    fieldKey = GlobalKey();
    node = FocusNode();
    textController = TextEditingController();

    //TODO: Validation should be triggered on text change.

    node.addListener(() {
      if (node.hasFocus) {
        widget.onResetError();
        controller.show();
        _isFocused = true;
      } else {
        _isFocused = false;
        controller.hide();
        widget.onValidate(textController.text,
            hasLength && hasNumber && hasLowerCase && hasSpecialChar);
      }
    });
  }

  @override
  void dispose() {
    node.dispose();
    textController.dispose();
    super.dispose();
  }

  TextStyle getValidationStyle(bool validator) {
    return TextStyle(color: validator ? Colors.green : Colors.black);
  }

  void toggleVisibility() {
    setState(() {
      isObscured = !isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return OverlayPortal(
      controller: controller,
      overlayChildBuilder: (context) {
        var box = fieldKey.currentContext?.findRenderObject() as RenderBox;
        var offest = box.localToGlobal(Offset.zero);

        ({double? left, double? top, double? right, double? bottom}) rect;

        rect = switch (widget.alignment) {
          PSIAlignment.bottom => (
              left: offest.dx,
              top: offest.dy.toDouble() + box.size.height + 10,
              right: null,
              bottom: null,
            ),
          PSIAlignment.left => (
              left: offest.dx - 300 - 10,
              top: offest.dy.toDouble(),
              right: null,
              bottom: null,
            ),
          PSIAlignment.right => (
              left: offest.dx + box.size.width + 10,
              top: offest.dy.toDouble(),
              right: null,
              bottom: null,
            ),
        };

        return Positioned(
          width: widget.matchWidth ? box.size.width : 300,
          left: rect.left,
          top: rect.top,
          bottom: rect.bottom,
          right: rect.right,
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey[300]!,
              border: Border.all(width: 1, color: Colors.grey[400]!),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "The password must have: ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "• At least 8 characters",
                  style: getValidationStyle(hasLength),
                ),
                Text(
                  "• At least one number",
                  style: getValidationStyle(hasNumber),
                ),
                Text(
                  "• At least one lowercase letter",
                  style: getValidationStyle(hasLowerCase),
                ),
                Text(
                  "• At least one special character \n(&, @, #, %, \$, ^, !, *)",
                  style: getValidationStyle(hasSpecialChar),
                ),
              ],
            ),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                    child: Text(
                      valueOrDefault<String>(
                        widget.label,
                        'please enter title',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Arial',
                            color: widget.hasError
                                ? FlutterFlowTheme.of(context).error
                                : FlutterFlowTheme.of(context).primaryText,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                  child: Text(
                    '*',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Arial',
                          color: FlutterFlowTheme.of(context).error,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                if (widget.infoMessage != '')
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                    child: AlignedTooltip(
                      content: Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            widget.infoMessage,
                            style:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      fontFamily: 'Arial',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      useGoogleFonts: false,
                                    ),
                          )),
                      offset: 4,
                      preferredDirection: AxisDirection.up,
                      borderRadius: BorderRadius.circular(8),
                      backgroundColor: FlutterFlowTheme.of(context).primaryText,
                      elevation: 4,
                      tailBaseWidth: 24,
                      tailLength: 12,
                      waitDuration: Duration(milliseconds: 100),
                      showDuration: Duration(milliseconds: 100),
                      triggerMode: TooltipTriggerMode.tap,
                      child: FaIcon(
                        FontAwesomeIcons.solidQuestionCircle,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 16.5,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Container(
              height: 56,
              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: () {
                    if (widget.hasError) {
                      return FlutterFlowTheme.of(context).error;
                    } else {
                      return FlutterFlowTheme.of(context).primaryText;
                    }
                  }(),
                  width: _isFocused ? 2 : 1,
                ),
              ),
              child: Center(
                  child: TextField(
                cursorColor: Color(0xFF042757),
                controller: textController,
                key: fieldKey,
                focusNode: node,
                obscureText: isObscured,
                obscuringCharacter: "*",
                textAlignVertical: TextAlignVertical.center,
                style: TextStyle(
                  // color:  Colors.black,
                  color: widget.hasError
                      ? FlutterFlowTheme.of(context).error
                      : Colors.black,
                  fontSize: 16,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  isDense: true,
                  hintStyle: FlutterFlowTheme.of(context).labelMedium,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  suffixIcon: widget.hasError
                      ? Icon(Icons.error_outline,
                          color: Color(0xFFB70100), size: 24)
                      : InkWell(
                          onTap: toggleVisibility,
                          child: Icon(
                            isObscured
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: Colors.black,
                            size: 24,
                          )),
                ),
                onChanged: (value) {
                  widget.onValueChanged(value);
                  hasLength = value.length >= 8;
                  hasNumber = numberRegex.hasMatch(value);
                  hasLowerCase = lowerCaseRegex.hasMatch(value);
                  hasSpecialChar = specialSymbolRegex.hasMatch(value);

                  /// * Update the UI for changes
                  setState(() {});
                },
                onTap: () {
                  setState(() {
                    // _isFocused = true;
                    // // request focus
                    FocusScope.of(context).requestFocus(node);
                  });
                },
                onEditingComplete: () {
                  setState(() {
                    // _isFocused = false;
                    // unfocus
                    FocusScope.of(context).unfocus();
                  });
                },
                onTapOutside: (event) {
                  setState(() {
                    // _isFocused = false;
                    // unfocus
                    FocusScope.of(context).unfocus();
                  });
                },
              ))),
          if (widget.hasError)
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
              child: Text(
                widget.errorMsg ?? "",
                style: const TextStyle(
                  color: Color(0xFFB70100),
                  fontSize: 14,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
        ],
      ),
    );
  }
}
