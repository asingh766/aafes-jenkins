import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'custom_state_selector_model.dart';
export 'custom_state_selector_model.dart';

class CustomStateSelectorWidget extends StatefulWidget {
  const CustomStateSelectorWidget({
    super.key,
    required this.title,
    required this.states,
    bool? enable,
  }) : enable = enable ?? true;

  final String? title;
  final List<StateStruct>? states;
  final bool enable;

  @override
  State<CustomStateSelectorWidget> createState() =>
      _CustomStateSelectorWidgetState();
}

class _CustomStateSelectorWidgetState extends State<CustomStateSelectorWidget> {
  late CustomStateSelectorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomStateSelectorModel());

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
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Colors.transparent,
        ),
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
                      'title',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Arial',
                          color: FlutterFlowTheme.of(context).secondaryText,
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
          FlutterFlowDropDown<int>(
            controller: _model.stateDropDownValueController ??=
                FormFieldController<int>(
              _model.stateDropDownValue ??= -1,
            ),
            options: List<int>.from(widget.states!.map((e) => e.id).toList()),
            optionLabels: widget.states!.map((e) => e.state).toList(),
            onChanged: (val) => setState(() => _model.stateDropDownValue = val),
            height: 56.0,
            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Arial',
                  color: FlutterFlowTheme.of(context).black,
                  fontSize: 14.0,
                  letterSpacing: 0.0,
                  useGoogleFonts: false,
                ),
            hintText: 'Select',
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: FlutterFlowTheme.of(context).black,
              size: 22.0,
            ),
            fillColor: widget.enable
                ? FlutterFlowTheme.of(context).primaryBackground
                : FlutterFlowTheme.of(context).secondaryBackground,
            elevation: 2.0,
            borderColor: widget.enable
                ? Colors.black
                : FlutterFlowTheme.of(context).secondaryBackground,
            borderWidth: 1.0,
            borderRadius: 4.0,
            margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
            hidesUnderline: true,
            isOverButton: true,
            isSearchable: false,
            isMultiSelect: false,
            labelText: '',
            labelTextStyle: TextStyle(
              color: FlutterFlowTheme.of(context).accent3,
            ),
          ),
        ].divide(const SizedBox(height: 4.0)),
      ),
    );
  }
}
