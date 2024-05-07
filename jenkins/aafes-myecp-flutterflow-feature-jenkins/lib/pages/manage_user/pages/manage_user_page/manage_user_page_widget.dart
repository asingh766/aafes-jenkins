import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/account_summary_banner/account_summary_banner_widget.dart';
import '/pages/manage_user/components/manage_auth_users_step2/manage_auth_users_step2_widget.dart';
import '/pages/manage_user/components/manage_auth_users_step3/manage_auth_users_step3_widget.dart';
import '/pages/manage_user/components/manage_auth_users_step_1_4/manage_auth_users_step14_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'manage_user_page_model.dart';
export 'manage_user_page_model.dart';

class ManageUserPageWidget extends StatefulWidget {
  const ManageUserPageWidget({
    super.key,
    this.accountNumber,
    bool? isPrimaryUser,
    required this.cardNumber,
  }) : isPrimaryUser = isPrimaryUser ?? false;

  final String? accountNumber;
  final bool isPrimaryUser;
  final String? cardNumber;

  @override
  State<ManageUserPageWidget> createState() => _ManageUserPageWidgetState();
}

class _ManageUserPageWidgetState extends State<ManageUserPageWidget> {
  late ManageUserPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ManageUserPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.sessionTimerAction(
        context,
        true,
      );
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
        title: 'MyECP : Manage Authorized Users',
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
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 70.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              decoration: const BoxDecoration(),
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: Container(
                                        width: FFAppConstants.maxScreenWidth,
                                        constraints: BoxConstraints(
                                          minHeight: FFAppState()
                                              .screenBodyHeightDesktop,
                                        ),
                                        decoration: const BoxDecoration(),
                                        alignment:
                                            const AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Flexible(
                                                flex: 3,
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 16.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.0, 0.0),
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
                                                      Container(
                                                        decoration:
                                                            const BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      Container(
                                                                        decoration:
                                                                            const BoxDecoration(
                                                                          color:
                                                                              Color(0xFF0F2654),
                                                                          borderRadius:
                                                                              BorderRadius.only(
                                                                            bottomLeft:
                                                                                Radius.circular(0.0),
                                                                            bottomRight:
                                                                                Radius.circular(0.0),
                                                                            topLeft:
                                                                                Radius.circular(8.0),
                                                                            topRight:
                                                                                Radius.circular(8.0),
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              const EdgeInsets.all(8.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children:
                                                                                [
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  context.pushNamed('HomeDashboard');
                                                                                },
                                                                                child: Icon(
                                                                                  Icons.arrow_circle_left_outlined,
                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                  size: 20.0,
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                child: Text(
                                                                                  'Manage Authorized Users',
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
                                                                            ].divide(const SizedBox(width: 8.0)),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      const Divider(
                                                                        height:
                                                                            2.0,
                                                                        thickness:
                                                                            2.5,
                                                                        color: Color(
                                                                            0xFF801B0E),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  wrapWithModel(
                                                                    model: _model
                                                                        .accountSummaryBannerModel1,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        AccountSummaryBannerWidget(
                                                                      cardNumber:
                                                                          FFAppState()
                                                                              .accountNumberLast4Digits,
                                                                      userCount:
                                                                          valueOrDefault<
                                                                              String>(
                                                                        _model
                                                                            .manageAuthUsersStep1Model1
                                                                            .authUsers
                                                                            .length
                                                                            .toString(),
                                                                        '0',
                                                                      ),
                                                                      accountNumber:
                                                                          widget
                                                                              .accountNumber,
                                                                      isPrimaryUser:
                                                                          widget
                                                                              .isPrimaryUser,
                                                                      cardNumberValue:
                                                                          widget
                                                                              .cardNumber!,
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    decoration:
                                                                        const BoxDecoration(),
                                                                    child:
                                                                        Builder(
                                                                      builder:
                                                                          (context) {
                                                                        if (_model.pageStep ==
                                                                            0) {
                                                                          return Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                24.0,
                                                                                16.0,
                                                                                24.0),
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.manageAuthUsersStep1Model1,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: ManageAuthUsersStep14Widget(
                                                                                success: _model.addUserSuccess,
                                                                                accountNumber: widget.accountNumber!,
                                                                                isPrimaryUser: widget.isPrimaryUser,
                                                                                nextCallback: () async {
                                                                                  setState(() {
                                                                                    _model.pageStep = 1;
                                                                                  });
                                                                                },
                                                                              ),
                                                                            ),
                                                                          );
                                                                        } else if (_model.pageStep ==
                                                                            1) {
                                                                          return Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                24.0,
                                                                                16.0,
                                                                                24.0),
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.manageAuthUsersStep2Model1,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: ManageAuthUsersStep2Widget(
                                                                                accountNumber: widget.accountNumber,
                                                                                nextCallback: () async {
                                                                                  setState(() {
                                                                                    _model.pageStep = 2;
                                                                                  });
                                                                                },
                                                                                cancelCallback: () async {
                                                                                  setState(() {
                                                                                    _model.pageStep = 0;
                                                                                    _model.addUserSuccess = false;
                                                                                  });
                                                                                },
                                                                              ),
                                                                            ),
                                                                          );
                                                                        } else if (_model.pageStep ==
                                                                            2) {
                                                                          return Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                24.0,
                                                                                16.0,
                                                                                24.0),
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.manageAuthUsersStep3Model1,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: ManageAuthUsersStep3Widget(
                                                                                firstNameInitialValueD: _model.manageAuthUsersStep2Model1.firstNameTextField1DModel.textController.text,
                                                                                middleInitialValueD: _model.manageAuthUsersStep2Model1.middleNameTextField1DModel.textController.text,
                                                                                lastNameInitialValueD: _model.manageAuthUsersStep2Model1.lastNameTextField1DModel.textController.text,
                                                                                ssnInitialValueD: _model.manageAuthUsersStep2Model1.sSNTextField1DModel.ssnValue != null && _model.manageAuthUsersStep2Model1.sSNTextField1DModel.ssnValue != '' ? _model.manageAuthUsersStep2Model1.sSNTextField1DModel.ssnValue! : '',
                                                                                firstNameInitialValueM: _model.manageAuthUsersStep2Model1.firstNameTextField1MModel.textController.text,
                                                                                middleInitialValueM: _model.manageAuthUsersStep2Model1.middleNameTextField1MModel.textController.text,
                                                                                lastNameInitialValueM: _model.manageAuthUsersStep2Model1.lastNameTextField1MModel.textController.text,
                                                                                ssnInitialValueM: _model.manageAuthUsersStep2Model1.sSNTextField1MModel.ssnValue != null && _model.manageAuthUsersStep2Model1.sSNTextField1MModel.ssnValue != '' ? _model.manageAuthUsersStep2Model1.sSNTextField1MModel.ssnValue! : '',
                                                                                accountNumber: widget.accountNumber!,
                                                                                successCallback: () async {
                                                                                  setState(() {
                                                                                    _model.pageStep = 0;
                                                                                    _model.addUserSuccess = true;
                                                                                  });
                                                                                },
                                                                                cancelCallback: () async {
                                                                                  setState(() {
                                                                                    _model.pageStep = 1;
                                                                                  });
                                                                                },
                                                                              ),
                                                                            ),
                                                                          );
                                                                        } else {
                                                                          return Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                            ),
                                                                          );
                                                                        }
                                                                      },
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ]
                                                              .divide(const SizedBox(
                                                                  height: 0.0))
                                                              .addToEnd(const SizedBox(
                                                                  height:
                                                                      100.0)),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        const SizedBox(height: 8.0)),
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
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                        tabletLandscape: false,
                                                      ))
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
                                                        tabletLandscape: false,
                                                      ))
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                            ].divide(const SizedBox(width: 16.0)),
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
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Text(
                                            'WELCOME DROORZN!',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Arial',
                                                  color: Colors.black,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                        Container(
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
                                                                      .start,
                                                              children: [
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    context.pushNamed(
                                                                        'HomeDashboard');
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .arrow_circle_left_outlined,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    size: 20.0,
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Manage Authorized Users',
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
                                                              ].divide(const SizedBox(
                                                                  width: 8.0)),
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
                                                    wrapWithModel(
                                                      model: _model
                                                          .accountSummaryBannerModel2,
                                                      updateCallback: () =>
                                                          setState(() {}),
                                                      child:
                                                          AccountSummaryBannerWidget(
                                                        cardNumber: FFAppState()
                                                            .accountNumberLast4Digits,
                                                        userCount:
                                                            valueOrDefault<
                                                                String>(
                                                          _model
                                                              .manageAuthUsersStep1Model2
                                                              .authUsers
                                                              .length
                                                              .toString(),
                                                          '0',
                                                        ),
                                                        accountNumber: widget
                                                            .accountNumber,
                                                        isPrimaryUser: widget
                                                            .isPrimaryUser,
                                                        cardNumberValue:
                                                            widget.cardNumber!,
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: Builder(
                                                        builder: (context) {
                                                          if (_model.pageStep ==
                                                              0) {
                                                            return Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          24.0,
                                                                          16.0,
                                                                          24.0),
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .manageAuthUsersStep1Model2,
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    ManageAuthUsersStep14Widget(
                                                                  success: _model
                                                                      .addUserSuccess,
                                                                  accountNumber:
                                                                      widget
                                                                          .accountNumber!,
                                                                  isPrimaryUser:
                                                                      widget
                                                                          .isPrimaryUser,
                                                                  nextCallback:
                                                                      () async {
                                                                    setState(
                                                                        () {
                                                                      _model.pageStep =
                                                                          1;
                                                                    });
                                                                  },
                                                                ),
                                                              ),
                                                            );
                                                          } else if (_model
                                                                  .pageStep ==
                                                              1) {
                                                            return Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          24.0,
                                                                          16.0,
                                                                          24.0),
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .manageAuthUsersStep2Model2,
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    ManageAuthUsersStep2Widget(
                                                                  accountNumber:
                                                                      widget
                                                                          .accountNumber,
                                                                  nextCallback:
                                                                      () async {
                                                                    setState(
                                                                        () {
                                                                      _model.pageStep =
                                                                          2;
                                                                    });
                                                                  },
                                                                  cancelCallback:
                                                                      () async {
                                                                    setState(
                                                                        () {
                                                                      _model.pageStep =
                                                                          0;
                                                                      _model.addUserSuccess =
                                                                          false;
                                                                    });
                                                                  },
                                                                ),
                                                              ),
                                                            );
                                                          } else if (_model
                                                                  .pageStep ==
                                                              2) {
                                                            return Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          24.0,
                                                                          16.0,
                                                                          24.0),
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .manageAuthUsersStep3Model2,
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    ManageAuthUsersStep3Widget(
                                                                  firstNameInitialValueD: _model
                                                                      .manageAuthUsersStep2Model2
                                                                      .firstNameTextField1DModel
                                                                      .textController
                                                                      .text,
                                                                  middleInitialValueD: _model
                                                                      .manageAuthUsersStep2Model2
                                                                      .middleNameTextField1DModel
                                                                      .textController
                                                                      .text,
                                                                  lastNameInitialValueD: _model
                                                                      .manageAuthUsersStep2Model2
                                                                      .lastNameTextField1DModel
                                                                      .textController
                                                                      .text,
                                                                  ssnInitialValueD: _model.manageAuthUsersStep2Model2.sSNTextField1DModel.ssnValue !=
                                                                              null &&
                                                                          _model.manageAuthUsersStep2Model2.sSNTextField1DModel.ssnValue !=
                                                                              ''
                                                                      ? _model
                                                                          .manageAuthUsersStep2Model2
                                                                          .sSNTextField1DModel
                                                                          .ssnValue!
                                                                      : '',
                                                                  firstNameInitialValueM: _model
                                                                      .manageAuthUsersStep2Model2
                                                                      .firstNameTextField1MModel
                                                                      .textController
                                                                      .text,
                                                                  middleInitialValueM: _model
                                                                      .manageAuthUsersStep2Model2
                                                                      .middleNameTextField1MModel
                                                                      .textController
                                                                      .text,
                                                                  lastNameInitialValueM: _model
                                                                      .manageAuthUsersStep2Model2
                                                                      .lastNameTextField1MModel
                                                                      .textController
                                                                      .text,
                                                                  ssnInitialValueM: _model.manageAuthUsersStep2Model2.sSNTextField1MModel.ssnValue !=
                                                                              null &&
                                                                          _model.manageAuthUsersStep2Model2.sSNTextField1MModel.ssnValue !=
                                                                              ''
                                                                      ? _model
                                                                          .manageAuthUsersStep2Model2
                                                                          .sSNTextField1MModel
                                                                          .ssnValue!
                                                                      : '',
                                                                  accountNumber:
                                                                      widget
                                                                          .accountNumber!,
                                                                  successCallback:
                                                                      () async {
                                                                    setState(
                                                                        () {
                                                                      _model.pageStep =
                                                                          0;
                                                                      _model.addUserSuccess =
                                                                          true;
                                                                    });
                                                                  },
                                                                  cancelCallback:
                                                                      () async {
                                                                    setState(
                                                                        () {
                                                                      _model.pageStep =
                                                                          1;
                                                                    });
                                                                  },
                                                                ),
                                                              ),
                                                            );
                                                          } else {
                                                            return Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                              ),
                                                            );
                                                          }
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ]
                                                .divide(const SizedBox(height: 0.0))
                                                .addToEnd(
                                                    const SizedBox(height: 100.0)),
                                          ),
                                        ),
                                      ].divide(const SizedBox(height: 8.0)),
                                    ),
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
                          ],
                        ),
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
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
