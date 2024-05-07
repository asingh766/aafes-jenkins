import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'recent_activity_column_table_model.dart';
export 'recent_activity_column_table_model.dart';

class RecentActivityColumnTableWidget extends StatefulWidget {
  const RecentActivityColumnTableWidget({super.key});

  @override
  State<RecentActivityColumnTableWidget> createState() =>
      _RecentActivityColumnTableWidgetState();
}

class _RecentActivityColumnTableWidgetState
    extends State<RecentActivityColumnTableWidget> {
  late RecentActivityColumnTableModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecentActivityColumnTableModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width <= 430.0 ? 70.0 : 131.0,
          height: 36.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).accent2,
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 9.0, 8.0, 8.0),
            child: Text(
              'DATE',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Arial',
                    color: Colors.black,
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.sizeOf(context).width <= 432.0 ? 126.0 : 162.0,
          height: 36.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).accent2,
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 9.0, 8.0, 8.0),
            child: Text(
              'DESCRIPTION',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Arial',
                    color: Colors.black,
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
            ),
          ),
        ),
        if (responsiveVisibility(
          context: context,
          phone: false,
        ))
          Flexible(
            child: Container(
              width: () {
                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                  return true;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointMedium) {
                  return false;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointLarge) {
                  return false;
                } else {
                  return false;
                }
              }()
                  ? 299.0
                  : 435.0,
              height: 36.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).accent2,
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 9.0, 8.0, 8.0),
                child: Text(
                  'LOCATION',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Arial',
                        color: Colors.black,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
              ),
            ),
          ),
        Flexible(
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 0.0, 0.0),
            child: Container(
              height: 36.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).accent2,
              ),
              child: Align(
                alignment: const AlignmentDirectional(1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 9.0, 5.0, 8.0),
                  child: Text(
                    'AMOUNT',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Arial',
                          color: Colors.black,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
