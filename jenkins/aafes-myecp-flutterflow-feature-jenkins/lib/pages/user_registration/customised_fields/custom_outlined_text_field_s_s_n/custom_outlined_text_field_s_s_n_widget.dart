import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_outlined_text_field_s_s_n_model.dart';
export 'custom_outlined_text_field_s_s_n_model.dart';

class CustomOutlinedTextFieldSSNWidget extends StatefulWidget {
  const CustomOutlinedTextFieldSSNWidget({
    super.key,
    required this.enabled,
    required this.title,
    required this.icon,
    required this.onIconTap,
    bool? hasIconAction,
    bool? isRequired,
    required this.infoMessage,
    String? errorMessage,
    bool? hasError,
    this.validate,
    required this.resetError,
    this.hint,
    this.initialValue,
  })  : hasIconAction = hasIconAction ?? false,
        isRequired = isRequired ?? false,
        errorMessage = errorMessage ?? '',
        hasError = hasError ?? true;

  final bool? enabled;
  final String? title;
  final Widget? icon;
  final Future Function()? onIconTap;
  final bool hasIconAction;
  final bool isRequired;
  final String? infoMessage;
  final String errorMessage;
  final bool hasError;
  final Future Function()? validate;
  final Future Function()? resetError;
  final String? hint;
  final String? initialValue;

  @override
  State<CustomOutlinedTextFieldSSNWidget> createState() =>
      _CustomOutlinedTextFieldSSNWidgetState();
}

class _CustomOutlinedTextFieldSSNWidgetState
    extends State<CustomOutlinedTextFieldSSNWidget> {
  late CustomOutlinedTextFieldSSNModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomOutlinedTextFieldSSNModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.initialValue != null && widget.initialValue != '') {
        _model.updatePage(() {
          _model.ssnValue = widget.initialValue;
        });
      }
    });

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
        mainAxisAlignment: MainAxisAlignment.start,
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
                if (widget.infoMessage != null && widget.infoMessage != '')
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
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
                      backgroundColor: FlutterFlowTheme.of(context).primaryText,
                      elevation: 4.0,
                      tailBaseWidth: 24.0,
                      tailLength: 12.0,
                      waitDuration: const Duration(milliseconds: 100),
                      showDuration: const Duration(milliseconds: 100),
                      triggerMode: TooltipTriggerMode.tap,
                      child: FaIcon(
                        FontAwesomeIcons.solidQuestionCircle,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 14.0,
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
                    color: _model.hasFocus && !widget.hasError
                        ? Colors.black
                        : Colors.transparent,
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
                    Flexible(
                      child: SizedBox(
                        width: double.infinity,
                        height: 56.0,
                        child: custom_widgets.MaskedTextField(
                          width: double.infinity,
                          height: 56.0,
                          mask: '###-##-####',
                          escapeCharacter: '-',
                          maxLength: 11,
                          enabled: widget.enabled!,
                          hint: widget.hint,
                          initialValue: widget.initialValue,
                          onChanged: (data) async {
                            _model.updatePage(() {
                              _model.ssnValue = data;
                            });
                          },
                          resetError: () async {
                            await widget.resetError?.call();
                          },
                          onValidate: () async {
                            await widget.validate?.call();
                          },
                          onFocusChanged: (hasFocus) async {
                            setState(() {
                              _model.hasFocus = hasFocus;
                            });
                          },
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
          if (widget.hasError)
            Flexible(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                child: Text(
                  widget.errorMessage,
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
