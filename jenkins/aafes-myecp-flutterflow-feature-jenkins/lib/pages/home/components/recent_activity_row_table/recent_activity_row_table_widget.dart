import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'recent_activity_row_table_model.dart';
export 'recent_activity_row_table_model.dart';

class RecentActivityRowTableWidget extends StatefulWidget {
  const RecentActivityRowTableWidget({
    super.key,
    required this.index,
    required this.activityData,
  });

  final int? index;
  final dynamic activityData;

  @override
  State<RecentActivityRowTableWidget> createState() =>
      _RecentActivityRowTableWidgetState();
}

class _RecentActivityRowTableWidgetState
    extends State<RecentActivityRowTableWidget> {
  late RecentActivityRowTableModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecentActivityRowTableModel());

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
        color: (widget.index!) % 2 == 0
            ? FlutterFlowTheme.of(context).primaryBackground
            : const Color(0xFFF1F1F1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width <= 430.0 ? 70.0 : 131.0,
            height: 36.0,
            decoration: BoxDecoration(
              color: (widget.index!) % 2 == 0
                  ? FlutterFlowTheme.of(context).primaryBackground
                  : const Color(0xFFF1F1F1),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 8.0, 8.0, 8.0),
              child: Text(
                getJsonField(
                          widget.activityData,
                          r'''$.EffectiveDate''',
                        ) !=
                        null
                    ? functions.toDatedMMM(getJsonField(
                        widget.activityData,
                        r'''$.EffectiveDate''',
                      ).toString())!
                    : '  ',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Arial',
                      color: Colors.black,
                      fontSize: () {
                        if (MediaQuery.sizeOf(context).width <
                            kBreakpointSmall) {
                          return 12.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointMedium) {
                          return 14.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointLarge) {
                          return 14.0;
                        } else {
                          return 14.0;
                        }
                      }(),
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width <= 430.0 ? 126.0 : 162.0,
            decoration: BoxDecoration(
              color: (widget.index!) % 2 == 0
                  ? FlutterFlowTheme.of(context).primaryBackground
                  : const Color(0xFFF1F1F1),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
              child: Text(
                getJsonField(
                          widget.activityData,
                          r'''$.PlanDesc''',
                        ) !=
                        null
                    ? getJsonField(
                        widget.activityData,
                        r'''$.PlanDesc''',
                      ).toString()
                    : '  ',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Arial',
                      color: Colors.black,
                      fontSize: () {
                        if (MediaQuery.sizeOf(context).width <
                            kBreakpointSmall) {
                          return 12.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointMedium) {
                          return 14.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointLarge) {
                          return 14.0;
                        } else {
                          return 14.0;
                        }
                      }(),
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
                  color: (widget.index!) % 2 == 0
                      ? FlutterFlowTheme.of(context).primaryBackground
                      : const Color(0xFFF1F1F1),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  child: Text(
                    getJsonField(
                      widget.activityData,
                      r'''$.ExchangeName''',
                    ).toString(),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Arial',
                          color: Colors.black,
                          fontSize: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 12.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 14.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 14.0;
                            } else {
                              return 14.0;
                            }
                          }(),
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ),
            ),
          Flexible(
            child: Align(
              alignment: const AlignmentDirectional(1.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 8.0, 0.0),
                child: Container(
                  width: 100.0,
                  height: 36.0,
                  decoration: BoxDecoration(
                    color: (widget.index!) % 2 == 0
                        ? FlutterFlowTheme.of(context).primaryBackground
                        : const Color(0xFFF1F1F1),
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(1.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '\$',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Arial',
                                  color: FlutterFlowTheme.of(context).black,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                          ),
                          TextSpan(
                            text: getJsonField(
                                      widget.activityData,
                                      r'''$.Amount''',
                                    ) !=
                                    null
                                ? functions.formatstring(getJsonField(
                                    widget.activityData,
                                    r'''$.Amount''',
                                  ).toDouble())
                                : '  ',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).black,
                              fontSize: 14.0,
                            ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Arial',
                              fontSize: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 12.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 14.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 14.0;
                                } else {
                                  return 14.0;
                                }
                              }(),
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
