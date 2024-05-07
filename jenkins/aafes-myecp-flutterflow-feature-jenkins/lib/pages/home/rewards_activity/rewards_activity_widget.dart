import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/no_datafound_table_text/no_datafound_table_text_widget.dart';
import '/pages/home/components/reward_point_table_row/reward_point_table_row_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'rewards_activity_model.dart';
export 'rewards_activity_model.dart';

class RewardsActivityWidget extends StatefulWidget {
  const RewardsActivityWidget({
    super.key,
    required this.rewardPointsDataList,
  });

  final List<dynamic>? rewardPointsDataList;

  @override
  State<RewardsActivityWidget> createState() => _RewardsActivityWidgetState();
}

class _RewardsActivityWidgetState extends State<RewardsActivityWidget>
    with TickerProviderStateMixin {
  late RewardsActivityModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RewardsActivityModel());

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
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
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
          Builder(
            builder: (context) {
              if (widget.rewardPointsDataList != null &&
                  (widget.rewardPointsDataList)!.isNotEmpty) {
                return Builder(
                  builder: (context) {
                    final rewardPointsDataList =
                        widget.rewardPointsDataList!.toList();
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(rewardPointsDataList.length,
                          (rewardPointsDataListIndex) {
                        final rewardPointsDataListItem =
                            rewardPointsDataList[rewardPointsDataListIndex];
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent2,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                  ))
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 8.0, 8.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            decoration: const BoxDecoration(),
                                            child: Text(
                                              'DESCRIPTION',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Arial',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .black,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ),
                                          Flexible(
                                            child: Container(
                                              decoration: const BoxDecoration(),
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Statement Balance',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Arial',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .black,
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          '(Dated ${functions.toDateddMMMyyyy(getJsonField(
                                                        rewardPointsDataListItem,
                                                        r'''$.StatementDate''',
                                                      ).toString())})',
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .black,
                                                        fontSize: 14.0,
                                                      ),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Arial',
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                                textAlign: TextAlign.start,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  if (responsiveVisibility(
                                    context: context,
                                    tablet: false,
                                    tabletLandscape: false,
                                    desktop: false,
                                  ))
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 8.0, 8.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                decoration: const BoxDecoration(),
                                                child: Text(
                                                  'DESCRIPTION',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Arial',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .black,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                decoration: const BoxDecoration(),
                                                child: Text(
                                                  'Statement Balance',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Arial',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .black,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                              Container(
                                                decoration: const BoxDecoration(),
                                                child: RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            '(Dated ${functions.toDateddMMMyyyy(getJsonField(
                                                          rewardPointsDataListItem,
                                                          r'''$.StatementDate''',
                                                        ).toString())})',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Arial',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .black,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Arial',
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                  textAlign: TextAlign.start,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 2.5,
                              thickness: 2.0,
                              color: FlutterFlowTheme.of(context).accent3,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                RewardPointTableRowWidget(
                                  key: Key(
                                      'Keyudn_${rewardPointsDataListIndex}_of_${rewardPointsDataList.length}'),
                                  title: 'Beginning Balance',
                                  value: getJsonField(
                                    rewardPointsDataListItem,
                                    r'''$.BeginPoint''',
                                  ).toString(),
                                ),
                                RewardPointTableRowWidget(
                                  key: Key(
                                      'Keyupp_${rewardPointsDataListIndex}_of_${rewardPointsDataList.length}'),
                                  title: 'Net Earned',
                                  value: getJsonField(
                                    rewardPointsDataListItem,
                                    r'''$.PointEarned''',
                                  ).toString(),
                                ),
                                RewardPointTableRowWidget(
                                  key: Key(
                                      'Key4zo_${rewardPointsDataListIndex}_of_${rewardPointsDataList.length}'),
                                  title: 'Disbursed',
                                  value: getJsonField(
                                    rewardPointsDataListItem,
                                    r'''$.PointDisbursed''',
                                  ).toString(),
                                ),
                                RewardPointTableRowWidget(
                                  key: Key(
                                      'Keycc1_${rewardPointsDataListIndex}_of_${rewardPointsDataList.length}'),
                                  title: 'Adjusted',
                                  value: getJsonField(
                                    rewardPointsDataListItem,
                                    r'''$.PointAdjusted''',
                                  ).toString(),
                                ),
                                RewardPointTableRowWidget(
                                  key: Key(
                                      'Keyzqn_${rewardPointsDataListIndex}_of_${rewardPointsDataList.length}'),
                                  title: 'Ending Balance',
                                  value: getJsonField(
                                    rewardPointsDataListItem,
                                    r'''$.PointEnd''',
                                  ).toString(),
                                ),
                              ],
                            ),
                          ],
                        );
                      }),
                    );
                  },
                );
              } else {
                return wrapWithModel(
                  model: _model.noDatafoundTableTextModel,
                  updateCallback: () => setState(() {}),
                  child: const NoDatafoundTableTextWidget(
                    text: 'No rewards activity found',
                  ),
                );
              }
            },
          ),
        ],
      ),
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
  }
}
