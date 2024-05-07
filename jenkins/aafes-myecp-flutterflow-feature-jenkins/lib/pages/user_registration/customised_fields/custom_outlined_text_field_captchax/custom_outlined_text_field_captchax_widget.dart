import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'custom_outlined_text_field_captchax_model.dart';
export 'custom_outlined_text_field_captchax_model.dart';

class CustomOutlinedTextFieldCaptchaxWidget extends StatefulWidget {
  const CustomOutlinedTextFieldCaptchaxWidget({
    super.key,
    required this.enabled,
    required this.onIconTap,
    bool? hasIconAction,
    String? errorMessage,
    bool? hasError,
    this.validate,
    required this.resetError,
    this.icon,
    this.infoMessage,
    required this.use,
    String? captchaValue,
    required this.refreshCaptchaAction,
  })  : hasIconAction = hasIconAction ?? false,
        errorMessage = errorMessage ?? '',
        hasError = hasError ?? true,
        captchaValue = captchaValue ?? '';

  final bool? enabled;
  final Future Function()? onIconTap;
  final bool hasIconAction;
  final String errorMessage;
  final bool hasError;
  final Future Function()? validate;
  final Future Function()? resetError;
  final Widget? icon;
  final String? infoMessage;
  final String? use;
  final String captchaValue;
  final Future Function()? refreshCaptchaAction;

  @override
  State<CustomOutlinedTextFieldCaptchaxWidget> createState() =>
      _CustomOutlinedTextFieldCaptchaxWidgetState();
}

class _CustomOutlinedTextFieldCaptchaxWidgetState
    extends State<CustomOutlinedTextFieldCaptchaxWidget> {
  late CustomOutlinedTextFieldCaptchaxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomOutlinedTextFieldCaptchaxModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
    _model.textFieldFocusNode!.addListener(
      () async {
        setState(() {
          _model.hasFocus = (_model.textFieldFocusNode?.hasFocus ?? false);
        });
        if ((_model.textFieldFocusNode?.hasFocus ?? false)) {
          await widget.resetError?.call();
        } else {
          await widget.validate?.call();
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
              if (widget.captchaValue != '')
                Align(
                  alignment: const AlignmentDirectional(1.0, -1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiary,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        widget.captchaValue,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Arial',
                              color: Colors.white,
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: false,
                            ),
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
                    await widget.refreshCaptchaAction?.call();
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
                          } else if (!widget.hasError && !widget.enabled!) {
                            return FlutterFlowTheme.of(context).alternate;
                          } else if (_model.hasFocus) {
                            return Colors.transparent;
                          } else {
                            return FlutterFlowTheme.of(context).black;
                          }
                        }(),
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: TextFormField(
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
                                    color: FlutterFlowTheme.of(context).accent3,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                              contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 2.0, 0.0, 2.0),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Arial',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                            cursorColor: Colors.black,
                            validator: _model.textControllerValidator
                                .asValidator(context),
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
              if (widget.use == 'registration')
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                  child: Text(
                    'Please enter the text as shown above before clicking on “Next”',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      color: widget.hasError
                          ? FlutterFlowTheme.of(context).error
                          : Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              if (widget.use == 'apply')
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                  child: Text(
                    'Please enter the string shown above.',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      color: widget.hasError
                          ? FlutterFlowTheme.of(context).error
                          : FlutterFlowTheme.of(context).secondaryText,
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
            ],
          ),
        ].divide(const SizedBox(height: 16.0)),
      ),
    );
  }
}
