import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_outlined_text_field_d_o_b_model.dart';
export 'custom_outlined_text_field_d_o_b_model.dart';

class CustomOutlinedTextFieldDOBWidget extends StatefulWidget {
  const CustomOutlinedTextFieldDOBWidget({
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

  @override
  State<CustomOutlinedTextFieldDOBWidget> createState() =>
      _CustomOutlinedTextFieldDOBWidgetState();
}

class _CustomOutlinedTextFieldDOBWidgetState
    extends State<CustomOutlinedTextFieldDOBWidget> {
  late CustomOutlinedTextFieldDOBModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomOutlinedTextFieldDOBModel());

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
    return Form(
      key: _model.formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(0.0),
          shape: BoxShape.rectangle,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
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
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: TextFormField(
                            controller: _model.textController,
                            focusNode: _model.textFieldFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.textController',
                              const Duration(milliseconds: 200),
                              () async {
                                await widget.resetError?.call();
                                setState(() {
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
                              hintText: 'MM/DD/YYYY',
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
                                  0.0, 2.0, 0.0, 2.0),
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
                            inputFormatters: [_model.textFieldMask],
                          ),
                        ),
                      ),
                      if (true)
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await widget.onIconTap?.call();
                          },
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: custom_widgets.CustomDatePicker(
                              width: 50.0,
                              height: 50.0,
                              result: (data) async {
                                setState(() {
                                  _model.textController?.clear();
                                });
                                setState(() {
                                  _model.textController?.text = data;
                                });
                                setState(() {
                                  _model.value = data;
                                });
                                await widget.resetError?.call();
                              },
                            ),
                          ),
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
      ),
    );
  }
}
