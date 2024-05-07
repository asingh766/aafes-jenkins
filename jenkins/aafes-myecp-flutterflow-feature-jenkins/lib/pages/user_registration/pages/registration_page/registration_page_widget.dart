import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/user_registration/components/registration1_component/registration1_component_widget.dart';
import '/pages/user_registration/components/registration2_component/registration2_component_widget.dart';
import '/pages/user_registration/components/registration3_component/registration3_component_widget.dart';
import '/pages/user_registration/components/registration4_component/registration4_component_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'registration_page_model.dart';
export 'registration_page_model.dart';

class RegistrationPageWidget extends StatefulWidget {
  const RegistrationPageWidget({
    super.key,
    this.uuid,
    this.email,
  });

  final String? uuid;
  final String? email;

  @override
  State<RegistrationPageWidget> createState() => _RegistrationPageWidgetState();
}

class _RegistrationPageWidgetState extends State<RegistrationPageWidget> {
  late RegistrationPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegistrationPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          if (widget.uuid != null && widget.uuid != '') {
            setState(() {
              _model.pageStep = 2;
            });
          } else {
            setState(() {
              _model.pageStep = 0;
            });
          }
        }),
        Future(() async {
          // Reset App State Data
          setState(() {
            FFAppState().password = '';
            FFAppState().confirmPassword = '';
            FFAppState().isPasswordValid = false;
            FFAppState().isConfirmPasswordValid = false;
          });
        }),
      ]);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'MyECP :  MyECP Account Registration',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: SafeArea(
              top: true,
              child: Stack(
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                  ))
                    Container(
                      decoration: const BoxDecoration(),
                      child: Stack(
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 70.0, 0.0, 0.0),
                                    child: Container(
                                      width: FFAppConstants.maxScreenWidth,
                                      constraints: BoxConstraints(
                                        minHeight: FFAppState()
                                            .screenBodyHeightDesktop,
                                      ),
                                      decoration: const BoxDecoration(),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Flexible(
                                              flex: 3,
                                              child: Container(
                                                decoration: const BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Container(
                                                                decoration:
                                                                    const BoxDecoration(
                                                                  color: Color(
                                                                      0xFF0F2654),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            0.0),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            0.0),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            8.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Create your Profile',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Arial',
                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
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
                                                              const Divider(
                                                                height: 2.0,
                                                                thickness: 2.5,
                                                                color: Color(
                                                                    0xFF801B0E),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        16.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                SizedBox(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 50.0,
                                                                  child: custom_widgets
                                                                      .CustomStepper(
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        50.0,
                                                                    activeStep:
                                                                        _model
                                                                            .pageStep,
                                                                    dividerLineLength:
                                                                        MediaQuery.sizeOf(context).width *
                                                                            0.15,
                                                                    isMobile: MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall,
                                                                  ),
                                                                ),
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    if (_model
                                                                            .pageStep ==
                                                                        0) {
                                                                      return wrapWithModel(
                                                                        model: _model
                                                                            .registration1ComponentModel1,
                                                                        updateCallback:
                                                                            () =>
                                                                                setState(() {}),
                                                                        child:
                                                                            Registration1ComponentWidget(
                                                                          nextCallback:
                                                                              () async {
                                                                            setState(() {
                                                                              _model.pageStep = 1;
                                                                            });
                                                                          },
                                                                        ),
                                                                      );
                                                                    } else if (_model
                                                                            .pageStep ==
                                                                        1) {
                                                                      return wrapWithModel(
                                                                        model: _model
                                                                            .registration2ComponentModel1,
                                                                        updateCallback:
                                                                            () =>
                                                                                setState(() {}),
                                                                        child:
                                                                            Registration2ComponentWidget(
                                                                          email:
                                                                              FFAppState().validatedEmailRegistration,
                                                                          nextCallback:
                                                                              () async {},
                                                                        ),
                                                                      );
                                                                    } else if (_model
                                                                            .pageStep ==
                                                                        2) {
                                                                      return wrapWithModel(
                                                                        model: _model
                                                                            .registration3ComponentModel1,
                                                                        updateCallback:
                                                                            () =>
                                                                                setState(() {}),
                                                                        child:
                                                                            Registration3ComponentWidget(
                                                                          email:
                                                                              widget.email,
                                                                          nextCallback:
                                                                              () async {
                                                                            setState(() {
                                                                              _model.pageStep = 3;
                                                                            });
                                                                          },
                                                                        ),
                                                                      );
                                                                    } else if (_model
                                                                            .pageStep ==
                                                                        3) {
                                                                      return wrapWithModel(
                                                                        model: _model
                                                                            .registration4ComponentModel1,
                                                                        updateCallback:
                                                                            () =>
                                                                                setState(() {}),
                                                                        child:
                                                                            const Registration4ComponentWidget(),
                                                                      );
                                                                    } else {
                                                                      return Container(
                                                                        decoration:
                                                                            const BoxDecoration(),
                                                                      );
                                                                    }
                                                                  },
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  height:
                                                                      16.0)),
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 16.0)),
                                                      ),
                                                    ),
                                                  ]
                                                      .divide(
                                                          const SizedBox(height: 0.0))
                                                      .addToEnd(const SizedBox(
                                                          height: 10.0)),
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
                                                flex: 1,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.asset(
                                                          'assets/images/p_image_b_1.png',
                                                          width: 276.0,
                                                          height: 407.0,
                                                          fit: BoxFit.fitHeight,
                                                        ),
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.asset(
                                                          'assets/images/registration_ad_2.png',
                                                          width: 276.0,
                                                          height: 408.0,
                                                          fit: BoxFit.fitHeight,
                                                        ),
                                                      ),
                                                    ]
                                                        .divide(const SizedBox(
                                                            height: 16.0))
                                                        .addToEnd(const SizedBox(
                                                            height: 10.0)),
                                                  ),
                                                ),
                                              ),
                                          ].divide(const SizedBox(width: 16.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.footerModel1,
                                  updateCallback: () => setState(() {}),
                                  child: const FooterWidget(),
                                ),
                              ],
                            ),
                          ),
                          wrapWithModel(
                            model: _model.headerModel1,
                            updateCallback: () => setState(() {}),
                            child: const HeaderWidget(),
                          ),
                        ],
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    desktop: false,
                  ))
                    Container(
                      decoration: const BoxDecoration(),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            wrapWithModel(
                              model: _model.headerModel2,
                              updateCallback: () => setState(() {}),
                              child: const HeaderWidget(),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Container(
                                  constraints: BoxConstraints(
                                    minHeight:
                                        FFAppState().screenBodyHeightMobile,
                                  ),
                                  decoration: const BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        flex: 3,
                                        child: Container(
                                          decoration: const BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                          decoration:
                                                              const BoxDecoration(
                                                            color: Color(
                                                                0xFF0F2654),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      0.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      8.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      8.0),
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                    8.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Create your Profile',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Arial',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        const Divider(
                                                          height: 2.0,
                                                          thickness: 2.5,
                                                          color:
                                                              Color(0xFF801B0E),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  16.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          SizedBox(
                                                            width:
                                                                double.infinity,
                                                            height: 50.0,
                                                            child: custom_widgets
                                                                .CustomStepper(
                                                              width: double
                                                                  .infinity,
                                                              height: 50.0,
                                                              activeStep: _model
                                                                  .pageStep,
                                                              dividerLineLength:
                                                                  MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.15,
                                                              isMobile: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointSmall,
                                                            ),
                                                          ),
                                                          Builder(
                                                            builder: (context) {
                                                              if (_model
                                                                      .pageStep ==
                                                                  0) {
                                                                return wrapWithModel(
                                                                  model: _model
                                                                      .registration1ComponentModel2,
                                                                  updateCallback:
                                                                      () => setState(
                                                                          () {}),
                                                                  child:
                                                                      Registration1ComponentWidget(
                                                                    nextCallback:
                                                                        () async {
                                                                      setState(
                                                                          () {
                                                                        _model.pageStep =
                                                                            1;
                                                                      });
                                                                    },
                                                                  ),
                                                                );
                                                              } else if (_model
                                                                      .pageStep ==
                                                                  1) {
                                                                return wrapWithModel(
                                                                  model: _model
                                                                      .registration2ComponentModel2,
                                                                  updateCallback:
                                                                      () => setState(
                                                                          () {}),
                                                                  child:
                                                                      Registration2ComponentWidget(
                                                                    email: FFAppState()
                                                                        .validatedEmailRegistration,
                                                                    nextCallback:
                                                                        () async {},
                                                                  ),
                                                                );
                                                              } else if (_model
                                                                      .pageStep ==
                                                                  2) {
                                                                return wrapWithModel(
                                                                  model: _model
                                                                      .registration3ComponentModel2,
                                                                  updateCallback:
                                                                      () => setState(
                                                                          () {}),
                                                                  child:
                                                                      Registration3ComponentWidget(
                                                                    email: widget
                                                                        .email,
                                                                    nextCallback:
                                                                        () async {
                                                                      setState(
                                                                          () {
                                                                        _model.pageStep =
                                                                            3;
                                                                      });
                                                                    },
                                                                  ),
                                                                );
                                                              } else if (_model
                                                                      .pageStep ==
                                                                  3) {
                                                                return wrapWithModel(
                                                                  model: _model
                                                                      .registration4ComponentModel2,
                                                                  updateCallback:
                                                                      () => setState(
                                                                          () {}),
                                                                  child:
                                                                      const Registration4ComponentWidget(),
                                                                );
                                                              } else {
                                                                return Container(
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                );
                                                              }
                                                            },
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 16.0)),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(height: 16.0)),
                                                ),
                                              ),
                                            ]
                                                .divide(const SizedBox(height: 0.0))
                                                .addToEnd(
                                                    const SizedBox(height: 10.0)),
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
                                          flex: 1,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/p_image_b_1.png',
                                                    width: 276.0,
                                                    height: 407.0,
                                                    fit: BoxFit.fitHeight,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/registration_ad_2.png',
                                                    width: 276.0,
                                                    height: 408.0,
                                                    fit: BoxFit.fitHeight,
                                                  ),
                                                ),
                                              ]
                                                  .divide(
                                                      const SizedBox(height: 16.0))
                                                  .addToEnd(
                                                      const SizedBox(height: 10.0)),
                                            ),
                                          ),
                                        ),
                                    ].divide(const SizedBox(width: 16.0)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: wrapWithModel(
                                model: _model.footerModel2,
                                updateCallback: () => setState(() {}),
                                child: const FooterWidget(),
                              ),
                            ),
                          ].divide(const SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ));
  }
}
