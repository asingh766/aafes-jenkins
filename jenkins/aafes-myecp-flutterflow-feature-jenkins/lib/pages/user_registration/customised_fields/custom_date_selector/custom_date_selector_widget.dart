import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_date_selector_model.dart';
export 'custom_date_selector_model.dart';

class CustomDateSelectorWidget extends StatefulWidget {
  const CustomDateSelectorWidget({
    super.key,
    required this.enabled,
    required this.title,
    bool? isRequired,
    this.infoMessage,
    this.errorMessage,
    bool? hasError,
    this.validate,
    required this.resetError,
  })  : isRequired = isRequired ?? false,
        hasError = hasError ?? false;

  final bool? enabled;
  final String? title;
  final bool isRequired;
  final String? infoMessage;
  final String? errorMessage;
  final bool hasError;
  final Future Function()? validate;
  final Future Function()? resetError;

  @override
  State<CustomDateSelectorWidget> createState() =>
      _CustomDateSelectorWidgetState();
}

class _CustomDateSelectorWidgetState extends State<CustomDateSelectorWidget> {
  late CustomDateSelectorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomDateSelectorModel());

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
          Row(
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
                        style: FlutterFlowTheme.of(context).bodySmall.override(
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
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: FlutterFlowDropDown<String>(
                  controller: _model.cardExpiryMonthDropDownValueController ??=
                      FormFieldController<String>(null),
                  options: widget.enabled! ? FFAppConstants.months : [],
                  onChanged: (val) async {
                    setState(() => _model.cardExpiryMonthDropDownValue = val);
                    setState(() {
                      _model.month = _model.cardExpiryMonthDropDownValue;
                    });
                  },
                  height: 56.0,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Arial',
                        color: Colors.black,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                  hintText: 'Month',
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 22.0,
                  ),
                  fillColor: widget.enabled!
                      ? FlutterFlowTheme.of(context).primaryBackground
                      : FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 2.0,
                  borderColor: widget.enabled!
                      ? FlutterFlowTheme.of(context).secondaryText
                      : FlutterFlowTheme.of(context).alternate,
                  borderWidth: 1.0,
                  borderRadius: 4.0,
                  margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                  hidesUnderline: true,
                  isOverButton: true,
                  isSearchable: false,
                  isMultiSelect: false,
                ),
              ),
              Flexible(
                child: FlutterFlowDropDown<String>(
                  controller: _model.cardExpiryYearDropDownValueController ??=
                      FormFieldController<String>(null),
                  options: widget.enabled!
                      ? functions.getYearsListFromCurrentYear()
                      : [],
                  onChanged: (val) async {
                    setState(() => _model.cardExpiryYearDropDownValue = val);
                    setState(() {
                      _model.year = _model.cardExpiryYearDropDownValue;
                    });
                  },
                  height: 56.0,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Arial',
                        color: Colors.black,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                  hintText: 'Year',
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 22.0,
                  ),
                  fillColor: widget.enabled!
                      ? FlutterFlowTheme.of(context).primaryBackground
                      : FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 2.0,
                  borderColor: widget.enabled!
                      ? FlutterFlowTheme.of(context).secondaryText
                      : FlutterFlowTheme.of(context).alternate,
                  borderWidth: 1.0,
                  borderRadius: 4.0,
                  margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                  hidesUnderline: true,
                  isOverButton: true,
                  isSearchable: false,
                  isMultiSelect: false,
                ),
              ),
            ].divide(const SizedBox(width: 8.0)),
          ),
        ].divide(const SizedBox(height: 4.0)),
      ),
    );
  }
}
