import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'outline_text_field_model.dart';
export 'outline_text_field_model.dart';

class OutlineTextFieldWidget extends StatefulWidget {
  const OutlineTextFieldWidget({
    super.key,
    bool? disabled,
    this.title,
    this.icon,
    bool? hasIconAction,
    this.onIconTap,
    bool? isRequired,
    this.infoMessage,
    this.errorMessage,
    required this.resetError,
    this.onValidate,
    bool? hasError,
    required this.width,
  })  : disabled = disabled ?? false,
        hasIconAction = hasIconAction ?? false,
        isRequired = isRequired ?? false,
        hasError = hasError ?? false;

  final bool disabled;
  final String? title;
  final Widget? icon;
  final bool hasIconAction;
  final Future Function()? onIconTap;
  final bool isRequired;
  final String? infoMessage;
  final String? errorMessage;
  final Future Function()? resetError;
  final Future Function()? onValidate;
  final bool hasError;
  final double? width;

  @override
  State<OutlineTextFieldWidget> createState() => _OutlineTextFieldWidgetState();
}

class _OutlineTextFieldWidgetState extends State<OutlineTextFieldWidget> {
  late OutlineTextFieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OutlineTextFieldModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
    _model.textFieldFocusNode!.addListener(
      () async {
        setState(() {
          _model.hasFocus = (_model.textFieldFocusNode?.hasFocus ?? false);
        });
        if ((_model.textFieldFocusNode?.hasFocus ?? false) == false) {
          await widget.onValidate?.call();
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
      width: widget.width,
      height: 104.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(0.0),
        shape: BoxShape.rectangle,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (widget.title != null && widget.title != '')
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                    child: Text(
                      widget.title!,
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Arial',
                            color: widget.hasError == true
                                ? FlutterFlowTheme.of(context).error
                                : FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  if (widget.isRequired)
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
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
                  if (widget.infoMessage != null && widget.infoMessage != '')
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                      child: AlignedTooltip(
                        content: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            widget.infoMessage!,
                            style:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      fontFamily: 'Arial',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                          ),
                        ),
                        offset: 4.0,
                        preferredDirection: AxisDirection.up,
                        borderRadius: BorderRadius.circular(8.0),
                        backgroundColor:
                            FlutterFlowTheme.of(context).primaryText,
                        elevation: 4.0,
                        tailBaseWidth: 24.0,
                        tailLength: 12.0,
                        waitDuration: const Duration(milliseconds: 100),
                        showDuration: const Duration(milliseconds: 100),
                        triggerMode: TooltipTriggerMode.tap,
                        child: FaIcon(
                          FontAwesomeIcons.solidQuestionCircle,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 16.0,
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
                  color:
                      widget.disabled ? const Color(0xFFF1F1F1) : Colors.transparent,
                  borderRadius: BorderRadius.circular(4.0),
                  border: Border.all(
                    color: () {
                      if (widget.hasError) {
                        return FlutterFlowTheme.of(context).error;
                      } else if (_model.hasFocus) {
                        return Colors.transparent;
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
                        child: SizedBox(
                          width: double.infinity,
                          child: TextFormField(
                            controller: _model.textController,
                            focusNode: _model.textFieldFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.textController',
                              const Duration(milliseconds: 100),
                              () => setState(() {}),
                            ),
                            autofocus: true,
                            textCapitalization: TextCapitalization.sentences,
                            textInputAction: TextInputAction.next,
                            readOnly: widget.disabled,
                            obscureText: false,
                            decoration: const InputDecoration(
                              isDense: true,
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
                                  borderWidth: 0.0,
                                  buttonSize: 48.0,
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
          if (widget.hasError)
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
              child: Text(
                widget.errorMessage!,
                style: GoogleFonts.getFont(
                  'Outfit',
                  color: FlutterFlowTheme.of(context).error,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
