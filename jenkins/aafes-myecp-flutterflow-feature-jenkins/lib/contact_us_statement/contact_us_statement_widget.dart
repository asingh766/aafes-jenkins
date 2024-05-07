import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/contactus/contact_us_title/contact_us_title_widget.dart';
import '/pages/login/contact_us_item/contact_us_item_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'contact_us_statement_model.dart';
export 'contact_us_statement_model.dart';

class ContactUsStatementWidget extends StatefulWidget {
  const ContactUsStatementWidget({super.key});

  @override
  State<ContactUsStatementWidget> createState() =>
      _ContactUsStatementWidgetState();
}

class _ContactUsStatementWidgetState extends State<ContactUsStatementWidget>
    with TickerProviderStateMixin {
  late ContactUsStatementModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContactUsStatementModel());

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
      'containerOnPageLoadAnimation3': AnimationInfo(
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
      'containerOnPageLoadAnimation4': AnimationInfo(
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
      'containerOnPageLoadAnimation5': AnimationInfo(
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
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'MyECP : Help & Contact',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 70.0, 0.0, 0.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, -1.0),
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
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Flexible(
                                                  flex: 3,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      8.0),
                                                          child: Text(
                                                            'WELCOME DROORZN!',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Arial',
                                                                  color: Colors
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
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Column(
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
                                                                  bottomRight: Radius
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
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        'Contact Us',
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
                                                              height: 2.5,
                                                              thickness: 3.0,
                                                              color: Color(
                                                                  0xFF801B0E),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            16.0,
                                                                            0.0,
                                                                            5.0),
                                                                    child:
                                                                        Container(
                                                                      width: double
                                                                          .infinity,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        boxShadow: const [
                                                                          BoxShadow(
                                                                            blurRadius:
                                                                                4.0,
                                                                            color:
                                                                                Color(0x33000000),
                                                                            offset:
                                                                                Offset(
                                                                              0.0,
                                                                              2.0,
                                                                            ),
                                                                          )
                                                                        ],
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Container(
                                                                            decoration:
                                                                                const BoxDecoration(
                                                                              color: Color(0xFF0F2654),
                                                                              borderRadius: BorderRadius.only(
                                                                                bottomLeft: Radius.circular(0.0),
                                                                                bottomRight: Radius.circular(0.0),
                                                                                topLeft: Radius.circular(8.0),
                                                                                topRight: Radius.circular(8.0),
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsets.all(8.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Icon(
                                                                                    Icons.call,
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    size: 20.0,
                                                                                  ),
                                                                                  Expanded(
                                                                                    flex: 4,
                                                                                    child: Text(
                                                                                      'Phone',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Arial',
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            fontSize: 16.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.bold,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ].divide(const SizedBox(width: 5.0)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          const Divider(
                                                                            height:
                                                                                2.5,
                                                                            thickness:
                                                                                2.0,
                                                                            color:
                                                                                Color(0xFF801B0E),
                                                                          ),
                                                                          Container(
                                                                            decoration:
                                                                                const BoxDecoration(
                                                                              borderRadius: BorderRadius.only(
                                                                                bottomLeft: Radius.circular(8.0),
                                                                                bottomRight: Radius.circular(8.0),
                                                                                topLeft: Radius.circular(0.0),
                                                                                topRight: Radius.circular(0.0),
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                SingleChildScrollView(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  wrapWithModel(
                                                                                    model: _model.contactUsTitleModel1,
                                                                                    updateCallback: () => setState(() {}),
                                                                                    child: const ContactUsTitleWidget(
                                                                                      title: 'CONUS',
                                                                                    ),
                                                                                  ),
                                                                                  wrapWithModel(
                                                                                    model: _model.contactUsItemModel1,
                                                                                    updateCallback: () => setState(() {}),
                                                                                    child: const ContactUsItemWidget(
                                                                                      title: 'Belgium',
                                                                                      value: '0800-1-6374',
                                                                                    ),
                                                                                  ),
                                                                                  wrapWithModel(
                                                                                    model: _model.contactUsTitleModel2,
                                                                                    updateCallback: () => setState(() {}),
                                                                                    child: const ContactUsTitleWidget(
                                                                                      title: 'OCONUS (TOLL FREE)',
                                                                                    ),
                                                                                  ),
                                                                                  wrapWithModel(
                                                                                    model: _model.contactUsItemModel2,
                                                                                    updateCallback: () => setState(() {}),
                                                                                    child: const ContactUsItemWidget(
                                                                                      title: 'Belgium',
                                                                                      value: '0800-1-6374',
                                                                                    ),
                                                                                  ),
                                                                                  wrapWithModel(
                                                                                    model: _model.contactUsItemModel3,
                                                                                    updateCallback: () => setState(() {}),
                                                                                    child: const ContactUsItemWidget(
                                                                                      title: 'Crete',
                                                                                      value: '00800-18092003452',
                                                                                    ),
                                                                                  ),
                                                                                  wrapWithModel(
                                                                                    model: _model.contactUsItemModel4,
                                                                                    updateCallback: () => setState(() {}),
                                                                                    child: const ContactUsItemWidget(
                                                                                      title: 'Germany',
                                                                                      value: '0800-812-4690',
                                                                                    ),
                                                                                  ),
                                                                                  wrapWithModel(
                                                                                    model: _model.contactUsItemModel5,
                                                                                    updateCallback: () => setState(() {}),
                                                                                    child: const ContactUsItemWidget(
                                                                                      title: 'Guam',
                                                                                      value: '1-800-546-7195',
                                                                                    ),
                                                                                  ),
                                                                                  wrapWithModel(
                                                                                    model: _model.contactUsItemModel6,
                                                                                    updateCallback: () => setState(() {}),
                                                                                    child: const ContactUsItemWidget(
                                                                                      title: 'Italy',
                                                                                      value: '8008-72683',
                                                                                    ),
                                                                                  ),
                                                                                  wrapWithModel(
                                                                                    model: _model.contactUsItemModel7,
                                                                                    updateCallback: () => setState(() {}),
                                                                                    child: const ContactUsItemWidget(
                                                                                      title: 'Japan',
                                                                                      value: '00531-11-4239',
                                                                                    ),
                                                                                  ),
                                                                                  wrapWithModel(
                                                                                    model: _model.contactUsItemModel8,
                                                                                    updateCallback: () => setState(() {}),
                                                                                    child: const ContactUsItemWidget(
                                                                                      title: 'Korea',
                                                                                      value: '00308-130663',
                                                                                    ),
                                                                                  ),
                                                                                  wrapWithModel(
                                                                                    model: _model.contactUsItemModel9,
                                                                                    updateCallback: () => setState(() {}),
                                                                                    child: const ContactUsItemWidget(
                                                                                      title: 'Norway',
                                                                                      value: '800-14-110',
                                                                                    ),
                                                                                  ),
                                                                                  wrapWithModel(
                                                                                    model: _model.contactUsItemModel10,
                                                                                    updateCallback: () => setState(() {}),
                                                                                    child: const ContactUsItemWidget(
                                                                                      title: 'Spain',
                                                                                      value: '900-971-394',
                                                                                    ),
                                                                                  ),
                                                                                  wrapWithModel(
                                                                                    model: _model.contactUsItemModel11,
                                                                                    updateCallback: () => setState(() {}),
                                                                                    child: const ContactUsItemWidget(
                                                                                      title: 'United Kingdom',
                                                                                      value: '0800-96-1843',
                                                                                    ),
                                                                                  ),
                                                                                  wrapWithModel(
                                                                                    model: _model.contactUsTitleModel3,
                                                                                    updateCallback: () => setState(() {}),
                                                                                    child: const ContactUsTitleWidget(
                                                                                      title: 'OCONUS (COLLECT)',
                                                                                    ),
                                                                                  ),
                                                                                  wrapWithModel(
                                                                                    model: _model.contactUsItemModel12,
                                                                                    updateCallback: () => setState(() {}),
                                                                                    child: const ContactUsItemWidget(
                                                                                      title: 'Turkey, Saudi Arabia and Iceland',
                                                                                      value: '214-312-6030',
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ).animateOnPageLoad(
                                                                              animationsMap['containerOnPageLoadAnimation1']!),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            16.0,
                                                                            0.0,
                                                                            5.0),
                                                                    child:
                                                                        Container(
                                                                      width: double
                                                                          .infinity,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        boxShadow: const [
                                                                          BoxShadow(
                                                                            blurRadius:
                                                                                4.0,
                                                                            color:
                                                                                Color(0x33000000),
                                                                            offset:
                                                                                Offset(
                                                                              0.0,
                                                                              2.0,
                                                                            ),
                                                                          )
                                                                        ],
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Container(
                                                                            decoration:
                                                                                const BoxDecoration(
                                                                              color: Color(0xFF0F2654),
                                                                              borderRadius: BorderRadius.only(
                                                                                bottomLeft: Radius.circular(0.0),
                                                                                bottomRight: Radius.circular(0.0),
                                                                                topLeft: Radius.circular(8.0),
                                                                                topRight: Radius.circular(8.0),
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsets.all(8.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Icon(
                                                                                    Icons.mail,
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    size: 20.0,
                                                                                  ),
                                                                                  Expanded(
                                                                                    flex: 4,
                                                                                    child: Text(
                                                                                      'Mail Correspondence',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Arial',
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            fontSize: 16.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.bold,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ].divide(const SizedBox(width: 5.0)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          const Divider(
                                                                            height:
                                                                                2.5,
                                                                            thickness:
                                                                                2.0,
                                                                            color:
                                                                                Color(0xFF801B0E),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                5.0),
                                                                            child:
                                                                                Container(
                                                                              decoration: const BoxDecoration(
                                                                                borderRadius: BorderRadius.only(
                                                                                  bottomLeft: Radius.circular(8.0),
                                                                                  bottomRight: Radius.circular(8.0),
                                                                                  topLeft: Radius.circular(0.0),
                                                                                  topRight: Radius.circular(0.0),
                                                                                ),
                                                                              ),
                                                                              child: SingleChildScrollView(
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    wrapWithModel(
                                                                                      model: _model.contactUsTitleModel4,
                                                                                      updateCallback: () => setState(() {}),
                                                                                      child: const ContactUsTitleWidget(
                                                                                        title: 'CONUS',
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      ),
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsets.all(11.0),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              await launchURL('mailto:militarystar@aafes.com');
                                                                                            },
                                                                                            child: Text(
                                                                                              'militarystar@aafes.com',
                                                                                              textAlign: TextAlign.center,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Arial',
                                                                                                    color: const Color(0xFF0000FF),
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: false,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    wrapWithModel(
                                                                                      model: _model.contactUsTitleModel5,
                                                                                      updateCallback: () => setState(() {}),
                                                                                      child: const ContactUsTitleWidget(
                                                                                        title: 'Fax',
                                                                                      ),
                                                                                    ),
                                                                                    wrapWithModel(
                                                                                      model: _model.contactUsItemModel13,
                                                                                      updateCallback: () => setState(() {}),
                                                                                      child: const ContactUsItemWidget(
                                                                                        title: '1-214-465-2702',
                                                                                      ),
                                                                                    ),
                                                                                    wrapWithModel(
                                                                                      model: _model.contactUsTitleModel6,
                                                                                      updateCallback: () => setState(() {}),
                                                                                      child: const ContactUsTitleWidget(
                                                                                        title: 'Mail',
                                                                                      ),
                                                                                    ),
                                                                                    wrapWithModel(
                                                                                      model: _model.contactUsItemModel14,
                                                                                      updateCallback: () => setState(() {}),
                                                                                      child: const ContactUsItemWidget(
                                                                                        title: 'Exchange Credit Program\nPO Box 650410\nDallas, TX 75265-0410',
                                                                                      ),
                                                                                    ),
                                                                                    wrapWithModel(
                                                                                      model: _model.contactUsTitleModel7,
                                                                                      updateCallback: () => setState(() {}),
                                                                                      child: const ContactUsTitleWidget(
                                                                                        title: 'Mail Payment',
                                                                                      ),
                                                                                    ),
                                                                                    wrapWithModel(
                                                                                      model: _model.contactUsItemModel15,
                                                                                      updateCallback: () => setState(() {}),
                                                                                      child: const ContactUsItemWidget(
                                                                                        title: 'The Exchange\nPO Box 740890\nCincinnati, OH 45274-0890',
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation2']!),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ]
                                                                  .divide(const SizedBox(
                                                                      width:
                                                                          16.0))
                                                                  .addToStart(
                                                                      const SizedBox(
                                                                          width:
                                                                              16.0))
                                                                  .addToEnd(
                                                                      const SizedBox(
                                                                          width:
                                                                              16.0)),
                                                            ),
                                                          ].addToEnd(const SizedBox(
                                                              height: 16.0)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                ))
                                                  Container(
                                                    width: 274.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      8.0),
                                                          child: Text(
                                                            'Last Login at 09:33 AM CST 08 Nov 2023',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Arial',
                                                                  color: Colors
                                                                      .black,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                          tabletLandscape:
                                                              false,
                                                        ))
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/p_image_b_1.png',
                                                                    width:
                                                                        276.0,
                                                                    height:
                                                                        407.0,
                                                                    fit: BoxFit
                                                                        .fitHeight,
                                                                  ),
                                                                ),
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/registration_ad_2.png',
                                                                    width:
                                                                        276.0,
                                                                    height:
                                                                        408.0,
                                                                    fit: BoxFit
                                                                        .fitHeight,
                                                                  ),
                                                                ),
                                                              ]
                                                                  .divide(const SizedBox(
                                                                      height:
                                                                          16.0))
                                                                  .addToEnd(const SizedBox(
                                                                      height:
                                                                          10.0)),
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                              ].divide(const SizedBox(width: 16.0)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                    child: wrapWithModel(
                                      model: _model.footerModel1,
                                      updateCallback: () => setState(() {}),
                                      child: const FooterWidget(),
                                    ),
                                  ),
                                ],
                              ),
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
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
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
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Flexible(
                                              flex: 3,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  8.0),
                                                      child: Text(
                                                        'WELCOME DROORZN!',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Arial',
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Column(
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
                                                                    'Contact Us',
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
                                                          height: 2.5,
                                                          thickness: 3.0,
                                                          color:
                                                              Color(0xFF801B0E),
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Expanded(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            16.0,
                                                                            0.0,
                                                                            5.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
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
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Container(
                                                                                decoration: const BoxDecoration(
                                                                                  color: Color(0xFF0F2654),
                                                                                  borderRadius: BorderRadius.only(
                                                                                    bottomLeft: Radius.circular(0.0),
                                                                                    bottomRight: Radius.circular(0.0),
                                                                                    topLeft: Radius.circular(8.0),
                                                                                    topRight: Radius.circular(8.0),
                                                                                  ),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsets.all(8.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Icon(
                                                                                        Icons.call,
                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        size: 20.0,
                                                                                      ),
                                                                                      Expanded(
                                                                                        flex: 4,
                                                                                        child: Text(
                                                                                          'Phone',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Arial',
                                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                fontSize: 16.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: false,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ].divide(const SizedBox(width: 5.0)),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              const Divider(
                                                                                height: 2.5,
                                                                                thickness: 2.0,
                                                                                color: Color(0xFF801B0E),
                                                                              ),
                                                                              Container(
                                                                                decoration: const BoxDecoration(
                                                                                  borderRadius: BorderRadius.only(
                                                                                    bottomLeft: Radius.circular(8.0),
                                                                                    bottomRight: Radius.circular(8.0),
                                                                                    topLeft: Radius.circular(0.0),
                                                                                    topRight: Radius.circular(0.0),
                                                                                  ),
                                                                                ),
                                                                                child: SingleChildScrollView(
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      wrapWithModel(
                                                                                        model: _model.contactUsTitleModel8,
                                                                                        updateCallback: () => setState(() {}),
                                                                                        child: const ContactUsTitleWidget(
                                                                                          title: 'CONUS',
                                                                                        ),
                                                                                      ),
                                                                                      wrapWithModel(
                                                                                        model: _model.contactUsItemModel16,
                                                                                        updateCallback: () => setState(() {}),
                                                                                        child: const ContactUsItemWidget(
                                                                                          title: 'Belgium',
                                                                                          value: '0800-1-6374',
                                                                                        ),
                                                                                      ),
                                                                                      wrapWithModel(
                                                                                        model: _model.contactUsTitleModel9,
                                                                                        updateCallback: () => setState(() {}),
                                                                                        child: const ContactUsTitleWidget(
                                                                                          title: 'OCONUS (TOLL FREE)',
                                                                                        ),
                                                                                      ),
                                                                                      wrapWithModel(
                                                                                        model: _model.contactUsItemModel17,
                                                                                        updateCallback: () => setState(() {}),
                                                                                        child: const ContactUsItemWidget(
                                                                                          title: 'Belgium',
                                                                                          value: '0800-1-6374',
                                                                                        ),
                                                                                      ),
                                                                                      wrapWithModel(
                                                                                        model: _model.contactUsItemModel18,
                                                                                        updateCallback: () => setState(() {}),
                                                                                        child: const ContactUsItemWidget(
                                                                                          title: 'Crete',
                                                                                          value: '00800-18092003452',
                                                                                        ),
                                                                                      ),
                                                                                      wrapWithModel(
                                                                                        model: _model.contactUsItemModel19,
                                                                                        updateCallback: () => setState(() {}),
                                                                                        child: const ContactUsItemWidget(
                                                                                          title: 'Germany',
                                                                                          value: '0800-812-4690',
                                                                                        ),
                                                                                      ),
                                                                                      wrapWithModel(
                                                                                        model: _model.contactUsItemModel20,
                                                                                        updateCallback: () => setState(() {}),
                                                                                        child: const ContactUsItemWidget(
                                                                                          title: 'Guam',
                                                                                          value: '1-800-546-7195',
                                                                                        ),
                                                                                      ),
                                                                                      wrapWithModel(
                                                                                        model: _model.contactUsItemModel21,
                                                                                        updateCallback: () => setState(() {}),
                                                                                        child: const ContactUsItemWidget(
                                                                                          title: 'Italy',
                                                                                          value: '8008-72683',
                                                                                        ),
                                                                                      ),
                                                                                      wrapWithModel(
                                                                                        model: _model.contactUsItemModel22,
                                                                                        updateCallback: () => setState(() {}),
                                                                                        child: const ContactUsItemWidget(
                                                                                          title: 'Japan',
                                                                                          value: '00531-11-4239',
                                                                                        ),
                                                                                      ),
                                                                                      wrapWithModel(
                                                                                        model: _model.contactUsItemModel23,
                                                                                        updateCallback: () => setState(() {}),
                                                                                        child: const ContactUsItemWidget(
                                                                                          title: 'Korea',
                                                                                          value: '00308-130663',
                                                                                        ),
                                                                                      ),
                                                                                      wrapWithModel(
                                                                                        model: _model.contactUsItemModel24,
                                                                                        updateCallback: () => setState(() {}),
                                                                                        child: const ContactUsItemWidget(
                                                                                          title: 'Norway',
                                                                                          value: '800-14-110',
                                                                                        ),
                                                                                      ),
                                                                                      wrapWithModel(
                                                                                        model: _model.contactUsItemModel25,
                                                                                        updateCallback: () => setState(() {}),
                                                                                        child: const ContactUsItemWidget(
                                                                                          title: 'Spain',
                                                                                          value: '900-971-394',
                                                                                        ),
                                                                                      ),
                                                                                      wrapWithModel(
                                                                                        model: _model.contactUsItemModel26,
                                                                                        updateCallback: () => setState(() {}),
                                                                                        child: const ContactUsItemWidget(
                                                                                          title: 'United Kingdom',
                                                                                          value: '0800-96-1843',
                                                                                        ),
                                                                                      ),
                                                                                      wrapWithModel(
                                                                                        model: _model.contactUsTitleModel10,
                                                                                        updateCallback: () => setState(() {}),
                                                                                        child: const ContactUsTitleWidget(
                                                                                          title: 'OCONUS (COLLECT)',
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                                                                                        child: wrapWithModel(
                                                                                          model: _model.contactUsItemModel27,
                                                                                          updateCallback: () => setState(() {}),
                                                                                          child: const ContactUsItemWidget(
                                                                                            title: 'Turkey, Saudi Arabia and Iceland',
                                                                                            value: '214-312-6030',
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation3']!),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      if (responsiveVisibility(
                                                                        context:
                                                                            context,
                                                                        tablet:
                                                                            false,
                                                                        tabletLandscape:
                                                                            false,
                                                                        desktop:
                                                                            false,
                                                                      ))
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              16.0,
                                                                              0.0,
                                                                              5.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            decoration:
                                                                                BoxDecoration(
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
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Container(
                                                                                  decoration: const BoxDecoration(
                                                                                    color: Color(0xFF0F2654),
                                                                                    borderRadius: BorderRadius.only(
                                                                                      bottomLeft: Radius.circular(0.0),
                                                                                      bottomRight: Radius.circular(0.0),
                                                                                      topLeft: Radius.circular(8.0),
                                                                                      topRight: Radius.circular(8.0),
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsets.all(8.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Icon(
                                                                                          Icons.mail,
                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                          size: 20.0,
                                                                                        ),
                                                                                        Expanded(
                                                                                          flex: 4,
                                                                                          child: Text(
                                                                                            'Mail Correspondence',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Arial',
                                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.bold,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ].divide(const SizedBox(width: 5.0)),
                                                                                    ),
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
                                                                                    decoration: const BoxDecoration(
                                                                                      borderRadius: BorderRadius.only(
                                                                                        bottomLeft: Radius.circular(8.0),
                                                                                        bottomRight: Radius.circular(8.0),
                                                                                        topLeft: Radius.circular(0.0),
                                                                                        topRight: Radius.circular(0.0),
                                                                                      ),
                                                                                    ),
                                                                                    child: SingleChildScrollView(
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          wrapWithModel(
                                                                                            model: _model.contactUsTitleModel11,
                                                                                            updateCallback: () => setState(() {}),
                                                                                            child: const ContactUsTitleWidget(
                                                                                              title: 'CONUS',
                                                                                            ),
                                                                                          ),
                                                                                          Container(
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            ),
                                                                                            child: Align(
                                                                                              alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsets.all(11.0),
                                                                                                child: InkWell(
                                                                                                  splashColor: Colors.transparent,
                                                                                                  focusColor: Colors.transparent,
                                                                                                  hoverColor: Colors.transparent,
                                                                                                  highlightColor: Colors.transparent,
                                                                                                  onTap: () async {
                                                                                                    await launchURL('mailto:militarystar@aafes.com');
                                                                                                  },
                                                                                                  child: Text(
                                                                                                    'militarystar@aafes.com',
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Arial',
                                                                                                          color: const Color(0xFF0000FF),
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: false,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          wrapWithModel(
                                                                                            model: _model.contactUsTitleModel12,
                                                                                            updateCallback: () => setState(() {}),
                                                                                            child: const ContactUsTitleWidget(
                                                                                              title: 'Fax',
                                                                                            ),
                                                                                          ),
                                                                                          wrapWithModel(
                                                                                            model: _model.contactUsItemModel28,
                                                                                            updateCallback: () => setState(() {}),
                                                                                            child: const ContactUsItemWidget(
                                                                                              title: '1-214-465-2702',
                                                                                            ),
                                                                                          ),
                                                                                          wrapWithModel(
                                                                                            model: _model.contactUsTitleModel13,
                                                                                            updateCallback: () => setState(() {}),
                                                                                            child: const ContactUsTitleWidget(
                                                                                              title: 'Mail',
                                                                                            ),
                                                                                          ),
                                                                                          wrapWithModel(
                                                                                            model: _model.contactUsItemModel29,
                                                                                            updateCallback: () => setState(() {}),
                                                                                            child: const ContactUsItemWidget(
                                                                                              title: 'Exchange Credit Program\nPO Box 650410\nDallas, TX 75265-0410',
                                                                                            ),
                                                                                          ),
                                                                                          wrapWithModel(
                                                                                            model: _model.contactUsTitleModel14,
                                                                                            updateCallback: () => setState(() {}),
                                                                                            child: const ContactUsTitleWidget(
                                                                                              title: 'Mail Payment',
                                                                                            ),
                                                                                          ),
                                                                                          wrapWithModel(
                                                                                            model: _model.contactUsItemModel30,
                                                                                            updateCallback: () => setState(() {}),
                                                                                            child: const ContactUsItemWidget(
                                                                                              title: 'The Exchange\nPO Box 740890\nCincinnati, OH 45274-0890',
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation4']!),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                if (responsiveVisibility(
                                                                  context:
                                                                      context,
                                                                  phone: false,
                                                                ))
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          16.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
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
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Container(
                                                                              decoration: const BoxDecoration(
                                                                                color: Color(0xFF0F2654),
                                                                                borderRadius: BorderRadius.only(
                                                                                  bottomLeft: Radius.circular(0.0),
                                                                                  bottomRight: Radius.circular(0.0),
                                                                                  topLeft: Radius.circular(8.0),
                                                                                  topRight: Radius.circular(8.0),
                                                                                ),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.all(8.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Icon(
                                                                                      Icons.mail,
                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      size: 20.0,
                                                                                    ),
                                                                                    Expanded(
                                                                                      flex: 4,
                                                                                      child: Text(
                                                                                        'Mail Correspondence',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Arial',
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              fontSize: 16.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.bold,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(width: 5.0)),
                                                                                ),
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
                                                                                decoration: const BoxDecoration(
                                                                                  borderRadius: BorderRadius.only(
                                                                                    bottomLeft: Radius.circular(8.0),
                                                                                    bottomRight: Radius.circular(8.0),
                                                                                    topLeft: Radius.circular(0.0),
                                                                                    topRight: Radius.circular(0.0),
                                                                                  ),
                                                                                ),
                                                                                child: SingleChildScrollView(
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      wrapWithModel(
                                                                                        model: _model.contactUsTitleModel15,
                                                                                        updateCallback: () => setState(() {}),
                                                                                        child: const ContactUsTitleWidget(
                                                                                          title: 'CONUS',
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsets.all(11.0),
                                                                                            child: Text(
                                                                                              'militarystar@aafes.com',
                                                                                              textAlign: TextAlign.center,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Arial',
                                                                                                    color: const Color(0xFF0000FF),
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: false,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      wrapWithModel(
                                                                                        model: _model.contactUsTitleModel16,
                                                                                        updateCallback: () => setState(() {}),
                                                                                        child: const ContactUsTitleWidget(
                                                                                          title: 'Fax',
                                                                                        ),
                                                                                      ),
                                                                                      wrapWithModel(
                                                                                        model: _model.contactUsItemModel31,
                                                                                        updateCallback: () => setState(() {}),
                                                                                        child: const ContactUsItemWidget(
                                                                                          title: '1-214-465-2702',
                                                                                        ),
                                                                                      ),
                                                                                      wrapWithModel(
                                                                                        model: _model.contactUsTitleModel17,
                                                                                        updateCallback: () => setState(() {}),
                                                                                        child: const ContactUsTitleWidget(
                                                                                          title: 'Mail',
                                                                                        ),
                                                                                      ),
                                                                                      wrapWithModel(
                                                                                        model: _model.contactUsItemModel32,
                                                                                        updateCallback: () => setState(() {}),
                                                                                        child: const ContactUsItemWidget(
                                                                                          title: 'Exchange Credit Program\nPO Box 650410\nDallas, TX 75265-0410',
                                                                                        ),
                                                                                      ),
                                                                                      wrapWithModel(
                                                                                        model: _model.contactUsTitleModel18,
                                                                                        updateCallback: () => setState(() {}),
                                                                                        child: const ContactUsTitleWidget(
                                                                                          title: 'Mail Payment',
                                                                                        ),
                                                                                      ),
                                                                                      wrapWithModel(
                                                                                        model: _model.contactUsItemModel33,
                                                                                        updateCallback: () => setState(() {}),
                                                                                        child: const ContactUsItemWidget(
                                                                                          title: 'The Exchange\nPO Box 740890\nCincinnati, OH 45274-0890',
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation5']!),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                              ]
                                                                  .divide(const SizedBox(
                                                                      width:
                                                                          16.0))
                                                                  .addToStart(
                                                                      const SizedBox(
                                                                          width:
                                                                              16.0))
                                                                  .addToEnd(
                                                                      const SizedBox(
                                                                          width:
                                                                              16.0)),
                                                            ),
                                                          ],
                                                        ),
                                                      ].addToEnd(const SizedBox(
                                                          height: 16.0)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                            ))
                                              Container(
                                                width: 274.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 8.0),
                                                  child: Text(
                                                    'Last Login at 09:33 AM CST 08 Nov 2023',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Arial',
                                                          color: Colors.black,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                          ].divide(const SizedBox(width: 16.0)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.footerModel2,
                                  updateCallback: () => setState(() {}),
                                  child: const FooterWidget(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    child: custom_widgets.SessionWidget(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      resetTimer: () async {
                        await actions.sessionTimerAction(
                          context,
                          true,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
