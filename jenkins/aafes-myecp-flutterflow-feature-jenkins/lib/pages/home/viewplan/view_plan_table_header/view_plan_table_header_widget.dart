import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'view_plan_table_header_model.dart';
export 'view_plan_table_header_model.dart';

class ViewPlanTableHeaderWidget extends StatefulWidget {
  const ViewPlanTableHeaderWidget({super.key});

  @override
  State<ViewPlanTableHeaderWidget> createState() =>
      _ViewPlanTableHeaderWidgetState();
}

class _ViewPlanTableHeaderWidgetState extends State<ViewPlanTableHeaderWidget> {
  late ViewPlanTableHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewPlanTableHeaderModel());

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
        color: FlutterFlowTheme.of(context).accent2,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).accent2,
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Created On',
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
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).accent2,
                    ),
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Text(
                      'Plan Name',
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
                  tablet: false,
                  tabletLandscape: false,
                ))
                  Flexible(
                    child: Container(
                      width: () {
                        if (MediaQuery.sizeOf(context).width <
                            kBreakpointSmall) {
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
                          ? 70.0
                          : 162.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).accent2,
                      ),
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'Remaining Payment(s)',
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
                Expanded(
                  child: Align(
                    alignment: const AlignmentDirectional(1.0, 0.0),
                    child: Container(
                      width: () {
                        if (MediaQuery.sizeOf(context).width <
                            kBreakpointSmall) {
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
                          ? 100.0
                          : 131.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).accent2,
                      ),
                      alignment: const AlignmentDirectional(1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                        child: Text(
                          'Remaining Balance',
                          textAlign: TextAlign.end,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
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
                ),
              ].divide(const SizedBox(width: 2.0)),
            ),
          ),
          Divider(
            height: 2.5,
            thickness: 2.0,
            color: FlutterFlowTheme.of(context).accent3,
          ),
        ],
      ),
    );
  }
}
