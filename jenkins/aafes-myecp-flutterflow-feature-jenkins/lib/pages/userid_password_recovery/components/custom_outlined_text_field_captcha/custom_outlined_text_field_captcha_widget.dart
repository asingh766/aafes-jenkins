import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_outlined_text_field_captcha_model.dart';
export 'custom_outlined_text_field_captcha_model.dart';

class CustomOutlinedTextFieldCaptchaWidget extends StatefulWidget {
  const CustomOutlinedTextFieldCaptchaWidget({
    super.key,
    required this.enabled,
    this.icon,
    required this.onIconTap,
    bool? hasIconAction,
    bool? isRequired,
    this.infoMessage,
    bool? hasError,
    this.validate,
    required this.resetError,
    required this.captchaValue,
    required this.refreshIconAction,
  })  : hasIconAction = hasIconAction ?? false,
        isRequired = isRequired ?? false,
        hasError = hasError ?? false;

  final bool? enabled;
  final Widget? icon;
  final Future Function()? onIconTap;
  final bool hasIconAction;
  final bool isRequired;
  final String? infoMessage;
  final bool hasError;
  final Future Function()? validate;
  final Future Function()? resetError;
  final String? captchaValue;
  final Future Function()? refreshIconAction;

  @override
  State<CustomOutlinedTextFieldCaptchaWidget> createState() =>
      _CustomOutlinedTextFieldCaptchaWidgetState();
}

class _CustomOutlinedTextFieldCaptchaWidgetState
    extends State<CustomOutlinedTextFieldCaptchaWidget> {
  late CustomOutlinedTextFieldCaptchaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomOutlinedTextFieldCaptchaModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
    _model.textFieldFocusNode!.addListener(
      () async {
        setState(() {
          _model.hasFocus = (_model.textFieldFocusNode?.hasFocus ?? false);
        });
        if ((_model.textFieldFocusNode?.hasFocus ?? false) == false) {
          await widget.validate?.call();
        } else {
          await widget.resetError?.call();
        }
      },
    );
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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(0.0),
        shape: BoxShape.rectangle,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (widget.captchaValue != null && widget.captchaValue != '')
                Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiary,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      widget.captchaValue!,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Arial',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await widget.refreshIconAction?.call();
                  },
                  child: Icon(
                    Icons.refresh_sharp,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 22.0,
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 56.0,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(
                        color:
                            _model.hasFocus ? Colors.black : Colors.transparent,
                        width: 2.0,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 56.0,
                    decoration: BoxDecoration(
                      color: widget.enabled!
                          ? Colors.transparent
                          : FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(
                        color: () {
                          if (widget.hasError) {
                            return FlutterFlowTheme.of(context).error;
                          } else if (_model.hasFocus) {
                            return Colors.transparent;
                          } else if (!widget.hasError && !widget.enabled!) {
                            return FlutterFlowTheme.of(context).alternate;
                          } else {
                            return Colors.black;
                          }
                        }(),
                        width: 1.0,
                      ),
                    ),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: TextFormField(
                              key: const ValueKey(
                                  'recoverUserIDPageCaptchafieldId_jnol'),
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.textController',
                                const Duration(milliseconds: 100),
                                () async {
                                  _model.updatePage(() {
                                    _model.value = _model.textController.text;
                                  });
                                },
                              ),
                              autofocus: false,
                              textCapitalization: TextCapitalization.none,
                              textInputAction: TextInputAction.next,
                              readOnly: !widget.enabled!,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: false,
                                hintText: 'Enter Captcha Code',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Arial',
                                      color:
                                          FlutterFlowTheme.of(context).accent3,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                focusedErrorBorder: InputBorder.none,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Arial',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                              cursorColor: FlutterFlowTheme.of(context).primary,
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        Builder(
                          builder: (context) {
                            if (widget.hasError) {
                              return FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 20.0,
                                buttonSize: 40.0,
                                icon: Icon(
                                  Icons.error_outlined,
                                  color: FlutterFlowTheme.of(context).error,
                                  size: 22.0,
                                ),
                                onPressed: true
                                    ? null
                                    : () {
                                        print('IconButton pressed ...');
                                      },
                              );
                            } else {
                              return Builder(
                                builder: (context) {
                                  if (widget.hasIconAction) {
                                    return FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30.0,
                                      borderWidth: 0.0,
                                      buttonSize: 40.0,
                                      icon: widget.icon!,
                                      onPressed: () async {
                                        await widget.onIconTap?.call();
                                      },
                                    );
                                  } else {
                                    return Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: widget.icon!,
                                    );
                                  }
                                },
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                'Please enter the string as shown above before clicking on \"Validate\"',
                style: GoogleFonts.getFont(
                  'Outfit',
                  color: widget.hasError
                      ? FlutterFlowTheme.of(context).error
                      : FlutterFlowTheme.of(context).secondaryText,
                  fontWeight: FontWeight.w300,
                  fontSize: 14.0,
                ),
              ),
            ].divide(const SizedBox(height: 6.0)),
          ),
        ].divide(const SizedBox(height: 12.0)),
      ),
    );
  }
}
