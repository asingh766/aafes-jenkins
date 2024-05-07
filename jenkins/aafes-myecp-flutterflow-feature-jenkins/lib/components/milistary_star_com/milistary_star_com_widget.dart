import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'milistary_star_com_model.dart';
export 'milistary_star_com_model.dart';

class MilistaryStarComWidget extends StatefulWidget {
  const MilistaryStarComWidget({super.key});

  @override
  State<MilistaryStarComWidget> createState() => _MilistaryStarComWidgetState();
}

class _MilistaryStarComWidgetState extends State<MilistaryStarComWidget> {
  late MilistaryStarComModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MilistaryStarComModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
          return Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 7.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/img_military_card.png',
                          height: MediaQuery.sizeOf(context).height * 0.28,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 6.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('ApplyNowPage');
                          },
                          text: 'Apply Now',
                          options: FFButtonOptions(
                            height: 30.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Arial',
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            'Static',
                            queryParameters: {
                              'pageName': serializeParam(
                                'militaryStar',
                                ParamType.String,
                              ),
                              'title': serializeParam(
                                'MILITARY STAR',
                                ParamType.String,
                              ),
                              'id': serializeParam(
                                2,
                                ParamType.int,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: Text(
                          'Learn More',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Arial',
                                    color: const Color(0xFF0000FF),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/img_reward_points.png',
                            width: double.infinity,
                            height: MediaQuery.sizeOf(context).height * 0.28,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'Static',
                                queryParameters: {
                                  'pageName': serializeParam(
                                    'rewards-condition',
                                    ParamType.String,
                                  ),
                                  'title': serializeParam(
                                    'MILITARY STAR Rewards Program (or the “Program”) Terms and Conditions',
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: Text(
                              'See Rewards Terms and Conditions',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Arial',
                                    color: const Color(0xFF0000FF),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/img_rewards_description.png',
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 0.28,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ].divide(const SizedBox(height: 12.0)),
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    height: 280.0,
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/banner_military_card.webp',
                                width: 281.0,
                                height: 195.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 3.0, 0.0, 10.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('ApplyNowPage');
                                },
                                child: custom_widgets.ElevatedButton2(
                                  width: 100.0,
                                  height: 30.0,
                                  title: 'Apply Now',
                                  isEnabled: true,
                                  onTap: () async {
                                    context.pushNamed('ApplyNowPage');
                                  },
                                ),
                              ),
                            ),
                            custom_widgets.NavigationLink(
                              width: 100.0,
                              height: 30.0,
                              link: 'Learn More',
                              onLinkTap: () async {
                                context.pushNamed(
                                  'Static',
                                  queryParameters: {
                                    'pageName': serializeParam(
                                      'militaryStar',
                                      ParamType.String,
                                    ),
                                    'title': serializeParam(
                                      'MILITARY STAR',
                                      ParamType.String,
                                    ),
                                    'id': serializeParam(
                                      2,
                                      ParamType.int,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 280.0,
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/img_reward_points.png',
                            width: 350.0,
                            height: 260.0,
                            fit: BoxFit.contain,
                            alignment: const Alignment(0.0, 0.0),
                          ),
                        ),
                        custom_widgets.NavigationLink(
                          width: 100.0,
                          height: 30.0,
                          link: 'See Rewards Terms and Conditions',
                          onLinkTap: () async {
                            context.pushNamed(
                              'Static',
                              queryParameters: {
                                'pageName': serializeParam(
                                  'rewards-condition',
                                  ParamType.String,
                                ),
                                'title': serializeParam(
                                  'MILITARY STAR Rewards Program (or the “Program”) Terms and Conditions',
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/img_rewards_description.png',
                      width: 350.0,
                      height: 280.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
