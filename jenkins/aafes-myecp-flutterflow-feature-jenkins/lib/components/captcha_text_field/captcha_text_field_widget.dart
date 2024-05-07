import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'captcha_text_field_model.dart';
export 'captcha_text_field_model.dart';

class CaptchaTextFieldWidget extends StatefulWidget {
  const CaptchaTextFieldWidget({
    super.key,
    String? textFieldLabel,
    bool? isRequiredField,
    String? title,
    bool? isDatePicker,
  })  : textFieldLabel = textFieldLabel ?? '',
        isRequiredField = isRequiredField ?? true,
        title = title ?? '[title]',
        isDatePicker = isDatePicker ?? false;

  final String textFieldLabel;
  final bool isRequiredField;
  final String title;
  final bool isDatePicker;

  @override
  State<CaptchaTextFieldWidget> createState() => _CaptchaTextFieldWidgetState();
}

class _CaptchaTextFieldWidgetState extends State<CaptchaTextFieldWidget> {
  late CaptchaTextFieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CaptchaTextFieldModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 10.0),
            child: TextFormField(
              controller: _model.textController,
              focusNode: _model.textFieldFocusNode,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                labelText: widget.textFieldLabel,
                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Arial',
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Arial',
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primaryText,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Arial',
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
              validator: _model.textControllerValidator.asValidator(context),
            ),
          ),
          Text(
            'Please enter the string as shown above before clicking on \"Validate\"',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Arial',
                  letterSpacing: 0.0,
                  useGoogleFonts: false,
                ),
          ),
        ],
      ),
    );
  }
}
