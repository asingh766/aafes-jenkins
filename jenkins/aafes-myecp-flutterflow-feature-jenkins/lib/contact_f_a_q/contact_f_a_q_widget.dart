import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/components/menu_options_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'contact_f_a_q_model.dart';
export 'contact_f_a_q_model.dart';

class ContactFAQWidget extends StatefulWidget {
  const ContactFAQWidget({super.key});

  @override
  State<ContactFAQWidget> createState() => _ContactFAQWidgetState();
}

class _ContactFAQWidgetState extends State<ContactFAQWidget> {
  late ContactFAQModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContactFAQModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.sessionTimerAction(
        context,
        true,
      );
      unawaited(
        () async {
          await action_blocks.showLoadingDialog(context);
        }(),
      );
      _model.faqresults = await StaticContentGroup.staticPagesCall.call(
        pageName: 'faq',
        dynamicBaseURL: FFAppState().dynamicBaseURL,
      );
      if ((_model.faqresults?.succeeded ?? true)) {
        setState(() {
          _model.content =
              FaqStruct.maybeFromMap((_model.faqresults?.jsonBody ?? ''));
        });
      }
      Navigator.pop(context);
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
        title: 'ContactFAQ',
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
                                        0.0, 86.0, 0.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.9,
                                      constraints: BoxConstraints(
                                        minHeight:
                                            MediaQuery.sizeOf(context).height *
                                                0.93,
                                      ),
                                      decoration: const BoxDecoration(),
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
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
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
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
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
                                                                        'FAQs',
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
                                                                      0.0,
                                                                      24.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Builder(
                                                                builder:
                                                                    (context) {
                                                                  final option =
                                                                      FFAppState()
                                                                          .faqOptions
                                                                          .toList();
                                                                  return Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    children: List.generate(
                                                                        option
                                                                            .length,
                                                                        (optionIndex) {
                                                                      final optionItem =
                                                                          option[
                                                                              optionIndex];
                                                                      return Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              1.0,
                                                                              0.0),
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              setState(() {
                                                                                _model.selectedOption = optionItem.value;
                                                                              });
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              constraints: const BoxConstraints(
                                                                                minHeight: 60.0,
                                                                              ),
                                                                              decoration: BoxDecoration(
                                                                                color: optionItem.value == _model.selectedOption ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                borderRadius: const BorderRadius.only(
                                                                                  bottomLeft: Radius.circular(0.0),
                                                                                  bottomRight: Radius.circular(0.0),
                                                                                  topLeft: Radius.circular(4.0),
                                                                                  topRight: Radius.circular(4.0),
                                                                                ),
                                                                              ),
                                                                              child: Align(
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                                                                                  child: Text(
                                                                                    optionItem.label,
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Arial',
                                                                                          color: optionItem.value == _model.selectedOption ? FlutterFlowTheme.of(context).primaryBackground : FlutterFlowTheme.of(context).primaryText,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.bold,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }),
                                                                  );
                                                                },
                                                              ),
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent2,
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            16.0),
                                                                    child: Text(
                                                                      FFAppState()
                                                                          .faqOptions
                                                                          .where((e) =>
                                                                              _model.selectedOption ==
                                                                              e.value)
                                                                          .toList()
                                                                          .first
                                                                          .label,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Arial',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontSize:
                                                                                20.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                            16.0),
                                                                child: Html(
                                                                  data: () {
                                                                                if (_model.selectedOption == 'help') {
                                                                                  return _model.content?.help;
                                                                                } else if (_model.selectedOption == 'paymentQuestions') {
                                                                                  return _model.content?.paymentQuestions;
                                                                                } else if (_model.selectedOption == 'onlinePayments') {
                                                                                  return _model.content?.onlinePayments;
                                                                                } else if (_model.selectedOption == 'statementQuestions') {
                                                                                  return _model.content?.statementQuestions;
                                                                                } else if (_model.selectedOption == 'rewardPrograms') {
                                                                                  return _model.content?.rewardPrograms;
                                                                                } else if (_model.selectedOption == 'textAlerts') {
                                                                                  return _model.content?.textAlerts;
                                                                                } else if (_model.selectedOption == 'payYourWay') {
                                                                                  return _model.content?.payYourWay;
                                                                                } else {
                                                                                  return ' ';
                                                                                }
                                                                              }() ==
                                                                              null ||
                                                                          () {
                                                                                if (_model.selectedOption == 'help') {
                                                                                  return _model.content?.help;
                                                                                } else if (_model.selectedOption == 'paymentQuestions') {
                                                                                  return _model.content?.paymentQuestions;
                                                                                } else if (_model.selectedOption == 'onlinePayments') {
                                                                                  return _model.content?.onlinePayments;
                                                                                } else if (_model.selectedOption == 'statementQuestions') {
                                                                                  return _model.content?.statementQuestions;
                                                                                } else if (_model.selectedOption == 'rewardPrograms') {
                                                                                  return _model.content?.rewardPrograms;
                                                                                } else if (_model.selectedOption == 'textAlerts') {
                                                                                  return _model.content?.textAlerts;
                                                                                } else if (_model.selectedOption == 'payYourWay') {
                                                                                  return _model.content?.payYourWay;
                                                                                } else {
                                                                                  return ' ';
                                                                                }
                                                                              }() ==
                                                                              ''
                                                                      ? ' '
                                                                      : () {
                                                                          if (_model.selectedOption ==
                                                                              'help') {
                                                                            return _model.content!.help;
                                                                          } else if (_model.selectedOption ==
                                                                              'paymentQuestions') {
                                                                            return _model.content!.paymentQuestions;
                                                                          } else if (_model.selectedOption ==
                                                                              'onlinePayments') {
                                                                            return _model.content!.onlinePayments;
                                                                          } else if (_model.selectedOption ==
                                                                              'statementQuestions') {
                                                                            return _model.content!.statementQuestions;
                                                                          } else if (_model.selectedOption ==
                                                                              'rewardPrograms') {
                                                                            return _model.content!.rewardPrograms;
                                                                          } else if (_model.selectedOption ==
                                                                              'textAlerts') {
                                                                            return _model.content!.textAlerts;
                                                                          } else if (_model.selectedOption ==
                                                                              'payYourWay') {
                                                                            return _model.content!.payYourWay;
                                                                          } else {
                                                                            return ' ';
                                                                          }
                                                                        }(),
                                                                  onLinkTap: (url,
                                                                          _,
                                                                          __,
                                                                          ___) =>
                                                                      launchURL(
                                                                          url!),
                                                                ),
                                                              ),
                                                              if (_model
                                                                      .selectedOption ==
                                                                  'textAlerts')
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent2,
                                                                      ),
                                                                      child:
                                                                          Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              const EdgeInsets.all(16.0),
                                                                          child:
                                                                              Text(
                                                                            'Two-Factor Authentication',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Arial',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 20.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.bold,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              16.0),
                                                                      child:
                                                                          Html(
                                                                        data: _model.content?.twofa == null ||
                                                                                _model.content?.twofa == ''
                                                                            ? ' '
                                                                            : _model.content!.twofa,
                                                                        onLinkTap: (url,
                                                                                _,
                                                                                __,
                                                                                ___) =>
                                                                            launchURL(url!),
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
                                                ]
                                                    .divide(
                                                        const SizedBox(height: 0.0))
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
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 1.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    decoration: const BoxDecoration(),
                                    child: wrapWithModel(
                                      model: _model.footerModel1,
                                      updateCallback: () => setState(() {}),
                                      child: const FooterWidget(),
                                    ),
                                  ),
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
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.9,
                                constraints: BoxConstraints(
                                  minHeight:
                                      MediaQuery.sizeOf(context).height * 0.93,
                                ),
                                decoration: const BoxDecoration(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      flex: 3,
                                      child: Container(
                                        decoration: const BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                          color:
                                                              Color(0xFF0F2654),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    8.0),
                                                            topRight:
                                                                Radius.circular(
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
                                                                  'FAQs',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Arial',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
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
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent2,
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  16.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Flexible(
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    FFAppState()
                                                                        .faqOptions
                                                                        .where((e) =>
                                                                            e.value ==
                                                                            _model.selectedOption)
                                                                        .toList()
                                                                        .first
                                                                        .label,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Arial',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).black,
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                              if (responsiveVisibility(
                                                                context:
                                                                    context,
                                                                tablet: false,
                                                                tabletLandscape:
                                                                    false,
                                                                desktop: false,
                                                              ))
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .settings_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                      ),
                                                                      Builder(
                                                                        builder:
                                                                            (context) =>
                                                                                FlutterFlowIconButton(
                                                                          borderColor:
                                                                              Colors.transparent,
                                                                          borderRadius:
                                                                              20.0,
                                                                          buttonSize:
                                                                              30.0,
                                                                          icon:
                                                                              Icon(
                                                                            Icons.keyboard_arrow_down,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            size:
                                                                                15.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await showAlignedDialog(
                                                                              barrierColor: Colors.transparent,
                                                                              context: context,
                                                                              isGlobal: false,
                                                                              avoidOverflow: false,
                                                                              targetAnchor: const AlignmentDirectional(1.0, 1.0).resolve(Directionality.of(context)),
                                                                              followerAnchor: const AlignmentDirectional(1.0, -1.0).resolve(Directionality.of(context)),
                                                                              builder: (dialogContext) {
                                                                                return Material(
                                                                                  color: Colors.transparent,
                                                                                  child: WebViewAware(
                                                                                    child: GestureDetector(
                                                                                      onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                      child: MenuOptionsWidget(
                                                                                        options: FFAppState().faqOptions,
                                                                                        onClick: (selectedOption) async {
                                                                                          setState(() {
                                                                                            _model.selectedOption = selectedOption!;
                                                                                          });
                                                                                          Navigator.pop(context);
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                setState(() {}));
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              if (responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                                desktop: false,
                                                              ))
                                                                Builder(
                                                                  builder:
                                                                      (context) =>
                                                                          InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      await showAlignedDialog(
                                                                        barrierColor:
                                                                            Colors.transparent,
                                                                        context:
                                                                            context,
                                                                        isGlobal:
                                                                            false,
                                                                        avoidOverflow:
                                                                            false,
                                                                        targetAnchor:
                                                                            const AlignmentDirectional(1.0, 1.0).resolve(Directionality.of(context)),
                                                                        followerAnchor:
                                                                            const AlignmentDirectional(1.0, -1.0).resolve(Directionality.of(context)),
                                                                        builder:
                                                                            (dialogContext) {
                                                                          return Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            child:
                                                                                WebViewAware(
                                                                              child: GestureDetector(
                                                                                onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                child: MenuOptionsWidget(
                                                                                  options: FFAppState().faqOptions,
                                                                                  onClick: (selectedOption) async {
                                                                                    setState(() {
                                                                                      _model.selectedOption = selectedOption!;
                                                                                    });
                                                                                    Navigator.pop(context);
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          setState(
                                                                              () {}));
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).black,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            12.0,
                                                                            6.0,
                                                                            8.0,
                                                                            6.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Text(
                                                                              FFAppState().faqOptions.where((e) => e.value == _model.selectedOption).toList().first.label,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Arial',
                                                                                    color: FlutterFlowTheme.of(context).black,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: Image.asset(
                                                                                  'assets/images/Chevron.png',
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                    16.0),
                                                            child: Html(
                                                              data: () {
                                                                            if (_model.selectedOption ==
                                                                                'help') {
                                                                              return _model.content?.help;
                                                                            } else if (_model.selectedOption ==
                                                                                'paymentQuestions') {
                                                                              return _model.content?.paymentQuestions;
                                                                            } else if (_model.selectedOption ==
                                                                                'onlinePayments') {
                                                                              return _model.content?.onlinePayments;
                                                                            } else if (_model.selectedOption ==
                                                                                'statementQuestions') {
                                                                              return _model.content?.statementQuestions;
                                                                            } else if (_model.selectedOption ==
                                                                                'rewardPrograms') {
                                                                              return _model.content?.rewardPrograms;
                                                                            } else if (_model.selectedOption ==
                                                                                'textAlerts') {
                                                                              return _model.content?.textAlerts;
                                                                            } else if (_model.selectedOption ==
                                                                                'payYourWay') {
                                                                              return _model.content?.payYourWay;
                                                                            } else {
                                                                              return ' ';
                                                                            }
                                                                          }() ==
                                                                          null ||
                                                                      () {
                                                                            if (_model.selectedOption ==
                                                                                'help') {
                                                                              return _model.content?.help;
                                                                            } else if (_model.selectedOption ==
                                                                                'paymentQuestions') {
                                                                              return _model.content?.paymentQuestions;
                                                                            } else if (_model.selectedOption ==
                                                                                'onlinePayments') {
                                                                              return _model.content?.onlinePayments;
                                                                            } else if (_model.selectedOption ==
                                                                                'statementQuestions') {
                                                                              return _model.content?.statementQuestions;
                                                                            } else if (_model.selectedOption ==
                                                                                'rewardPrograms') {
                                                                              return _model.content?.rewardPrograms;
                                                                            } else if (_model.selectedOption ==
                                                                                'textAlerts') {
                                                                              return _model.content?.textAlerts;
                                                                            } else if (_model.selectedOption ==
                                                                                'payYourWay') {
                                                                              return _model.content?.payYourWay;
                                                                            } else {
                                                                              return ' ';
                                                                            }
                                                                          }() ==
                                                                          ''
                                                                  ? ' '
                                                                  : () {
                                                                      if (_model
                                                                              .selectedOption ==
                                                                          'help') {
                                                                        return _model
                                                                            .content!
                                                                            .help;
                                                                      } else if (_model
                                                                              .selectedOption ==
                                                                          'paymentQuestions') {
                                                                        return _model
                                                                            .content!
                                                                            .paymentQuestions;
                                                                      } else if (_model
                                                                              .selectedOption ==
                                                                          'onlinePayments') {
                                                                        return _model
                                                                            .content!
                                                                            .onlinePayments;
                                                                      } else if (_model
                                                                              .selectedOption ==
                                                                          'statementQuestions') {
                                                                        return _model
                                                                            .content!
                                                                            .statementQuestions;
                                                                      } else if (_model
                                                                              .selectedOption ==
                                                                          'rewardPrograms') {
                                                                        return _model
                                                                            .content!
                                                                            .rewardPrograms;
                                                                      } else if (_model
                                                                              .selectedOption ==
                                                                          'textAlerts') {
                                                                        return _model
                                                                            .content!
                                                                            .textAlerts;
                                                                      } else if (_model
                                                                              .selectedOption ==
                                                                          'payYourWay') {
                                                                        return _model
                                                                            .content!
                                                                            .payYourWay;
                                                                      } else {
                                                                        return ' ';
                                                                      }
                                                                    }(),
                                                              onLinkTap: (url,
                                                                      _,
                                                                      __,
                                                                      ___) =>
                                                                  launchURL(
                                                                      url!),
                                                            ),
                                                          ),
                                                          if (_model
                                                                  .selectedOption ==
                                                              'textAlerts')
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent2,
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              16.0),
                                                                      child:
                                                                          Text(
                                                                        'Two-Factor Authentication',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Arial',
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 20.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.bold,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              16.0),
                                                                  child: Html(
                                                                    data: _model.content?.twofa ==
                                                                                null ||
                                                                            _model.content?.twofa ==
                                                                                ''
                                                                        ? ' '
                                                                        : _model
                                                                            .content!
                                                                            .twofa,
                                                                    onLinkTap: (url,
                                                                            _,
                                                                            __,
                                                                            ___) =>
                                                                        launchURL(
                                                                            url!),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ]
                                              .divide(const SizedBox(height: 0.0))
                                              .addToEnd(const SizedBox(height: 10.0)),
                                        ),
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 16.0)),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.9,
                                decoration: const BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.footerModel2,
                                  updateCallback: () => setState(() {}),
                                  child: const FooterWidget(),
                                ),
                              ),
                            ),
                          ].divide(const SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
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
