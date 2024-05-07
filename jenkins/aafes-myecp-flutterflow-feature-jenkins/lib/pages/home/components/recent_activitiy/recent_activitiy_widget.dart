import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/no_datafound_table_text/no_datafound_table_text_widget.dart';
import '/pages/home/components/recent_activity_column_table/recent_activity_column_table_widget.dart';
import '/pages/home/components/recent_activity_row_table/recent_activity_row_table_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'recent_activitiy_model.dart';
export 'recent_activitiy_model.dart';

class RecentActivitiyWidget extends StatefulWidget {
  const RecentActivitiyWidget({
    super.key,
    required this.recentActivityList,
  });

  final List<dynamic>? recentActivityList;

  @override
  State<RecentActivitiyWidget> createState() => _RecentActivitiyWidgetState();
}

class _RecentActivitiyWidgetState extends State<RecentActivitiyWidget>
    with TickerProviderStateMixin {
  late RecentActivitiyModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecentActivitiyModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.pendingActivityList = functions
            .getThePendingActivityList(
                widget.recentActivityList?.toList(), true)!
            .toList()
            .cast<dynamic>();
        _model.postedActivityList = functions
            .getThePendingActivityList(
                widget.recentActivityList?.toList(), false)!
            .toList()
            .cast<dynamic>();
      });
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(8.0),
          bottomRight: Radius.circular(8.0),
          topLeft: Radius.circular(0.0),
          topRight: Radius.circular(0.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryText,
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 0.0, 4.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Pending Activity',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Arial',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).accent2,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.recentActivityColumnTableModel1,
                  updateCallback: () => setState(() {}),
                  child: const RecentActivityColumnTableWidget(),
                ),
                Divider(
                  height: 2.5,
                  thickness: 2.0,
                  color: FlutterFlowTheme.of(context).accent3,
                ),
              ],
            ),
          ),
          Builder(
            builder: (context) {
              if (_model.pendingActivityList.isNotEmpty) {
                return Builder(
                  builder: (context) {
                    final pendingActivityDataList =
                        _model.pendingActivityList.toList();
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(pendingActivityDataList.length,
                          (pendingActivityDataListIndex) {
                        final pendingActivityDataListItem =
                            pendingActivityDataList[
                                pendingActivityDataListIndex];
                        return RecentActivityRowTableWidget(
                          key: Key(
                              'Keysfp_${pendingActivityDataListIndex}_of_${pendingActivityDataList.length}'),
                          index: pendingActivityDataListIndex,
                          activityData: pendingActivityDataListItem,
                        );
                      }),
                    );
                  },
                );
              } else {
                return wrapWithModel(
                  model: _model.noDatafoundTableTextModel1,
                  updateCallback: () => setState(() {}),
                  child: const NoDatafoundTableTextWidget(
                    text: 'You have no new pending transactions.',
                  ),
                );
              }
            },
          ),
          Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryText,
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 0.0, 5.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Posted Activity',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Arial',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).accent2,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).accent2,
                  ),
                  child: wrapWithModel(
                    model: _model.recentActivityColumnTableModel2,
                    updateCallback: () => setState(() {}),
                    child: const RecentActivityColumnTableWidget(),
                  ),
                ),
                Divider(
                  height: 2.5,
                  thickness: 2.0,
                  color: FlutterFlowTheme.of(context).accent3,
                ),
                Builder(
                  builder: (context) {
                    if (_model.postedActivityList.isNotEmpty) {
                      return Builder(
                        builder: (context) {
                          final postedActivityDataList =
                              _model.postedActivityList.toList();
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children:
                                List.generate(postedActivityDataList.length,
                                    (postedActivityDataListIndex) {
                              final postedActivityDataListItem =
                                  postedActivityDataList[
                                      postedActivityDataListIndex];
                              return RecentActivityRowTableWidget(
                                key: Key(
                                    'Key01e_${postedActivityDataListIndex}_of_${postedActivityDataList.length}'),
                                index: postedActivityDataListIndex,
                                activityData: postedActivityDataListItem,
                              );
                            }),
                          );
                        },
                      );
                    } else {
                      return wrapWithModel(
                        model: _model.noDatafoundTableTextModel2,
                        updateCallback: () => setState(() {}),
                        child: const NoDatafoundTableTextWidget(
                          text:
                              'No activity has posted to your account since your lalst statement.',
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
  }
}
