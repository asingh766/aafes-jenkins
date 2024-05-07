import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/my_account/manage_contact_details/m_c_drawer_item/m_c_drawer_item_widget.dart';
import '/pages/my_account/manage_contact_details/m_c_header/m_c_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'm_c_common_drawer_model.dart';
export 'm_c_common_drawer_model.dart';

class MCCommonDrawerWidget extends StatefulWidget {
  const MCCommonDrawerWidget({super.key});

  @override
  State<MCCommonDrawerWidget> createState() => _MCCommonDrawerWidgetState();
}

class _MCCommonDrawerWidgetState extends State<MCCommonDrawerWidget>
    with TickerProviderStateMixin {
  late MCCommonDrawerModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MCCommonDrawerModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().isMacDrawerOpen = !FFAppState().isMacDrawerOpen;
      });
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
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
      'containerOnPageLoadAnimation2': AnimationInfo(
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
    context.watch<FFAppState>();

    return Stack(
      children: [
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          tabletLandscape: false,
        ))
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0x33000000),
                    offset: Offset(
                      0.0,
                      2.0,
                    ),
                  )
                ],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.mCHeaderModel1,
                    updateCallback: () => setState(() {}),
                    child: const MCHeaderWidget(
                      title: 'Contact Details',
                      isRounded: true,
                    ),
                  ),
                  const Divider(
                    height: 2.5,
                    thickness: 2.0,
                    color: Color(0xFF801B0E),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
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
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().update(() {
                                FFAppState().selectedMCDrawerIndex = 1;
                              });
                            },
                            child: wrapWithModel(
                              model: _model.mCDrawerItemModel1,
                              updateCallback: () => setState(() {}),
                              child: MCDrawerItemWidget(
                                title: 'Update Address',
                                isSelected:
                                    FFAppState().selectedMCDrawerIndex == 1,
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().update(() {
                                FFAppState().selectedMCDrawerIndex = 2;
                              });
                            },
                            child: wrapWithModel(
                              model: _model.mCDrawerItemModel2,
                              updateCallback: () => setState(() {}),
                              child: MCDrawerItemWidget(
                                title: 'Update Email Address',
                                isSelected:
                                    (FFAppState().selectedMCDrawerIndex == 2) ||
                                        (FFAppState().selectedMCDrawerIndex ==
                                            9),
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().update(() {
                                FFAppState().selectedMCDrawerIndex = 3;
                              });
                            },
                            child: wrapWithModel(
                              model: _model.mCDrawerItemModel3,
                              updateCallback: () => setState(() {}),
                              child: MCDrawerItemWidget(
                                title: 'Update Phone Numbers',
                                isSelected:
                                    FFAppState().selectedMCDrawerIndex == 3,
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().update(() {
                                FFAppState().selectedMCDrawerIndex = 4;
                              });
                            },
                            child: wrapWithModel(
                              model: _model.mCDrawerItemModel4,
                              updateCallback: () => setState(() {}),
                              child: MCDrawerItemWidget(
                                title: 'Communication Preferences',
                                isSelected:
                                    FFAppState().selectedMCDrawerIndex == 4,
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.mCHeaderModel2,
                            updateCallback: () => setState(() {}),
                            child: const MCHeaderWidget(
                              title: 'Alerts',
                              isRounded: false,
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().update(() {
                                FFAppState().selectedMCDrawerIndex = 5;
                              });
                            },
                            child: wrapWithModel(
                              model: _model.mCDrawerItemModel5,
                              updateCallback: () => setState(() {}),
                              child: MCDrawerItemWidget(
                                title: 'Manage Alerts',
                                isSelected:
                                    FFAppState().selectedMCDrawerIndex == 5,
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.mCHeaderModel3,
                            updateCallback: () => setState(() {}),
                            child: const MCHeaderWidget(
                              title: 'Security',
                              isRounded: false,
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().update(() {
                                FFAppState().selectedMCDrawerIndex = 6;
                              });
                            },
                            child: wrapWithModel(
                              model: _model.mCDrawerItemModel6,
                              updateCallback: () => setState(() {}),
                              child: MCDrawerItemWidget(
                                title: 'Update Password',
                                isSelected:
                                    FFAppState().selectedMCDrawerIndex == 6,
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().update(() {
                                FFAppState().selectedMCDrawerIndex = 7;
                              });
                            },
                            child: wrapWithModel(
                              model: _model.mCDrawerItemModel7,
                              updateCallback: () => setState(() {}),
                              child: MCDrawerItemWidget(
                                title: 'Update Security Questions',
                                isSelected:
                                    FFAppState().selectedMCDrawerIndex == 7,
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.mCHeaderModel4,
                            updateCallback: () => setState(() {}),
                            child: const MCHeaderWidget(
                              title: 'Banking',
                              isRounded: false,
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().update(() {
                                FFAppState().selectedMCDrawerIndex = 8;
                              });
                            },
                            child: wrapWithModel(
                              model: _model.mCDrawerItemModel8,
                              updateCallback: () => setState(() {}),
                              child: MCDrawerItemWidget(
                                title: 'Update Banking Profile',
                                isSelected:
                                    FFAppState().selectedMCDrawerIndex == 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation1']!),
                  ),
                ],
              ),
            ),
          ),
        if (responsiveVisibility(
          context: context,
          desktop: false,
        ))
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0x33000000),
                    offset: Offset(
                      0.0,
                      2.0,
                    ),
                  )
                ],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderRadius: 22.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            fillColor: FlutterFlowTheme.of(context).accent2,
                            icon: Icon(
                              Icons.menu,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                            onPressed: () async {
                              _model.updatePage(() {
                                FFAppState().isMacDrawerOpen =
                                    !FFAppState().isMacDrawerOpen;
                              });
                            },
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Manage My Profile',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Arial',
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (FFAppState().isMacDrawerOpen)
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
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
                            wrapWithModel(
                              model: _model.mCHeaderModel5,
                              updateCallback: () => setState(() {}),
                              child: const MCHeaderWidget(
                                title: 'Contact Details',
                                isRounded: true,
                              ),
                            ),
                            const Divider(
                              height: 2.5,
                              thickness: 2.0,
                              color: Color(0xFF801B0E),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().update(() {
                                  FFAppState().selectedMCDrawerIndex = 1;
                                  FFAppState().isMacDrawerOpen = false;
                                });
                              },
                              child: wrapWithModel(
                                model: _model.mCDrawerItemModel9,
                                updateCallback: () => setState(() {}),
                                child: MCDrawerItemWidget(
                                  title: 'Update Address',
                                  isSelected:
                                      FFAppState().selectedMCDrawerIndex == 1,
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().update(() {
                                  FFAppState().selectedMCDrawerIndex = 2;
                                  FFAppState().isMacDrawerOpen = false;
                                });
                              },
                              child: wrapWithModel(
                                model: _model.mCDrawerItemModel10,
                                updateCallback: () => setState(() {}),
                                child: MCDrawerItemWidget(
                                  title: 'Update Email Address',
                                  isSelected: (FFAppState()
                                              .selectedMCDrawerIndex ==
                                          2) ||
                                      (FFAppState().selectedMCDrawerIndex == 9),
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().update(() {
                                  FFAppState().selectedMCDrawerIndex = 3;
                                  FFAppState().isMacDrawerOpen = false;
                                });
                              },
                              child: wrapWithModel(
                                model: _model.mCDrawerItemModel11,
                                updateCallback: () => setState(() {}),
                                child: MCDrawerItemWidget(
                                  title: 'Update Phone Numbers',
                                  isSelected:
                                      FFAppState().selectedMCDrawerIndex == 3,
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().update(() {
                                  FFAppState().selectedMCDrawerIndex = 4;
                                  FFAppState().isMacDrawerOpen = false;
                                });
                              },
                              child: wrapWithModel(
                                model: _model.mCDrawerItemModel12,
                                updateCallback: () => setState(() {}),
                                child: MCDrawerItemWidget(
                                  title: 'Communication Preferences',
                                  isSelected:
                                      FFAppState().selectedMCDrawerIndex == 4,
                                ),
                              ),
                            ),
                            wrapWithModel(
                              model: _model.mCHeaderModel6,
                              updateCallback: () => setState(() {}),
                              child: const MCHeaderWidget(
                                title: 'Alerts',
                                isRounded: false,
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().update(() {
                                  FFAppState().selectedMCDrawerIndex = 5;
                                  FFAppState().isMacDrawerOpen = false;
                                });
                              },
                              child: wrapWithModel(
                                model: _model.mCDrawerItemModel13,
                                updateCallback: () => setState(() {}),
                                child: MCDrawerItemWidget(
                                  title: 'Manage Alerts',
                                  isSelected:
                                      FFAppState().selectedMCDrawerIndex == 5,
                                ),
                              ),
                            ),
                            wrapWithModel(
                              model: _model.mCHeaderModel7,
                              updateCallback: () => setState(() {}),
                              child: const MCHeaderWidget(
                                title: 'Security',
                                isRounded: false,
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().update(() {
                                  FFAppState().selectedMCDrawerIndex = 6;
                                  FFAppState().isMacDrawerOpen = false;
                                });
                              },
                              child: wrapWithModel(
                                model: _model.mCDrawerItemModel14,
                                updateCallback: () => setState(() {}),
                                child: MCDrawerItemWidget(
                                  title: 'Update Password',
                                  isSelected:
                                      FFAppState().selectedMCDrawerIndex == 6,
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().update(() {
                                  FFAppState().selectedMCDrawerIndex = 7;
                                  FFAppState().isMacDrawerOpen = false;
                                });
                              },
                              child: wrapWithModel(
                                model: _model.mCDrawerItemModel15,
                                updateCallback: () => setState(() {}),
                                child: MCDrawerItemWidget(
                                  title: 'Update Security Questions',
                                  isSelected:
                                      FFAppState().selectedMCDrawerIndex == 7,
                                ),
                              ),
                            ),
                            wrapWithModel(
                              model: _model.mCHeaderModel8,
                              updateCallback: () => setState(() {}),
                              child: const MCHeaderWidget(
                                title: 'Banking',
                                isRounded: false,
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().update(() {
                                  FFAppState().selectedMCDrawerIndex = 8;
                                  FFAppState().isMacDrawerOpen = false;
                                });
                              },
                              child: wrapWithModel(
                                model: _model.mCDrawerItemModel16,
                                updateCallback: () => setState(() {}),
                                child: MCDrawerItemWidget(
                                  title: 'Update Banking Profile',
                                  isSelected:
                                      FFAppState().selectedMCDrawerIndex == 8,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation2']!),
                    ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
