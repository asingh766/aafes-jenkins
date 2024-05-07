import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'my_account_textfield_model.dart';
export 'my_account_textfield_model.dart';

class MyAccountTextfieldWidget extends StatefulWidget {
  const MyAccountTextfieldWidget({
    super.key,
    required this.enabled,
    required this.title,
    this.icon,
    required this.onIconTap,
    bool? hasIconAction,
    bool? isRequired,
    this.infoMessage,
    this.errorMessage,
    bool? hasError,
    this.validate,
    required this.resetError,
    this.onChange,
  })  : hasIconAction = hasIconAction ?? false,
        isRequired = isRequired ?? false,
        hasError = hasError ?? false;

  final bool? enabled;
  final String? title;
  final Widget? icon;
  final Future Function()? onIconTap;
  final bool hasIconAction;
  final bool isRequired;
  final String? infoMessage;
  final String? errorMessage;
  final bool hasError;
  final Future Function()? validate;
  final Future Function()? resetError;
  final Future Function(String? value)? onChange;

  @override
  State<MyAccountTextfieldWidget> createState() =>
      _MyAccountTextfieldWidgetState();
}

class _MyAccountTextfieldWidgetState extends State<MyAccountTextfieldWidget> {
  late MyAccountTextfieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyAccountTextfieldModel());

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
      height: 104.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(0.0),
        shape: BoxShape.rectangle,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.title,
                        'please enter title',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Arial',
                            color: widget.hasError
                                ? FlutterFlowTheme.of(context).error
                                : FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                  child: Text(
                    '*',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Arial',
                          color: FlutterFlowTheme.of(context).error,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 56.0,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(4.0),
                  border: Border.all(
                    color: _model.hasFocus ? Colors.black : Colors.transparent,
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
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: TextFormField(
                          key: const ValueKey('recoverUserIDPageLastNameID_jnol'),
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.textController',
                            const Duration(milliseconds: 100),
                            () async {
                              _model.updatePage(() {
                                _model.value = _model.textController.text;
                              });
                              await widget.onChange?.call(
                                _model.value,
                              );
                            },
                          ),
                          autofocus: true,
                          textCapitalization: TextCapitalization.none,
                          textInputAction: TextInputAction.next,
                          readOnly: !widget.enabled!,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: false,
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Arial',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
          Flexible(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
              child: Text(
                widget.errorMessage!,
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
