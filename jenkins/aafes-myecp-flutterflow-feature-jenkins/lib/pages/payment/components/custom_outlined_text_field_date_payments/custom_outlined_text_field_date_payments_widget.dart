import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_outlined_text_field_date_payments_model.dart';
export 'custom_outlined_text_field_date_payments_model.dart';

class CustomOutlinedTextFieldDatePaymentsWidget extends StatefulWidget {
  const CustomOutlinedTextFieldDatePaymentsWidget({
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
    bool? calendarHasFocus,
    bool? isShowInfoIcon,
    Color? titleColor,
  })  : hasIconAction = hasIconAction ?? false,
        isRequired = isRequired ?? false,
        hasError = hasError ?? false,
        calendarHasFocus = calendarHasFocus ?? true,
        isShowInfoIcon = isShowInfoIcon ?? false,
        titleColor = titleColor ?? const Color(0xFF14181B);

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
  final bool calendarHasFocus;
  final bool isShowInfoIcon;
  final Color titleColor;

  @override
  State<CustomOutlinedTextFieldDatePaymentsWidget> createState() =>
      _CustomOutlinedTextFieldDatePaymentsWidgetState();
}

class _CustomOutlinedTextFieldDatePaymentsWidgetState
    extends State<CustomOutlinedTextFieldDatePaymentsWidget> {
  late CustomOutlinedTextFieldDatePaymentsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => CustomOutlinedTextFieldDatePaymentsModel());

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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: TextFormField(
                          key: const ValueKey('recoverUserIDPageDateOfBirthId_jnol'),
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.textController',
                            const Duration(milliseconds: 100),
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
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                    SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: custom_widgets.CustomDatePickerPayments(
                        width: 50.0,
                        height: 50.0,
                        result: (data) async {
                          await widget.onIconTap?.call();
                          setState(() {
                            _model.textController?.text = data;
                          });
                          setState(() {
                            _model.value = data;
                          });
                        },
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
