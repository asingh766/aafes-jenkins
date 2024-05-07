import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'view_plan_table_row_model.dart';
export 'view_plan_table_row_model.dart';

class ViewPlanTableRowWidget extends StatefulWidget {
  const ViewPlanTableRowWidget({
    super.key,
    required this.viewPlan,
    required this.index,
    required this.length,
  });

  final dynamic viewPlan;
  final int? index;
  final int? length;

  @override
  State<ViewPlanTableRowWidget> createState() => _ViewPlanTableRowWidgetState();
}

class _ViewPlanTableRowWidgetState extends State<ViewPlanTableRowWidget> {
  late ViewPlanTableRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewPlanTableRowModel());

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
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(valueOrDefault<double>(
            (widget.index!) == (widget.length!) - 1 ? 8.0 : 0.0,
            0.0,
          )),
          bottomRight: Radius.circular(valueOrDefault<double>(
            (widget.index!) == (widget.length!) - 1 ? 8.0 : 0.0,
            0.0,
          )),
          topLeft: const Radius.circular(0.0),
          topRight: const Radius.circular(0.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100.0,
              decoration: BoxDecoration(
                color: (widget.index!) % 2 == 0
                    ? FlutterFlowTheme.of(context).primaryBackground
                    : const Color(0xFFF1F1F1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(valueOrDefault<double>(
                    (widget.index!) == (widget.length!) - 1 ? 8.0 : 0.0,
                    0.0,
                  )),
                  bottomRight: const Radius.circular(0.0),
                  topLeft: const Radius.circular(0.0),
                  topRight: const Radius.circular(0.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                child: Text(
                  getJsonField(
                            widget.viewPlan,
                            r'''$.OpenDate''',
                          ) !=
                          null
                      ? functions.toDateddMMMyy(getJsonField(
                          widget.viewPlan,
                          r'''$.OpenDate''',
                        ).toString())!
                      : '',
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
                  color: (widget.index!) % 2 == 0
                      ? FlutterFlowTheme.of(context).primaryBackground
                      : const Color(0xFFF1F1F1),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        getJsonField(
                                  widget.viewPlan,
                                  r'''$.PlanDesc''',
                                ) !=
                                null
                            ? getJsonField(
                                widget.viewPlan,
                                r'''$.PlanDesc''',
                              ).toString()
                            : '',
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
                    if (responsiveVisibility(
                      context: context,
                      desktop: false,
                    ))
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Text(
                          '${getJsonField(
                                widget.viewPlan,
                                r'''$.InstRemTerm''',
                              ) != null ? getJsonField(
                              widget.viewPlan,
                              r'''$.InstRemTerm''',
                            ).toString() : '0'} Payment(s) Remaining',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Arial',
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                  ],
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
                      ? 70.0
                      : 162.0,
                  decoration: BoxDecoration(
                    color: (widget.index!) % 2 == 0
                        ? FlutterFlowTheme.of(context).primaryBackground
                        : const Color(0xFFF1F1F1),
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      getJsonField(
                                widget.viewPlan,
                                r'''$.InstRemTerm''',
                              ) !=
                              null
                          ? getJsonField(
                              widget.viewPlan,
                              r'''$.InstRemTerm''',
                            ).toString()
                          : '0',
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
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
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
                        ? 70.0
                        : 131.0,
                    decoration: BoxDecoration(
                      color: (widget.index!) % 2 == 0
                          ? FlutterFlowTheme.of(context).primaryBackground
                          : const Color(0xFFF1F1F1),
                    ),
                    alignment: const AlignmentDirectional(1.0, 0.0),
                    child: Align(
                      alignment: const AlignmentDirectional(1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 8.0, 0.0),
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
                                      fontSize: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 12.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 14.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 14.0;
                                        } else {
                                          return 14.0;
                                        }
                                      }(),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              TextSpan(
                                text: getJsonField(
                                          widget.viewPlan,
                                          r'''$.InstRemBal''',
                                        ) !=
                                        null
                                    ? functions.formatstring(getJsonField(
                                        widget.viewPlan,
                                        r'''$.InstRemBal''',
                                      ).toDouble())
                                    : '',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context).black,
                                  fontSize: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 12.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 14.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 14.0;
                                    } else {
                                      return 14.0;
                                    }
                                  }(),
                                ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Arial',
                                  fontSize: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 12.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 14.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
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
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ].divide(const SizedBox(width: 2.0)),
        ),
      ),
    );
  }
}
