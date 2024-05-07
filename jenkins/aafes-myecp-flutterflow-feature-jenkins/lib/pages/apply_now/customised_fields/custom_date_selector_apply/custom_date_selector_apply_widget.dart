import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'custom_date_selector_apply_model.dart';
export 'custom_date_selector_apply_model.dart';

class CustomDateSelectorApplyWidget extends StatefulWidget {
  const CustomDateSelectorApplyWidget({
    super.key,
    required this.enabled,
    bool? isRequired,
    this.infoMessage,
    this.errorMessage,
    bool? hasError,
    this.validate,
    required this.resetError,
  })  : isRequired = isRequired ?? false,
        hasError = hasError ?? false;

  final bool? enabled;
  final bool isRequired;
  final String? infoMessage;
  final String? errorMessage;
  final bool hasError;
  final Future Function()? validate;
  final Future Function()? resetError;

  @override
  State<CustomDateSelectorApplyWidget> createState() =>
      _CustomDateSelectorApplyWidgetState();
}

class _CustomDateSelectorApplyWidgetState
    extends State<CustomDateSelectorApplyWidget> {
  late CustomDateSelectorApplyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomDateSelectorApplyModel());

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
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Years',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Arial',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
                FlutterFlowDropDown<String>(
                  controller: _model.cardExpiryMonthDropDownValueController ??=
                      FormFieldController<String>(null),
                  options:
                      widget.enabled! ? functions.generateNumberList(99) : [],
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
              ].divide(const SizedBox(height: 4.0)),
            ),
          ),
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Months',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Arial',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
                FlutterFlowDropDown<String>(
                  controller: _model.cardExpiryYearDropDownValueController ??=
                      FormFieldController<String>(null),
                  options:
                      widget.enabled! ? functions.generateNumberList(11) : [],
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
              ].divide(const SizedBox(height: 4.0)),
            ),
          ),
        ].divide(const SizedBox(width: 8.0)),
      ),
    );
  }
}
