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

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    this.width,
    this.height,
    required this.alignment,
    required this.matchWidth,
    required this.label,
    required this.error,
    required this.hasError,
    required this.onFocusChange,
    required this.onResetError,
  });

  final double? width;
  final double? height;
  final PSIAlignment alignment;
  final bool matchWidth;
  final String label;
  final String error;
  final bool hasError;
  final Future Function() onFocusChange;
  final Future Function() onResetError;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
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

  TextStyle getValidationStyle(bool validator) {
    return TextStyle(color: validator ? Colors.green : Colors.black);
  }

  void toggleVisibility() {
    setState(() {
      isObscured = !isObscured;
    });
  }

  @override
  void initState() {
    super.initState();
    controller = OverlayPortalController();
    fieldKey = GlobalKey();
    node = FocusNode();
    textController = TextEditingController();

    node.addListener(() {
      _isFocused = node.hasFocus;

      if (node.hasFocus) {
        controller.show();
        widget.onResetError();
      } else {
        controller.hide();
        widget.onFocusChange();
      }
    });
  }

  @override
  void dispose() {
    node.dispose();
    textController.dispose();
    super.dispose();
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
                SizedBox(height: 10),
                OverlayListItem(
                  isValid: hasLength,
                  title: "At least 8 characters",
                ),
                OverlayListItem(
                  isValid: hasNumber,
                  title: "At least one number",
                ),
                OverlayListItem(
                  isValid: hasLowerCase,
                  title: "At least one lowercase letter",
                ),
                OverlayListItem(
                  isValid: hasSpecialChar,
                  title:
                      "At least one special character \n(&, @, #, %, \$, ^, !, *)",
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
              ],
            ),
          ),
          Container(
            height: 56,
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: widget.hasError
                    ? FlutterFlowTheme.of(context).error
                    : FlutterFlowTheme.of(context).primaryText,
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
                  hintStyle: FlutterFlowTheme.of(context).labelMedium,
                  enabledBorder: OutlineInputBorder(
                      gapPadding: 0,
                      borderSide: BorderSide(color: Colors.transparent)),
                  focusedBorder: OutlineInputBorder(
                      gapPadding: 0,
                      borderSide: BorderSide(color: Colors.transparent)),
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
                  hasLength = value.length >= 8;
                  hasNumber = numberRegex.hasMatch(value);
                  hasLowerCase = lowerCaseRegex.hasMatch(value);
                  hasSpecialChar = specialSymbolRegex.hasMatch(value);

                  FFAppState().update(() {
                    FFAppState()
                      ..isPasswordValid = hasLength &&
                          hasNumber &&
                          hasLowerCase &&
                          hasSpecialChar
                      ..password = textController.text;
                  });
                },
              ),
            ),
          ),
          if (widget.hasError)
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
              child: Text(
                widget.error,
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

class OverlayListItem extends StatelessWidget {
  const OverlayListItem({
    super.key,
    required this.isValid,
    required this.title,
  });

  final bool isValid;
  final String title;

  TextStyle getValidationStyle(bool validator) {
    return TextStyle(color: validator ? Colors.green : Colors.black);
  }

  Image getPrefixIcon(bool validator) {
    return Image.network(
      validator
          ? "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/my-e-c-p-rdr0z6/assets/mxrseg7223qe/Check.png"
          : "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/my-e-c-p-rdr0z6/assets/x85v4iopkaa1/Dot.png",
      fit: BoxFit.cover,
      width: 16,
      height: 16,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        getPrefixIcon(isValid),
        SizedBox(width: 4),
        Text(
          title,
          style: getValidationStyle(isValid),
        ),
      ],
    );
  }
}
