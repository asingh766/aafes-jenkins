import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/alert_message_widget.dart';
import '/components/common_circular_indicator/common_circular_indicator_widget.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/components/last_payment/last_payment_widget.dart';
import '/components/past_due_balance/past_due_balance_widget.dart';
import '/components/recent_charges/recent_charges_widget.dart';
import '/components/statment_balance/statment_balance_widget.dart';
import '/components/total_credit_limit/total_credit_limit_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/home/components/account_summary_banner/account_summary_banner_widget.dart';
import '/pages/home/components/paymnet_history1/paymnet_history1_widget.dart';
import '/pages/home/components/recent_activitiy/recent_activitiy_widget.dart';
import '/pages/home/components/statements/statements_widget.dart';
import '/pages/home/rewards_activity/rewards_activity_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'home_dashboard_model.dart';
export 'home_dashboard_model.dart';

class HomeDashboardWidget extends StatefulWidget {
  const HomeDashboardWidget({super.key});

  @override
  State<HomeDashboardWidget> createState() => _HomeDashboardWidgetState();
}

class _HomeDashboardWidgetState extends State<HomeDashboardWidget>
    with TickerProviderStateMixin {
  late HomeDashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeDashboardModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.sessionTimerAction(
        context,
        true,
      );
      setState(() {
        FFAppState().selectedSubHeaderItem = 'Account Summary';
      });
      showDialog(
        barrierColor: const Color(0x33042757),
        barrierDismissible: false,
        context: context,
        builder: (dialogContext) {
          return Dialog(
            elevation: 0,
            insetPadding: EdgeInsets.zero,
            backgroundColor: Colors.transparent,
            alignment: const AlignmentDirectional(0.0, 0.0)
                .resolve(Directionality.of(context)),
            child: WebViewAware(
              child: GestureDetector(
                onTap: () => _model.unfocusNode.canRequestFocus
                    ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                    : FocusScope.of(context).unfocus(),
                child: const CommonCircularIndicatorWidget(),
              ),
            ),
          );
        },
      ).then((value) => setState(() {}));

      _model.accountSummaryApiRes =
          await HomeDashboardAPIGroup.accountSummaryCall.call(
        userId: FFAppState().selectedUserId,
        dynamicBaseURL: FFAppState().dynamicBaseURL,
      );
      if ((_model.accountSummaryApiRes?.succeeded ?? true)) {
        if ((_model.accountSummaryApiRes?.statusCode ?? 200) ==
            FFAppState().successStatusCode) {
          setState(() {
            _model.militaryIndex =
                functions.isPrimaryUser(HomeDashboardAPIGroup.accountSummaryCall
                    .dataResponse(
                      (_model.accountSummaryApiRes?.jsonBody ?? ''),
                    )
                    ?.toList())!;
          });
          setState(() {
            _model.accounts = HomeDashboardAPIGroup.accountSummaryCall
                .dataResponse(
                  (_model.accountSummaryApiRes?.jsonBody ?? ''),
                )!
                .map((e) => AccountStruct.maybeFromMap(e))
                .withoutNulls
                .toList()
                .toList()
                .cast<AccountStruct>();
          });
          setState(() {
            FFAppState().accountNumber = getJsonField(
              HomeDashboardAPIGroup.accountSummaryCall.dataResponse(
                (_model.accountSummaryApiRes?.jsonBody ?? ''),
              )![_model.militaryIndex],
              r'''$.AccountNumber''',
            ).toString().toString();
          });
          setState(() {
            FFAppState().accountNumberLast4Digits = getJsonField(
              (_model.accountSummaryApiRes?.jsonBody ?? ''),
              r'''$[0].AccountNoLast4''',
            ).toString().toString();
          });
          Navigator.pop(context);
        } else {
          Navigator.pop(context);
        }
      } else {
        Navigator.pop(context);
      }
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
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Builder(
      builder: (context) => Title(
          title: 'MyECP : Account Summary',
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
                child: SizedBox(
                  height: double.infinity,
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
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Stack(
                            children: [
                              SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
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
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
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
                                                                      -1.0,
                                                                      0.0),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            8.0),
                                                                child: Text(
                                                                  'WELCOME ${FFAppState().selectedFirstName}',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
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
                                                                            FontWeight.normal,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Container(
                                                                decoration:
                                                                    const BoxDecoration(
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          4.0,
                                                                      color: Color(
                                                                          0x33000000),
                                                                      offset:
                                                                          Offset(
                                                                        0.0,
                                                                        2.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children:
                                                                            [
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
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
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                        child: Text(
                                                                                          'Account Summary',
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
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              const Divider(
                                                                                height: 2.5,
                                                                                thickness: 3.0,
                                                                                color: Color(0xFF801B0E),
                                                                              ),
                                                                              Builder(
                                                                                builder: (context) {
                                                                                  if (valueOrDefault<bool>(
                                                                                    HomeDashboardAPIGroup.accountSummaryCall.dataResponse(
                                                                                              (_model.accountSummaryApiRes?.jsonBody ?? ''),
                                                                                            ) !=
                                                                                            null &&
                                                                                        (HomeDashboardAPIGroup.accountSummaryCall.dataResponse(
                                                                                          (_model.accountSummaryApiRes?.jsonBody ?? ''),
                                                                                        ))!
                                                                                            .isNotEmpty,
                                                                                    false,
                                                                                  )) {
                                                                                    return Builder(
                                                                                      builder: (context) {
                                                                                        final cardDetailslist = HomeDashboardAPIGroup.accountSummaryCall
                                                                                                .dataResponse(
                                                                                                  (_model.accountSummaryApiRes?.jsonBody ?? ''),
                                                                                                )
                                                                                                ?.toList() ??
                                                                                            [];
                                                                                        return Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: List.generate(cardDetailslist.length, (cardDetailslistIndex) {
                                                                                            final cardDetailslistItem = cardDetailslist[cardDetailslistIndex];
                                                                                            return Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
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
                                                                                                  borderRadius: const BorderRadius.only(
                                                                                                    bottomLeft: Radius.circular(8.0),
                                                                                                    bottomRight: Radius.circular(8.0),
                                                                                                    topLeft: Radius.circular(8.0),
                                                                                                    topRight: Radius.circular(8.0),
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
                                                                                                        if (_model.militaryIndex == cardDetailslistIndex) {
                                                                                                          setState(() {
                                                                                                            _model.militaryIndex = -1;
                                                                                                          });
                                                                                                        } else {
                                                                                                          setState(() {
                                                                                                            _model.militaryIndex = cardDetailslistIndex;
                                                                                                            _model.selectedIndex = 0;
                                                                                                          });
                                                                                                        }
                                                                                                      },
                                                                                                      child: Container(
                                                                                                        decoration: BoxDecoration(
                                                                                                          color: const Color(0xFF0F2654),
                                                                                                          borderRadius: BorderRadius.only(
                                                                                                            bottomLeft: Radius.circular(valueOrDefault<double>(
                                                                                                              _model.militaryIndex == cardDetailslistIndex ? 0.0 : 8.0,
                                                                                                              0.0,
                                                                                                            )),
                                                                                                            bottomRight: Radius.circular(valueOrDefault<double>(
                                                                                                              _model.militaryIndex == cardDetailslistIndex ? 0.0 : 8.0,
                                                                                                              0.0,
                                                                                                            )),
                                                                                                            topLeft: const Radius.circular(8.0),
                                                                                                            topRight: const Radius.circular(8.0),
                                                                                                          ),
                                                                                                        ),
                                                                                                        child: Padding(
                                                                                                          padding: const EdgeInsets.all(8.0),
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                            children: [
                                                                                                              Align(
                                                                                                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                                child: Container(
                                                                                                                  decoration: const BoxDecoration(),
                                                                                                                  child: Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      RichText(
                                                                                                                        textScaler: MediaQuery.of(context).textScaler,
                                                                                                                        text: TextSpan(
                                                                                                                          children: [
                                                                                                                            TextSpan(
                                                                                                                              text: 'MILITARY STAR(....',
                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                    fontFamily: 'Arial',
                                                                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                    fontWeight: FontWeight.normal,
                                                                                                                                    useGoogleFonts: false,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                            TextSpan(
                                                                                                                              text: getJsonField(
                                                                                                                                        cardDetailslistItem,
                                                                                                                                        r'''$.AccountNoLast4''',
                                                                                                                                      ) !=
                                                                                                                                      null
                                                                                                                                  ? getJsonField(
                                                                                                                                      cardDetailslistItem,
                                                                                                                                      r'''$.AccountNoLast4''',
                                                                                                                                    ).toString()
                                                                                                                                  : '',
                                                                                                                              style: TextStyle(
                                                                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                                fontSize: 14.0,
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                            TextSpan(
                                                                                                                              text: ')',
                                                                                                                              style: TextStyle(
                                                                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                                fontSize: 14.0,
                                                                                                                              ),
                                                                                                                            )
                                                                                                                          ],
                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                fontFamily: 'Arial',
                                                                                                                                letterSpacing: 0.0,
                                                                                                                                useGoogleFonts: false,
                                                                                                                              ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                              if ((_model.militaryIndex != cardDetailslistIndex) &&
                                                                                                                  responsiveVisibility(
                                                                                                                    context: context,
                                                                                                                    phone: false,
                                                                                                                    tablet: false,
                                                                                                                  ))
                                                                                                                InkWell(
                                                                                                                  splashColor: Colors.transparent,
                                                                                                                  focusColor: Colors.transparent,
                                                                                                                  hoverColor: Colors.transparent,
                                                                                                                  highlightColor: Colors.transparent,
                                                                                                                  onTap: () async {
                                                                                                                    setState(() {
                                                                                                                      _model.militaryIndex = cardDetailslistIndex;
                                                                                                                      _model.selectedIndex = 0;
                                                                                                                    });
                                                                                                                  },
                                                                                                                  child: Icon(
                                                                                                                    Icons.add_circle_outline,
                                                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                    size: 20.0,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              if ((_model.militaryIndex == cardDetailslistIndex) &&
                                                                                                                  responsiveVisibility(
                                                                                                                    context: context,
                                                                                                                    phone: false,
                                                                                                                    tablet: false,
                                                                                                                  ))
                                                                                                                InkWell(
                                                                                                                  splashColor: Colors.transparent,
                                                                                                                  focusColor: Colors.transparent,
                                                                                                                  hoverColor: Colors.transparent,
                                                                                                                  highlightColor: Colors.transparent,
                                                                                                                  onTap: () async {
                                                                                                                    setState(() {
                                                                                                                      _model.militaryIndex = -1;
                                                                                                                    });
                                                                                                                  },
                                                                                                                  child: Icon(
                                                                                                                    Icons.remove_circle_outline_sharp,
                                                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                    size: 20.0,
                                                                                                                  ),
                                                                                                                ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    if (_model.militaryIndex == cardDetailslistIndex)
                                                                                                      const Divider(
                                                                                                        height: 2.5,
                                                                                                        thickness: 2.0,
                                                                                                        color: Color(0xFF801B0E),
                                                                                                      ),
                                                                                                    if (_model.militaryIndex == cardDetailslistIndex)
                                                                                                      Container(
                                                                                                        decoration: BoxDecoration(
                                                                                                          borderRadius: const BorderRadius.only(
                                                                                                            bottomLeft: Radius.circular(8.0),
                                                                                                            bottomRight: Radius.circular(8.0),
                                                                                                            topLeft: Radius.circular(0.0),
                                                                                                            topRight: Radius.circular(0.0),
                                                                                                          ),
                                                                                                          border: Border.all(
                                                                                                            color: FlutterFlowTheme.of(context).accent2,
                                                                                                          ),
                                                                                                        ),
                                                                                                        child: Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                                                              0.0,
                                                                                                              0.0,
                                                                                                              0.0,
                                                                                                              valueOrDefault<double>(
                                                                                                                _model.selectedIndex == 0 ? 16.0 : 0.0,
                                                                                                                0.0,
                                                                                                              )),
                                                                                                          child: SingleChildScrollView(
                                                                                                            child: Column(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                AccountSummaryBannerWidget(
                                                                                                                  key: Key('Keyc1n_${cardDetailslistIndex}_of_${cardDetailslist.length}'),
                                                                                                                  cardNumber: functions.checkStringIsNull(getJsonField(
                                                                                                                    cardDetailslistItem,
                                                                                                                    r'''$.AccountNoLast4''',
                                                                                                                  ))!,
                                                                                                                  userCount: functions.checkStringIsNull(getJsonField(
                                                                                                                    cardDetailslistItem,
                                                                                                                    r'''$.TotalAuthorizedUsers''',
                                                                                                                  ))!,
                                                                                                                  accountNumber: getJsonField(
                                                                                                                    cardDetailslistItem,
                                                                                                                    r'''$.AccountNumber''',
                                                                                                                  ).toString(),
                                                                                                                  isPrimaryUser: getJsonField(
                                                                                                                    cardDetailslistItem,
                                                                                                                    r'''$.IsPrimaryUser''',
                                                                                                                  ),
                                                                                                                  cardNumberValue: getJsonField(
                                                                                                                    cardDetailslistItem,
                                                                                                                    r'''$.AccountNoLast4''',
                                                                                                                  ).toString(),
                                                                                                                ),
                                                                                                                if ((_model.accounts.isNotEmpty) && (_model.accounts[cardDetailslistIndex].userRestriction.alertMessages.isNotEmpty))
                                                                                                                  Container(
                                                                                                                    width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                                                    decoration: BoxDecoration(
                                                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                    ),
                                                                                                                    child: AlertMessageWidget(
                                                                                                                      key: Key('Keyupm_${cardDetailslistIndex}_of_${cardDetailslist.length}'),
                                                                                                                      account: _model.accounts[cardDetailslistIndex],
                                                                                                                      onClose: (index) async {
                                                                                                                        setState(() {
                                                                                                                          _model.updateAccountsAtIndex(
                                                                                                                            cardDetailslistIndex,
                                                                                                                            (e) => e
                                                                                                                              ..updateUserRestriction(
                                                                                                                                (e) => e
                                                                                                                                  ..updateAlertMessages(
                                                                                                                                    (e) => e.removeAt(index!),
                                                                                                                                  ),
                                                                                                                              ),
                                                                                                                          );
                                                                                                                        });
                                                                                                                      },
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                Container(
                                                                                                                  width: double.infinity,
                                                                                                                  height: 231.0,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                  ),
                                                                                                                  child: Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                    children: [
                                                                                                                      Expanded(
                                                                                                                        child: Padding(
                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                                                                                                                          child: Container(
                                                                                                                            decoration: BoxDecoration(
                                                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                              border: Border.all(
                                                                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                            child: Column(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                              children: [
                                                                                                                                Container(
                                                                                                                                  decoration: const BoxDecoration(),
                                                                                                                                  child: Column(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    children: [
                                                                                                                                      Text(
                                                                                                                                        'Current Balance',
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Arial',
                                                                                                                                              color: Colors.black,
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                              useGoogleFonts: false,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                                                        child: Container(
                                                                                                                                          decoration: const BoxDecoration(),
                                                                                                                                          child: Column(
                                                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                                                            children: [
                                                                                                                                              RichText(
                                                                                                                                                textScaler: MediaQuery.of(context).textScaler,
                                                                                                                                                text: TextSpan(
                                                                                                                                                  children: [
                                                                                                                                                    TextSpan(
                                                                                                                                                      text: '\$',
                                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                            fontFamily: 'Arial',
                                                                                                                                                            color: Colors.black,
                                                                                                                                                            fontSize: 36.0,
                                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                                            fontWeight: FontWeight.normal,
                                                                                                                                                            useGoogleFonts: false,
                                                                                                                                                          ),
                                                                                                                                                    ),
                                                                                                                                                    TextSpan(
                                                                                                                                                      text: functions.formatstring(valueOrDefault<double>(
                                                                                                                                                        getJsonField(
                                                                                                                                                          cardDetailslistItem,
                                                                                                                                                          r'''$.CurrentBalance''',
                                                                                                                                                        ),
                                                                                                                                                        0.0,
                                                                                                                                                      ).toDouble()),
                                                                                                                                                      style: const TextStyle(
                                                                                                                                                        color: Colors.black,
                                                                                                                                                        fontSize: 36.0,
                                                                                                                                                      ),
                                                                                                                                                    )
                                                                                                                                                  ],
                                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                        fontFamily: 'Arial',
                                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                                        useGoogleFonts: false,
                                                                                                                                                      ),
                                                                                                                                                ),
                                                                                                                                              ),
                                                                                                                                            ],
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ],
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                                Container(
                                                                                                                                  decoration: const BoxDecoration(),
                                                                                                                                  child: Column(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    children: [
                                                                                                                                      Text(
                                                                                                                                        'Available Cred',
                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                        maxLines: 2,
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Arial',
                                                                                                                                              color: Colors.black,
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                              useGoogleFonts: false,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                                                        child: RichText(
                                                                                                                                          textScaler: MediaQuery.of(context).textScaler,
                                                                                                                                          text: TextSpan(
                                                                                                                                            children: [
                                                                                                                                              TextSpan(
                                                                                                                                                text: '\$',
                                                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                      fontFamily: 'Arial',
                                                                                                                                                      color: Colors.black,
                                                                                                                                                      letterSpacing: 0.0,
                                                                                                                                                      fontWeight: FontWeight.normal,
                                                                                                                                                      useGoogleFonts: false,
                                                                                                                                                    ),
                                                                                                                                              ),
                                                                                                                                              TextSpan(
                                                                                                                                                text: functions.formatstring(valueOrDefault<double>(
                                                                                                                                                  getJsonField(
                                                                                                                                                    cardDetailslistItem,
                                                                                                                                                    r'''$.AvailableCredit''',
                                                                                                                                                  ),
                                                                                                                                                  0.0,
                                                                                                                                                ).toDouble()),
                                                                                                                                                style: const TextStyle(),
                                                                                                                                              )
                                                                                                                                            ],
                                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                  fontFamily: 'Arial',
                                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                                  useGoogleFonts: false,
                                                                                                                                                ),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ],
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                                ClipRRect(
                                                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                                                  child: Image.asset(
                                                                                                                                    'assets/images/PayYourWayLogo_1.png',
                                                                                                                                    width: 80.0,
                                                                                                                                    height: 23.7,
                                                                                                                                    fit: BoxFit.cover,
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                                InkWell(
                                                                                                                                  splashColor: Colors.transparent,
                                                                                                                                  focusColor: Colors.transparent,
                                                                                                                                  hoverColor: Colors.transparent,
                                                                                                                                  highlightColor: Colors.transparent,
                                                                                                                                  onTap: () async {
                                                                                                                                    context.pushNamed(
                                                                                                                                      'ViewPlanStatement',
                                                                                                                                      queryParameters: {
                                                                                                                                        'accountNumber': serializeParam(
                                                                                                                                          getJsonField(
                                                                                                                                            cardDetailslistItem,
                                                                                                                                            r'''$.AccountNumber''',
                                                                                                                                          ).toString(),
                                                                                                                                          ParamType.String,
                                                                                                                                        ),
                                                                                                                                      }.withoutNulls,
                                                                                                                                      extra: <String, dynamic>{
                                                                                                                                        kTransitionInfoKey: const TransitionInfo(
                                                                                                                                          hasTransition: true,
                                                                                                                                          transitionType: PageTransitionType.fade,
                                                                                                                                          duration: Duration(milliseconds: 0),
                                                                                                                                        ),
                                                                                                                                      },
                                                                                                                                    );
                                                                                                                                  },
                                                                                                                                  child: Text(
                                                                                                                                    'View Plan(s)',
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Arial',
                                                                                                                                          color: const Color(0xFF0000FF),
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                          useGoogleFonts: false,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                      SizedBox(
                                                                                                                        height: 380.0,
                                                                                                                        child: VerticalDivider(
                                                                                                                          thickness: 1.0,
                                                                                                                          color: FlutterFlowTheme.of(context).accent2,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                      Expanded(
                                                                                                                        child: Padding(
                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                                                                                                                          child: Container(
                                                                                                                            decoration: BoxDecoration(
                                                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                              border: Border.all(
                                                                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                            child: Column(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                              children: [
                                                                                                                                Container(
                                                                                                                                  decoration: const BoxDecoration(),
                                                                                                                                  child: Column(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    children: [
                                                                                                                                      Text(
                                                                                                                                        'Current Balance',
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Arial',
                                                                                                                                              color: Colors.black,
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                              useGoogleFonts: false,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                                                        child: Text(
                                                                                                                                          getJsonField(
                                                                                                                                                    cardDetailslistItem,
                                                                                                                                                    r'''$.PaymentDueDate''',
                                                                                                                                                  ) !=
                                                                                                                                                  null
                                                                                                                                              ? functions.toDatedMMM(getJsonField(
                                                                                                                                                  cardDetailslistItem,
                                                                                                                                                  r'''$.PaymentDueDate''',
                                                                                                                                                ).toString())!
                                                                                                                                              : '',
                                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                fontFamily: 'Arial',
                                                                                                                                                color: Colors.black,
                                                                                                                                                fontSize: 36.0,
                                                                                                                                                letterSpacing: 0.0,
                                                                                                                                                useGoogleFonts: false,
                                                                                                                                              ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ],
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                                Padding(
                                                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                                                  child: Container(
                                                                                                                                    decoration: const BoxDecoration(),
                                                                                                                                    child: Column(
                                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                                      children: [
                                                                                                                                        Text(
                                                                                                                                          'Minimum Payment Due',
                                                                                                                                          textAlign: TextAlign.center,
                                                                                                                                          maxLines: 2,
                                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                fontFamily: 'Arial',
                                                                                                                                                color: Colors.black,
                                                                                                                                                letterSpacing: 0.0,
                                                                                                                                                useGoogleFonts: false,
                                                                                                                                              ),
                                                                                                                                        ),
                                                                                                                                        Padding(
                                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                                                          child: RichText(
                                                                                                                                            textScaler: MediaQuery.of(context).textScaler,
                                                                                                                                            text: TextSpan(
                                                                                                                                              children: [
                                                                                                                                                TextSpan(
                                                                                                                                                  text: '\$',
                                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                        fontFamily: 'Arial',
                                                                                                                                                        color: Colors.black,
                                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                                        fontWeight: FontWeight.normal,
                                                                                                                                                        useGoogleFonts: false,
                                                                                                                                                      ),
                                                                                                                                                ),
                                                                                                                                                TextSpan(
                                                                                                                                                  text: functions.formatstring(valueOrDefault<double>(
                                                                                                                                                    getJsonField(
                                                                                                                                                      cardDetailslistItem,
                                                                                                                                                      r'''$.MinimumPaymentDue''',
                                                                                                                                                    ),
                                                                                                                                                    0.0,
                                                                                                                                                  ).toDouble()),
                                                                                                                                                  style: const TextStyle(),
                                                                                                                                                )
                                                                                                                                              ],
                                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                    fontFamily: 'Arial',
                                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                                    useGoogleFonts: false,
                                                                                                                                                  ),
                                                                                                                                            ),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ],
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                                FFButtonWidget(
                                                                                                                                  onPressed: () async {
                                                                                                                                    context.pushNamed('payment_otp');
                                                                                                                                  },
                                                                                                                                  text: 'Make Payment',
                                                                                                                                  options: FFButtonOptions(
                                                                                                                                    height: 45.0,
                                                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(12.0, 10.0, 12.0, 10.0),
                                                                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                                    color: FlutterFlowTheme.of(context).success,
                                                                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                                          fontFamily: 'Arial',
                                                                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                                          fontSize: 14.0,
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                          fontWeight: FontWeight.bold,
                                                                                                                                          useGoogleFonts: false,
                                                                                                                                        ),
                                                                                                                                    borderSide: const BorderSide(
                                                                                                                                      color: Colors.transparent,
                                                                                                                                      width: 1.0,
                                                                                                                                    ),
                                                                                                                                    borderRadius: BorderRadius.circular(4.0),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                      SizedBox(
                                                                                                                        height: 380.0,
                                                                                                                        child: VerticalDivider(
                                                                                                                          thickness: 1.0,
                                                                                                                          color: FlutterFlowTheme.of(context).accent2,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                      Expanded(
                                                                                                                        child: Padding(
                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                                                                                                                          child: Container(
                                                                                                                            decoration: BoxDecoration(
                                                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                              border: Border.all(
                                                                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                            child: Column(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                              children: [
                                                                                                                                Container(
                                                                                                                                  decoration: const BoxDecoration(),
                                                                                                                                  child: Column(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    children: [
                                                                                                                                      Text(
                                                                                                                                        'Rewards Points',
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Arial',
                                                                                                                                              color: Colors.black,
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                              useGoogleFonts: false,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                                                        child: Text(
                                                                                                                                          '0',
                                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                fontFamily: 'Arial',
                                                                                                                                                color: Colors.black,
                                                                                                                                                fontSize: 36.0,
                                                                                                                                                letterSpacing: 0.0,
                                                                                                                                                useGoogleFonts: false,
                                                                                                                                              ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ],
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                                Expanded(
                                                                                                                                  child: Padding(
                                                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                                                    child: Text(
                                                                                                                                      'Available Points',
                                                                                                                                      textAlign: TextAlign.start,
                                                                                                                                      maxLines: 2,
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                            fontFamily: 'Arial',
                                                                                                                                            color: Colors.black,
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                            useGoogleFonts: false,
                                                                                                                                          ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                                Expanded(
                                                                                                                                  child: InkWell(
                                                                                                                                    splashColor: Colors.transparent,
                                                                                                                                    focusColor: Colors.transparent,
                                                                                                                                    hoverColor: Colors.transparent,
                                                                                                                                    highlightColor: Colors.transparent,
                                                                                                                                    onTap: () async {
                                                                                                                                      if (_model.selectedIndex != 4) {
                                                                                                                                        _model.rewardPointsWebVIewPointAPIRes = await action_blocks.rewardPointsAPI(
                                                                                                                                          context,
                                                                                                                                          userId: FFAppState().selectedUserId.toString(),
                                                                                                                                          accountNumber: getJsonField(
                                                                                                                                            cardDetailslistItem,
                                                                                                                                            r'''$.AccountNumber''',
                                                                                                                                          ).toString(),
                                                                                                                                        );
                                                                                                                                        setState(() {
                                                                                                                                          _model.rewardPointsList = _model.rewardPointsWebVIewPointAPIRes!.toList().cast<dynamic>();
                                                                                                                                          _model.selectedIndex = 4;
                                                                                                                                        });
                                                                                                                                      }

                                                                                                                                      setState(() {});
                                                                                                                                    },
                                                                                                                                    child: Text(
                                                                                                                                      'View Points',
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                            fontFamily: 'Arial',
                                                                                                                                            color: const Color(0xFF0000FF),
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                            useGoogleFonts: false,
                                                                                                                                          ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ),
                                                                                                                Container(
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    color: FlutterFlowTheme.of(context).accent2,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                Container(
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                  ),
                                                                                                                  child: Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Expanded(
                                                                                                                        child: Container(
                                                                                                                          decoration: const BoxDecoration(),
                                                                                                                          child: StatmentBalanceWidget(
                                                                                                                            key: Key('Keyi00_${cardDetailslistIndex}_of_${cardDetailslist.length}'),
                                                                                                                            date: getJsonField(
                                                                                                                                      cardDetailslistItem,
                                                                                                                                      r'''$.LastStatementDate''',
                                                                                                                                    ) !=
                                                                                                                                    null
                                                                                                                                ? functions.toDateDDMMYYYY(getJsonField(
                                                                                                                                    cardDetailslistItem,
                                                                                                                                    r'''$.LastStatementDate''',
                                                                                                                                  ).toString())
                                                                                                                                : '',
                                                                                                                            balance: functions.formatstring(valueOrDefault<double>(
                                                                                                                              getJsonField(
                                                                                                                                cardDetailslistItem,
                                                                                                                                r'''$.LastStatementBalance''',
                                                                                                                              ),
                                                                                                                              0.0,
                                                                                                                            ).toDouble()),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                      Expanded(
                                                                                                                        child: Container(
                                                                                                                          decoration: const BoxDecoration(),
                                                                                                                          child: RecentChargesWidget(
                                                                                                                            key: Key('Keyks2_${cardDetailslistIndex}_of_${cardDetailslist.length}'),
                                                                                                                            balance: functions.formatstring(valueOrDefault<double>(
                                                                                                                              getJsonField(
                                                                                                                                cardDetailslistItem,
                                                                                                                                r'''$.RecentCharges''',
                                                                                                                              ),
                                                                                                                              0.0,
                                                                                                                            ).toDouble()),
                                                                                                                            date: getJsonField(
                                                                                                                                      cardDetailslistItem,
                                                                                                                                      r'''$.RecentChargesDate''',
                                                                                                                                    ) !=
                                                                                                                                    null
                                                                                                                                ? functions.toDateDDMMYYYY(getJsonField(
                                                                                                                                    cardDetailslistItem,
                                                                                                                                    r'''$.RecentChargesDate''',
                                                                                                                                  ).toString())
                                                                                                                                : '',
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                      Expanded(
                                                                                                                        child: Container(
                                                                                                                          decoration: const BoxDecoration(),
                                                                                                                          child: PastDueBalanceWidget(
                                                                                                                            key: Key('Keyy88_${cardDetailslistIndex}_of_${cardDetailslist.length}'),
                                                                                                                            bal: functions.formatstring(valueOrDefault<double>(
                                                                                                                              getJsonField(
                                                                                                                                cardDetailslistItem,
                                                                                                                                r'''$.PaymentPastDue''',
                                                                                                                              ),
                                                                                                                              0.0,
                                                                                                                            ).toDouble()),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                      Expanded(
                                                                                                                        child: Container(
                                                                                                                          decoration: const BoxDecoration(),
                                                                                                                          child: LastPaymentWidget(
                                                                                                                            key: Key('Key9vk_${cardDetailslistIndex}_of_${cardDetailslist.length}'),
                                                                                                                            lastPayment: functions.formatstring(valueOrDefault<double>(
                                                                                                                              getJsonField(
                                                                                                                                cardDetailslistItem,
                                                                                                                                r'''$.LastPaidAmount''',
                                                                                                                              ),
                                                                                                                              0.0,
                                                                                                                            ).toDouble()),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                      Expanded(
                                                                                                                        child: Container(
                                                                                                                          decoration: const BoxDecoration(),
                                                                                                                          child: TotalCreditLimitWidget(
                                                                                                                            key: Key('Key3ak_${cardDetailslistIndex}_of_${cardDetailslist.length}'),
                                                                                                                            bal: functions.formatstring(valueOrDefault<double>(
                                                                                                                              getJsonField(
                                                                                                                                cardDetailslistItem,
                                                                                                                                r'''$.TotalCreditLimit''',
                                                                                                                              ),
                                                                                                                              0.0,
                                                                                                                            ).toDouble()),
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
                                                                                                                  child: Padding(
                                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                                                                                                                    child: Row(
                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                      children: [
                                                                                                                        InkWell(
                                                                                                                          splashColor: Colors.transparent,
                                                                                                                          focusColor: Colors.transparent,
                                                                                                                          hoverColor: Colors.transparent,
                                                                                                                          highlightColor: Colors.transparent,
                                                                                                                          onTap: () async {
                                                                                                                            if (_model.selectedIndex != 1) {
                                                                                                                              _model.recentActivityABRes = await action_blocks.recentActivityAPICall(
                                                                                                                                context,
                                                                                                                                userId: FFAppState().selectedUserId.toString(),
                                                                                                                                accountNumber: getJsonField(
                                                                                                                                  cardDetailslistItem,
                                                                                                                                  r'''$.AccountNumber''',
                                                                                                                                ).toString(),
                                                                                                                              );
                                                                                                                              setState(() {
                                                                                                                                _model.recentActivityList = _model.recentActivityABRes!.toList().cast<dynamic>();
                                                                                                                                _model.selectedIndex = 1;
                                                                                                                              });
                                                                                                                            } else {
                                                                                                                              setState(() {
                                                                                                                                _model.selectedIndex = 0;
                                                                                                                              });
                                                                                                                            }

                                                                                                                            setState(() {});
                                                                                                                          },
                                                                                                                          child: Container(
                                                                                                                            decoration: BoxDecoration(
                                                                                                                              color: _model.selectedIndex == 1 ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                                                              borderRadius: const BorderRadius.only(
                                                                                                                                bottomLeft: Radius.circular(0.0),
                                                                                                                                bottomRight: Radius.circular(0.0),
                                                                                                                                topLeft: Radius.circular(8.0),
                                                                                                                                topRight: Radius.circular(8.0),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                            child: Padding(
                                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 5.0, 8.0, 5.0),
                                                                                                                              child: Row(
                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                children: [
                                                                                                                                  if (_model.selectedIndex != 1)
                                                                                                                                    Padding(
                                                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                                                      child: Icon(
                                                                                                                                        Icons.add_outlined,
                                                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                        size: 19.0,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  if (_model.selectedIndex == 1)
                                                                                                                                    Padding(
                                                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                                                      child: InkWell(
                                                                                                                                        splashColor: Colors.transparent,
                                                                                                                                        focusColor: Colors.transparent,
                                                                                                                                        hoverColor: Colors.transparent,
                                                                                                                                        highlightColor: Colors.transparent,
                                                                                                                                        onTap: () async {
                                                                                                                                          setState(() {
                                                                                                                                            _model.selectedIndex = 0;
                                                                                                                                          });
                                                                                                                                        },
                                                                                                                                        child: Icon(
                                                                                                                                          Icons.remove_rounded,
                                                                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                                          size: 19.0,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  Text(
                                                                                                                                    'Recent Activity',
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Arial',
                                                                                                                                          color: _model.selectedIndex == 1 ? FlutterFlowTheme.of(context).primaryBackground : Colors.black,
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                          useGoogleFonts: false,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        Padding(
                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                                                                                                                          child: InkWell(
                                                                                                                            splashColor: Colors.transparent,
                                                                                                                            focusColor: Colors.transparent,
                                                                                                                            hoverColor: Colors.transparent,
                                                                                                                            highlightColor: Colors.transparent,
                                                                                                                            onTap: () async {
                                                                                                                              if (_model.selectedIndex != 2) {
                                                                                                                                _model.paymentHistoryListWebABRes = await action_blocks.paymentHistoryList(
                                                                                                                                  context,
                                                                                                                                  userId: FFAppState().selectedUserId.toString(),
                                                                                                                                  accountNumber: getJsonField(
                                                                                                                                    cardDetailslistItem,
                                                                                                                                    r'''$.AccountNumber''',
                                                                                                                                  ).toString(),
                                                                                                                                );
                                                                                                                                setState(() {
                                                                                                                                  _model.paymentHistoryList = _model.paymentHistoryListWebABRes!.toList().cast<dynamic>();
                                                                                                                                  _model.selectedIndex = 2;
                                                                                                                                });
                                                                                                                              } else {
                                                                                                                                setState(() {
                                                                                                                                  _model.selectedIndex = 0;
                                                                                                                                });
                                                                                                                              }

                                                                                                                              setState(() {});
                                                                                                                            },
                                                                                                                            child: Container(
                                                                                                                              decoration: BoxDecoration(
                                                                                                                                color: _model.selectedIndex == 2 ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                                                                borderRadius: const BorderRadius.only(
                                                                                                                                  bottomLeft: Radius.circular(0.0),
                                                                                                                                  bottomRight: Radius.circular(0.0),
                                                                                                                                  topLeft: Radius.circular(8.0),
                                                                                                                                  topRight: Radius.circular(8.0),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                              child: Padding(
                                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 5.0, 8.0, 5.0),
                                                                                                                                child: Row(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  children: [
                                                                                                                                    if (_model.selectedIndex != 2)
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                                                        child: Icon(
                                                                                                                                          Icons.add_outlined,
                                                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                          size: 19.0,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    if (_model.selectedIndex == 2)
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                                                        child: InkWell(
                                                                                                                                          splashColor: Colors.transparent,
                                                                                                                                          focusColor: Colors.transparent,
                                                                                                                                          hoverColor: Colors.transparent,
                                                                                                                                          highlightColor: Colors.transparent,
                                                                                                                                          onTap: () async {
                                                                                                                                            setState(() {
                                                                                                                                              _model.selectedIndex = 0;
                                                                                                                                            });
                                                                                                                                          },
                                                                                                                                          child: Icon(
                                                                                                                                            Icons.remove_rounded,
                                                                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                                            size: 19.0,
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    Text(
                                                                                                                                      'Payment History',
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                            fontFamily: 'Arial',
                                                                                                                                            color: _model.selectedIndex == 2 ? FlutterFlowTheme.of(context).primaryBackground : Colors.black,
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                            useGoogleFonts: false,
                                                                                                                                          ),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        Padding(
                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                                                                                                                          child: InkWell(
                                                                                                                            splashColor: Colors.transparent,
                                                                                                                            focusColor: Colors.transparent,
                                                                                                                            hoverColor: Colors.transparent,
                                                                                                                            highlightColor: Colors.transparent,
                                                                                                                            onTap: () async {
                                                                                                                              if (_model.selectedIndex != 3) {
                                                                                                                                _model.statementWebAPIRes = await action_blocks.statementAPICall(
                                                                                                                                  context,
                                                                                                                                  userId: FFAppState().selectedUserId.toString(),
                                                                                                                                  accountNumber: getJsonField(
                                                                                                                                    cardDetailslistItem,
                                                                                                                                    r'''$.AccountNumber''',
                                                                                                                                  ).toString(),
                                                                                                                                );
                                                                                                                                setState(() {
                                                                                                                                  _model.statementsList = _model.statementWebAPIRes!.toList().cast<dynamic>();
                                                                                                                                  _model.selectedIndex = 3;
                                                                                                                                });
                                                                                                                              } else {
                                                                                                                                setState(() {
                                                                                                                                  _model.selectedIndex = 0;
                                                                                                                                });
                                                                                                                              }

                                                                                                                              setState(() {});
                                                                                                                            },
                                                                                                                            child: Container(
                                                                                                                              decoration: BoxDecoration(
                                                                                                                                color: _model.selectedIndex == 3 ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                                                                borderRadius: const BorderRadius.only(
                                                                                                                                  bottomLeft: Radius.circular(0.0),
                                                                                                                                  bottomRight: Radius.circular(0.0),
                                                                                                                                  topLeft: Radius.circular(8.0),
                                                                                                                                  topRight: Radius.circular(8.0),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                              child: Padding(
                                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 5.0, 8.0, 5.0),
                                                                                                                                child: Row(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  children: [
                                                                                                                                    if (_model.selectedIndex != 3)
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                                                        child: Icon(
                                                                                                                                          Icons.add_outlined,
                                                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                          size: 19.0,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    if (_model.selectedIndex == 3)
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                                                        child: InkWell(
                                                                                                                                          splashColor: Colors.transparent,
                                                                                                                                          focusColor: Colors.transparent,
                                                                                                                                          hoverColor: Colors.transparent,
                                                                                                                                          highlightColor: Colors.transparent,
                                                                                                                                          onTap: () async {
                                                                                                                                            setState(() {
                                                                                                                                              _model.selectedIndex = 0;
                                                                                                                                            });
                                                                                                                                          },
                                                                                                                                          child: Icon(
                                                                                                                                            Icons.remove_rounded,
                                                                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                                            size: 19.0,
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    Text(
                                                                                                                                      'Statements',
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                            fontFamily: 'Arial',
                                                                                                                                            color: _model.selectedIndex == 3 ? FlutterFlowTheme.of(context).primaryBackground : Colors.black,
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                            useGoogleFonts: false,
                                                                                                                                          ),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        Padding(
                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                                                                                                                          child: InkWell(
                                                                                                                            splashColor: Colors.transparent,
                                                                                                                            focusColor: Colors.transparent,
                                                                                                                            hoverColor: Colors.transparent,
                                                                                                                            highlightColor: Colors.transparent,
                                                                                                                            onTap: () async {
                                                                                                                              if (_model.selectedIndex != 4) {
                                                                                                                                _model.rewardPointsWebAPIRes = await action_blocks.rewardPointsAPI(
                                                                                                                                  context,
                                                                                                                                  userId: FFAppState().selectedUserId.toString(),
                                                                                                                                  accountNumber: getJsonField(
                                                                                                                                    cardDetailslistItem,
                                                                                                                                    r'''$.AccountNumber''',
                                                                                                                                  ).toString(),
                                                                                                                                );
                                                                                                                                setState(() {
                                                                                                                                  _model.rewardPointsList = _model.rewardPointsWebAPIRes!.toList().cast<dynamic>();
                                                                                                                                  _model.selectedIndex = 4;
                                                                                                                                });
                                                                                                                              } else {
                                                                                                                                setState(() {
                                                                                                                                  _model.selectedIndex = 0;
                                                                                                                                });
                                                                                                                              }

                                                                                                                              setState(() {});
                                                                                                                            },
                                                                                                                            child: Container(
                                                                                                                              decoration: BoxDecoration(
                                                                                                                                color: _model.selectedIndex == 4 ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                                                                borderRadius: const BorderRadius.only(
                                                                                                                                  bottomLeft: Radius.circular(0.0),
                                                                                                                                  bottomRight: Radius.circular(0.0),
                                                                                                                                  topLeft: Radius.circular(8.0),
                                                                                                                                  topRight: Radius.circular(8.0),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                              child: Padding(
                                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 5.0, 8.0, 5.0),
                                                                                                                                child: Row(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  children: [
                                                                                                                                    if (_model.selectedIndex != 4)
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                                                        child: Icon(
                                                                                                                                          Icons.add_outlined,
                                                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                          size: 19.0,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    if (_model.selectedIndex == 4)
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                                                        child: InkWell(
                                                                                                                                          splashColor: Colors.transparent,
                                                                                                                                          focusColor: Colors.transparent,
                                                                                                                                          hoverColor: Colors.transparent,
                                                                                                                                          highlightColor: Colors.transparent,
                                                                                                                                          onTap: () async {
                                                                                                                                            setState(() {
                                                                                                                                              _model.selectedIndex = 0;
                                                                                                                                            });
                                                                                                                                          },
                                                                                                                                          child: Icon(
                                                                                                                                            Icons.remove_rounded,
                                                                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                                            size: 19.0,
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    Text(
                                                                                                                                      'Rewards Activity',
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                            fontFamily: 'Arial',
                                                                                                                                            color: _model.selectedIndex == 4 ? FlutterFlowTheme.of(context).primaryBackground : Colors.black,
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                            useGoogleFonts: false,
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
                                                                                                                Divider(
                                                                                                                  height: 2.5,
                                                                                                                  thickness: 2.0,
                                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                                ),
                                                                                                                if (_model.selectedIndex == 1)
                                                                                                                  RecentActivitiyWidget(
                                                                                                                    key: Key('Keyre0_${cardDetailslistIndex}_of_${cardDetailslist.length}'),
                                                                                                                    recentActivityList: _model.recentActivityList,
                                                                                                                  ),
                                                                                                                if (_model.selectedIndex == 2)
                                                                                                                  PaymnetHistory1Widget(
                                                                                                                    key: Key('Keyl3m_${cardDetailslistIndex}_of_${cardDetailslist.length}'),
                                                                                                                    paymentHistoryDataList: _model.paymentHistoryList,
                                                                                                                  ),
                                                                                                                if (_model.selectedIndex == 3)
                                                                                                                  StatementsWidget(
                                                                                                                    key: Key('Keyywk_${cardDetailslistIndex}_of_${cardDetailslist.length}'),
                                                                                                                    statementDataList: _model.statementsList,
                                                                                                                    isPaperLess: getJsonField(
                                                                                                                      cardDetailslistItem,
                                                                                                                      r'''$.IsEnolledInPaperlessStatement''',
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                if (_model.selectedIndex == 4)
                                                                                                                  RewardsActivityWidget(
                                                                                                                    key: Key('Keyj2r_${cardDetailslistIndex}_of_${cardDetailslist.length}'),
                                                                                                                    rewardPointsDataList: _model.rewardPointsList,
                                                                                                                  ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          }),
                                                                                        );
                                                                                      },
                                                                                    );
                                                                                  } else {
                                                                                    return Padding(
                                                                                      padding: const EdgeInsets.all(8.0),
                                                                                      child: Text(
                                                                                        'No data found',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Arial',
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                    );
                                                                                  }
                                                                                },
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ].divide(const SizedBox(height: 16.0)).addToEnd(const SizedBox(height: 16.0)),
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
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 274.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      8.0),
                                                          child: Text(
                                                            'Last Login at ${FFAppState().LastLoginDate}',
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
                                                      ),
                                                    ].divide(
                                                        const SizedBox(width: 16.0)),
                                                  ),
                                                ),
                                              ],
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
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.headerModel2,
                                  updateCallback: () => setState(() {}),
                                  child: const HeaderWidget(
                                    option: 'dashboard',
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -1.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    constraints: BoxConstraints(
                                      minHeight:
                                          FFAppState().screenBodyHeightMobile,
                                    ),
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 8.0),
                                            child: Text(
                                              'WELCOME ${FFAppState().selectedFirstName}',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Arial',
                                                        color: Colors.black,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
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
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Container(
                                                      decoration: const BoxDecoration(
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
                                                            const EdgeInsets.all(8.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
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
                                                                'Account Summary',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Arial',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
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
                                                      color: Color(0xFF801B0E),
                                                    ),
                                                  ],
                                                ),
                                                Builder(
                                                  builder: (context) {
                                                    if (HomeDashboardAPIGroup
                                                                .accountSummaryCall
                                                                .dataResponse(
                                                              (_model.accountSummaryApiRes
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) !=
                                                            null &&
                                                        (HomeDashboardAPIGroup
                                                                .accountSummaryCall
                                                                .dataResponse(
                                                          (_model.accountSummaryApiRes
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ))!
                                                            .isNotEmpty) {
                                                      return Builder(
                                                        builder: (context) {
                                                          final mobileCardDetailslist =
                                                              HomeDashboardAPIGroup
                                                                      .accountSummaryCall
                                                                      .dataResponse(
                                                                        (_model.accountSummaryApiRes?.jsonBody ??
                                                                            ''),
                                                                      )
                                                                      ?.toList() ??
                                                                  [];
                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: List.generate(
                                                                mobileCardDetailslist
                                                                    .length,
                                                                (mobileCardDetailslistIndex) {
                                                              final mobileCardDetailslistItem =
                                                                  mobileCardDetailslist[
                                                                      mobileCardDetailslistIndex];
                                                              return Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        16.0,
                                                                        16.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            4.0,
                                                                        color: Color(
                                                                            0x33000000),
                                                                        offset:
                                                                            Offset(
                                                                          0.0,
                                                                          2.0,
                                                                        ),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        const BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              8.0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              8.0),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              8.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              8.0),
                                                                    ),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
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
                                                                          setState(
                                                                              () {
                                                                            _model.militaryIndex =
                                                                                mobileCardDetailslistIndex;
                                                                            _model.selectedIndex =
                                                                                0;
                                                                          });
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            borderRadius:
                                                                                BorderRadius.only(
                                                                              bottomLeft: Radius.circular(valueOrDefault<double>(
                                                                                _model.militaryIndex == mobileCardDetailslistIndex ? 0.0 : 8.0,
                                                                                0.0,
                                                                              )),
                                                                              bottomRight: Radius.circular(valueOrDefault<double>(
                                                                                _model.militaryIndex == mobileCardDetailslistIndex ? 0.0 : 8.0,
                                                                                0.0,
                                                                              )),
                                                                              topLeft: const Radius.circular(8.0),
                                                                              topRight: const Radius.circular(8.0),
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(8.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Flexible(
                                                                                  child: Align(
                                                                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                    child: Container(
                                                                                      decoration: const BoxDecoration(),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          RichText(
                                                                                            textScaler: MediaQuery.of(context).textScaler,
                                                                                            text: TextSpan(
                                                                                              children: [
                                                                                                TextSpan(
                                                                                                  text: 'MILITARY STAR(....',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Arial',
                                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                        useGoogleFonts: false,
                                                                                                      ),
                                                                                                ),
                                                                                                TextSpan(
                                                                                                  text: getJsonField(
                                                                                                            mobileCardDetailslistItem,
                                                                                                            r'''$.AccountNoLast4''',
                                                                                                          ) !=
                                                                                                          null
                                                                                                      ? getJsonField(
                                                                                                          mobileCardDetailslistItem,
                                                                                                          r'''$.AccountNoLast4''',
                                                                                                        ).toString()
                                                                                                      : '',
                                                                                                  style: TextStyle(
                                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                    fontSize: 14.0,
                                                                                                  ),
                                                                                                ),
                                                                                                TextSpan(
                                                                                                  text: ')',
                                                                                                  style: TextStyle(
                                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                    fontSize: 14.0,
                                                                                                  ),
                                                                                                )
                                                                                              ],
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Arial',
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: false,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                if ((mobileCardDetailslistIndex != _model.militaryIndex) &&
                                                                                    responsiveVisibility(
                                                                                      context: context,
                                                                                      desktop: false,
                                                                                    ))
                                                                                  InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      setState(() {
                                                                                        _model.militaryIndex = mobileCardDetailslistIndex;
                                                                                        _model.selectedIndex = 0;
                                                                                      });
                                                                                    },
                                                                                    child: Icon(
                                                                                      Icons.add_circle_outline,
                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      size: 22.0,
                                                                                    ),
                                                                                  ),
                                                                                if ((mobileCardDetailslistIndex == _model.militaryIndex) &&
                                                                                    responsiveVisibility(
                                                                                      context: context,
                                                                                      desktop: false,
                                                                                    ))
                                                                                  InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      setState(() {
                                                                                        _model.militaryIndex = -1;
                                                                                      });
                                                                                    },
                                                                                    child: Icon(
                                                                                      Icons.remove_circle_outline,
                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      size: 22.0,
                                                                                    ),
                                                                                  ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      if (_model
                                                                              .militaryIndex ==
                                                                          mobileCardDetailslistIndex)
                                                                        const Divider(
                                                                          height:
                                                                              2.5,
                                                                          thickness:
                                                                              2.0,
                                                                          color:
                                                                              Color(0xFF801B0E),
                                                                        ),
                                                                      if (_model
                                                                              .militaryIndex ==
                                                                          mobileCardDetailslistIndex)
                                                                        Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              bottomLeft: Radius.circular(8.0),
                                                                              bottomRight: Radius.circular(8.0),
                                                                              topLeft: Radius.circular(0.0),
                                                                              topRight: Radius.circular(0.0),
                                                                            ),
                                                                            border:
                                                                                Border.all(
                                                                              color: FlutterFlowTheme.of(context).accent1,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Container(
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).secondary,
                                                                                  border: Border.all(
                                                                                    color: FlutterFlowTheme.of(context).accent2,
                                                                                  ),
                                                                                ),
                                                                                child: AccountSummaryBannerWidget(
                                                                                  key: Key('Keycty_${mobileCardDetailslistIndex}_of_${mobileCardDetailslist.length}'),
                                                                                  cardNumber: functions.checkStringIsNull(getJsonField(
                                                                                    mobileCardDetailslistItem,
                                                                                    r'''$.AccountNoLast4''',
                                                                                  ))!,
                                                                                  userCount: functions.checkStringIsNull(getJsonField(
                                                                                    mobileCardDetailslistItem,
                                                                                    r'''$.TotalAuthorizedUsers''',
                                                                                  ))!,
                                                                                  accountNumber: getJsonField(
                                                                                    mobileCardDetailslistItem,
                                                                                    r'''$.AccountNumber''',
                                                                                  ).toString(),
                                                                                  isPrimaryUser: getJsonField(
                                                                                    mobileCardDetailslistItem,
                                                                                    r'''$.IsPrimaryUser''',
                                                                                  ),
                                                                                  cardNumberValue: getJsonField(
                                                                                    mobileCardDetailslistItem,
                                                                                    r'''$.AccountNoLast4''',
                                                                                  ).toString(),
                                                                                ),
                                                                              ),
                                                                              if ((_model.accounts.isNotEmpty) && (_model.accounts[mobileCardDetailslistIndex].userRestriction.alertMessages.isNotEmpty))
                                                                                Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                  ),
                                                                                  child: AlertMessageWidget(
                                                                                    key: Key('Key7gz_${mobileCardDetailslistIndex}_of_${mobileCardDetailslist.length}'),
                                                                                    account: _model.accounts[mobileCardDetailslistIndex],
                                                                                    onClose: (index) async {
                                                                                      setState(() {
                                                                                        _model.updateAccountsAtIndex(
                                                                                          mobileCardDetailslistIndex,
                                                                                          (e) => e
                                                                                            ..updateUserRestriction(
                                                                                              (e) => e
                                                                                                ..updateAlertMessages(
                                                                                                  (e) => e.removeAt(index!),
                                                                                                ),
                                                                                            ),
                                                                                        );
                                                                                      });
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              if (MediaQuery.sizeOf(context).width >= 810.0)
                                                                                Container(
                                                                                  width: double.infinity,
                                                                                  height: 245.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                  ),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                    children: [
                                                                                      Expanded(
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                                                                                          child: Container(
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              border: Border.all(
                                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              ),
                                                                                            ),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Container(
                                                                                                  decoration: const BoxDecoration(),
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        'Current Balance',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Arial',
                                                                                                              color: Colors.black,
                                                                                                              letterSpacing: 0.0,
                                                                                                              useGoogleFonts: false,
                                                                                                            ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                        child: Container(
                                                                                                          decoration: const BoxDecoration(),
                                                                                                          child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              RichText(
                                                                                                                textScaler: MediaQuery.of(context).textScaler,
                                                                                                                text: TextSpan(
                                                                                                                  children: [
                                                                                                                    TextSpan(
                                                                                                                      text: '\$',
                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                            fontFamily: 'Arial',
                                                                                                                            color: Colors.black,
                                                                                                                            fontSize: 36.0,
                                                                                                                            letterSpacing: 0.0,
                                                                                                                            fontWeight: FontWeight.normal,
                                                                                                                            useGoogleFonts: false,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                    TextSpan(
                                                                                                                      text: functions.formatstring(valueOrDefault<double>(
                                                                                                                        getJsonField(
                                                                                                                          mobileCardDetailslistItem,
                                                                                                                          r'''$.CurrentBalance''',
                                                                                                                        ),
                                                                                                                        0.0,
                                                                                                                      ).toDouble()),
                                                                                                                      style: const TextStyle(
                                                                                                                        color: Colors.black,
                                                                                                                        fontSize: 36.0,
                                                                                                                      ),
                                                                                                                    )
                                                                                                                  ],
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        fontFamily: 'Arial',
                                                                                                                        letterSpacing: 0.0,
                                                                                                                        useGoogleFonts: false,
                                                                                                                      ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                Container(
                                                                                                  decoration: const BoxDecoration(),
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        'Available Cred',
                                                                                                        textAlign: TextAlign.center,
                                                                                                        maxLines: 2,
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Arial',
                                                                                                              color: Colors.black,
                                                                                                              letterSpacing: 0.0,
                                                                                                              useGoogleFonts: false,
                                                                                                            ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                        child: RichText(
                                                                                                          textScaler: MediaQuery.of(context).textScaler,
                                                                                                          text: TextSpan(
                                                                                                            children: [
                                                                                                              TextSpan(
                                                                                                                text: '\$',
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Arial',
                                                                                                                      color: Colors.black,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      fontWeight: FontWeight.normal,
                                                                                                                      useGoogleFonts: false,
                                                                                                                    ),
                                                                                                              ),
                                                                                                              TextSpan(
                                                                                                                text: functions.formatstring(valueOrDefault<double>(
                                                                                                                  getJsonField(
                                                                                                                    mobileCardDetailslistItem,
                                                                                                                    r'''$.AvailableCredit''',
                                                                                                                  ),
                                                                                                                  0.0,
                                                                                                                ).toDouble()),
                                                                                                                style: const TextStyle(),
                                                                                                              )
                                                                                                            ],
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  fontFamily: 'Arial',
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  useGoogleFonts: false,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/PayYourWayLogo_1.png',
                                                                                                    width: 80.0,
                                                                                                    height: 23.7,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                                InkWell(
                                                                                                  splashColor: Colors.transparent,
                                                                                                  focusColor: Colors.transparent,
                                                                                                  hoverColor: Colors.transparent,
                                                                                                  highlightColor: Colors.transparent,
                                                                                                  onTap: () async {
                                                                                                    context.pushNamed(
                                                                                                      'ViewPlanStatement',
                                                                                                      queryParameters: {
                                                                                                        'accountNumber': serializeParam(
                                                                                                          getJsonField(
                                                                                                            mobileCardDetailslistItem,
                                                                                                            r'''$.AccountNumber''',
                                                                                                          ).toString(),
                                                                                                          ParamType.String,
                                                                                                        ),
                                                                                                      }.withoutNulls,
                                                                                                      extra: <String, dynamic>{
                                                                                                        kTransitionInfoKey: const TransitionInfo(
                                                                                                          hasTransition: true,
                                                                                                          transitionType: PageTransitionType.fade,
                                                                                                          duration: Duration(milliseconds: 0),
                                                                                                        ),
                                                                                                      },
                                                                                                    );
                                                                                                  },
                                                                                                  child: Text(
                                                                                                    'View Plan(s)',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Arial',
                                                                                                          color: const Color(0xFF0000FF),
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: false,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ].divide(const SizedBox(height: 12.0)),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      SizedBox(
                                                                                        height: 380.0,
                                                                                        child: VerticalDivider(
                                                                                          thickness: 1.0,
                                                                                          color: FlutterFlowTheme.of(context).accent2,
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                                                                                          child: Container(
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              border: Border.all(
                                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              ),
                                                                                            ),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Container(
                                                                                                  decoration: const BoxDecoration(),
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        'Current Balance',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Arial',
                                                                                                              color: Colors.black,
                                                                                                              letterSpacing: 0.0,
                                                                                                              useGoogleFonts: false,
                                                                                                            ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                        child: Text(
                                                                                                          getJsonField(
                                                                                                                    mobileCardDetailslistItem,
                                                                                                                    r'''$.PaymentDueDate''',
                                                                                                                  ) !=
                                                                                                                  null
                                                                                                              ? functions.toDatedMMM(getJsonField(
                                                                                                                  mobileCardDetailslistItem,
                                                                                                                  r'''$.PaymentDueDate''',
                                                                                                                ).toString())!
                                                                                                              : '',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Arial',
                                                                                                                color: Colors.black,
                                                                                                                fontSize: 36.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                                useGoogleFonts: false,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                  child: Container(
                                                                                                    decoration: const BoxDecoration(),
                                                                                                    child: Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Text(
                                                                                                          'Minimum Payment Due',
                                                                                                          textAlign: TextAlign.center,
                                                                                                          maxLines: 2,
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Arial',
                                                                                                                color: Colors.black,
                                                                                                                letterSpacing: 0.0,
                                                                                                                useGoogleFonts: false,
                                                                                                              ),
                                                                                                        ),
                                                                                                        Padding(
                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                          child: RichText(
                                                                                                            textScaler: MediaQuery.of(context).textScaler,
                                                                                                            text: TextSpan(
                                                                                                              children: [
                                                                                                                TextSpan(
                                                                                                                  text: '\$',
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        fontFamily: 'Arial',
                                                                                                                        color: Colors.black,
                                                                                                                        letterSpacing: 0.0,
                                                                                                                        fontWeight: FontWeight.normal,
                                                                                                                        useGoogleFonts: false,
                                                                                                                      ),
                                                                                                                ),
                                                                                                                TextSpan(
                                                                                                                  text: functions.formatstring(valueOrDefault<double>(
                                                                                                                    getJsonField(
                                                                                                                      mobileCardDetailslistItem,
                                                                                                                      r'''$.MinimumPaymentDue''',
                                                                                                                    ),
                                                                                                                    0.0,
                                                                                                                  ).toDouble()),
                                                                                                                  style: const TextStyle(),
                                                                                                                )
                                                                                                              ],
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'Arial',
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    useGoogleFonts: false,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                FFButtonWidget(
                                                                                                  onPressed: () {
                                                                                                    print('Button pressed ...');
                                                                                                  },
                                                                                                  text: 'Make Payment',
                                                                                                  options: FFButtonOptions(
                                                                                                    height: 45.0,
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(12.0, 10.0, 12.0, 10.0),
                                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                    color: FlutterFlowTheme.of(context).success,
                                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                          fontFamily: 'Arial',
                                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                          fontSize: 14.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.bold,
                                                                                                          useGoogleFonts: false,
                                                                                                        ),
                                                                                                    borderSide: const BorderSide(
                                                                                                      color: Colors.transparent,
                                                                                                      width: 1.0,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(4.0),
                                                                                                  ),
                                                                                                ),
                                                                                                Text(
                                                                                                  '',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Arial',
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: false,
                                                                                                      ),
                                                                                                ),
                                                                                              ].divide(const SizedBox(height: 12.0)),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      SizedBox(
                                                                                        height: 380.0,
                                                                                        child: VerticalDivider(
                                                                                          thickness: 1.0,
                                                                                          color: FlutterFlowTheme.of(context).accent2,
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                                                                                          child: Container(
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              border: Border.all(
                                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              ),
                                                                                            ),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Container(
                                                                                                  decoration: const BoxDecoration(),
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        'Rewards Points',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Arial',
                                                                                                              color: Colors.black,
                                                                                                              letterSpacing: 0.0,
                                                                                                              useGoogleFonts: false,
                                                                                                            ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                        child: Text(
                                                                                                          '0',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Arial',
                                                                                                                color: Colors.black,
                                                                                                                fontSize: 36.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                                useGoogleFonts: false,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                Expanded(
                                                                                                  child: Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      'Available Points',
                                                                                                      textAlign: TextAlign.start,
                                                                                                      maxLines: 2,
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Arial',
                                                                                                            color: Colors.black,
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: false,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                Expanded(
                                                                                                  child: InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      if (_model.selectedIndex != 4) {
                                                                                                        _model.rewardPointsMobileVIewPointAPIRes = await action_blocks.rewardPointsAPI(
                                                                                                          context,
                                                                                                          userId: FFAppState().selectedUserId.toString(),
                                                                                                          accountNumber: getJsonField(
                                                                                                            mobileCardDetailslistItem,
                                                                                                            r'''$.AccountNumber''',
                                                                                                          ).toString(),
                                                                                                        );
                                                                                                        setState(() {
                                                                                                          _model.rewardPointsList = _model.rewardPointsMobileVIewPointAPIRes!.toList().cast<dynamic>();
                                                                                                          _model.selectedIndex = 4;
                                                                                                        });
                                                                                                      }

                                                                                                      setState(() {});
                                                                                                    },
                                                                                                    child: Text(
                                                                                                      'View Points',
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Arial',
                                                                                                            color: const Color(0xFF0000FF),
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: false,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                Text(
                                                                                                  '',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Arial',
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: false,
                                                                                                      ),
                                                                                                ),
                                                                                              ].divide(const SizedBox(height: 12.0)),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              if (MediaQuery.sizeOf(context).width < 810.0)
                                                                                Container(
                                                                                  width: double.infinity,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).accent1,
                                                                                    ),
                                                                                  ),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            ),
                                                                                          ),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                            children: [
                                                                                              Container(
                                                                                                decoration: const BoxDecoration(),
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Text(
                                                                                                      'Current Balance',
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Arial',
                                                                                                            color: Colors.black,
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: false,
                                                                                                          ),
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                      child: Container(
                                                                                                        decoration: const BoxDecoration(),
                                                                                                        child: Column(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            RichText(
                                                                                                              textScaler: MediaQuery.of(context).textScaler,
                                                                                                              text: TextSpan(
                                                                                                                children: [
                                                                                                                  TextSpan(
                                                                                                                    text: '\$',
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Arial',
                                                                                                                          color: Colors.black,
                                                                                                                          fontSize: 36.0,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                          fontWeight: FontWeight.normal,
                                                                                                                          useGoogleFonts: false,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                  TextSpan(
                                                                                                                    text: functions.formatstring(valueOrDefault<double>(
                                                                                                                      getJsonField(
                                                                                                                        mobileCardDetailslistItem,
                                                                                                                        r'''$.CurrentBalance''',
                                                                                                                      ),
                                                                                                                      0.0,
                                                                                                                    ).toDouble()),
                                                                                                                    style: const TextStyle(
                                                                                                                      color: Colors.black,
                                                                                                                      fontSize: 36.0,
                                                                                                                    ),
                                                                                                                  )
                                                                                                                ],
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Arial',
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      useGoogleFonts: false,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                              Container(
                                                                                                decoration: const BoxDecoration(),
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Text(
                                                                                                      'Available Cred',
                                                                                                      textAlign: TextAlign.center,
                                                                                                      maxLines: 2,
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Arial',
                                                                                                            color: Colors.black,
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: false,
                                                                                                          ),
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                      child: RichText(
                                                                                                        textScaler: MediaQuery.of(context).textScaler,
                                                                                                        text: TextSpan(
                                                                                                          children: [
                                                                                                            TextSpan(
                                                                                                              text: '\$',
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'Arial',
                                                                                                                    color: Colors.black,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    fontWeight: FontWeight.normal,
                                                                                                                    useGoogleFonts: false,
                                                                                                                  ),
                                                                                                            ),
                                                                                                            TextSpan(
                                                                                                              text: functions.formatstring(valueOrDefault<double>(
                                                                                                                getJsonField(
                                                                                                                  mobileCardDetailslistItem,
                                                                                                                  r'''$.AvailableCredit''',
                                                                                                                ),
                                                                                                                0.0,
                                                                                                              ).toDouble()),
                                                                                                              style: const TextStyle(),
                                                                                                            )
                                                                                                          ],
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Arial',
                                                                                                                letterSpacing: 0.0,
                                                                                                                useGoogleFonts: false,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                              ClipRRect(
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                child: Image.asset(
                                                                                                  'assets/images/PayYourWayLogo_1.png',
                                                                                                  width: 80.0,
                                                                                                  height: 23.7,
                                                                                                  fit: BoxFit.cover,
                                                                                                ),
                                                                                              ),
                                                                                              InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  context.pushNamed(
                                                                                                    'ViewPlanStatement',
                                                                                                    queryParameters: {
                                                                                                      'accountNumber': serializeParam(
                                                                                                        getJsonField(
                                                                                                          mobileCardDetailslistItem,
                                                                                                          r'''$.AccountNumber''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                    }.withoutNulls,
                                                                                                  );
                                                                                                },
                                                                                                child: Text(
                                                                                                  'View Plan(s)',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Arial',
                                                                                                        color: const Color(0xFF0000FF),
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: false,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ].divide(const SizedBox(height: 12.0)),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Divider(
                                                                                        thickness: 1.0,
                                                                                        color: FlutterFlowTheme.of(context).accent2,
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            ),
                                                                                          ),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                            children: [
                                                                                              Container(
                                                                                                decoration: const BoxDecoration(),
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Text(
                                                                                                      'Current Balance',
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Arial',
                                                                                                            color: Colors.black,
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: false,
                                                                                                          ),
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                      child: Text(
                                                                                                        getJsonField(
                                                                                                                  mobileCardDetailslistItem,
                                                                                                                  r'''$.PaymentDueDate''',
                                                                                                                ) !=
                                                                                                                null
                                                                                                            ? functions.toDatedMMMyyyy(getJsonField(
                                                                                                                mobileCardDetailslistItem,
                                                                                                                r'''$.PaymentDueDate''',
                                                                                                              ).toString())!
                                                                                                            : '',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Arial',
                                                                                                              color: Colors.black,
                                                                                                              fontSize: 36.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              useGoogleFonts: false,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                child: Container(
                                                                                                  decoration: const BoxDecoration(),
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        'Minimum Payment Due',
                                                                                                        textAlign: TextAlign.center,
                                                                                                        maxLines: 2,
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Arial',
                                                                                                              color: Colors.black,
                                                                                                              letterSpacing: 0.0,
                                                                                                              useGoogleFonts: false,
                                                                                                            ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                        child: RichText(
                                                                                                          textScaler: MediaQuery.of(context).textScaler,
                                                                                                          text: TextSpan(
                                                                                                            children: [
                                                                                                              TextSpan(
                                                                                                                text: '\$',
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Arial',
                                                                                                                      color: Colors.black,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      fontWeight: FontWeight.normal,
                                                                                                                      useGoogleFonts: false,
                                                                                                                    ),
                                                                                                              ),
                                                                                                              TextSpan(
                                                                                                                text: functions.formatstring(valueOrDefault<double>(
                                                                                                                  getJsonField(
                                                                                                                    mobileCardDetailslistItem,
                                                                                                                    r'''$.MinimumPaymentDue''',
                                                                                                                  ),
                                                                                                                  0.0,
                                                                                                                ).toDouble()),
                                                                                                                style: const TextStyle(),
                                                                                                              )
                                                                                                            ],
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  fontFamily: 'Arial',
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  useGoogleFonts: false,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              FFButtonWidget(
                                                                                                onPressed: () {
                                                                                                  print('Button pressed ...');
                                                                                                },
                                                                                                text: 'Make Payment',
                                                                                                options: FFButtonOptions(
                                                                                                  height: 45.0,
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(12.0, 10.0, 12.0, 10.0),
                                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                  color: FlutterFlowTheme.of(context).success,
                                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                        fontFamily: 'Arial',
                                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                        fontSize: 14.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        useGoogleFonts: false,
                                                                                                      ),
                                                                                                  borderSide: const BorderSide(
                                                                                                    color: Colors.transparent,
                                                                                                    width: 1.0,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(4.0),
                                                                                                ),
                                                                                              ),
                                                                                            ].divide(const SizedBox(height: 12.0)),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Divider(
                                                                                        thickness: 1.0,
                                                                                        color: FlutterFlowTheme.of(context).accent2,
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            ),
                                                                                          ),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                                                child: Text(
                                                                                                  'Rewards Points',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Arial',
                                                                                                        color: Colors.black,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: false,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Text(
                                                                                                '0',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Arial',
                                                                                                      color: Colors.black,
                                                                                                      fontSize: 36.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      useGoogleFonts: false,
                                                                                                    ),
                                                                                              ),
                                                                                              Container(
                                                                                                decoration: const BoxDecoration(),
                                                                                                child: Padding(
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 42.0),
                                                                                                  child: Text(
                                                                                                    'Available Points',
                                                                                                    textAlign: TextAlign.start,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Arial',
                                                                                                          color: Colors.black,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: false,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  if (_model.selectedIndex != 4) {
                                                                                                    _model.rewardPointsWebVIewPointAPIResCopy = await action_blocks.rewardPointsAPI(
                                                                                                      context,
                                                                                                      userId: FFAppState().selectedUserId.toString(),
                                                                                                      accountNumber: getJsonField(
                                                                                                        mobileCardDetailslistItem,
                                                                                                        r'''$.AccountNumber''',
                                                                                                      ).toString(),
                                                                                                    );
                                                                                                    setState(() {
                                                                                                      _model.rewardPointsList = _model.rewardPointsWebVIewPointAPIRes!.toList().cast<dynamic>();
                                                                                                      _model.selectedIndex = 4;
                                                                                                    });
                                                                                                  }

                                                                                                  setState(() {});
                                                                                                },
                                                                                                child: Text(
                                                                                                  'View points',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Arial',
                                                                                                        color: const Color(0xFF0000FF),
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: false,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              if (MediaQuery.sizeOf(context).width >= 810.0)
                                                                                Container(
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                  ),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Expanded(
                                                                                        child: Container(
                                                                                          decoration: const BoxDecoration(),
                                                                                          child: StatmentBalanceWidget(
                                                                                            key: Key('Keycmw_${mobileCardDetailslistIndex}_of_${mobileCardDetailslist.length}'),
                                                                                            date: getJsonField(
                                                                                                      mobileCardDetailslistItem,
                                                                                                      r'''$.LastStatementDate''',
                                                                                                    ) !=
                                                                                                    null
                                                                                                ? functions.toDateDDMMYYYY(getJsonField(
                                                                                                    mobileCardDetailslistItem,
                                                                                                    r'''$.LastStatementDate''',
                                                                                                  ).toString())
                                                                                                : '',
                                                                                            balance: functions.formatstring(valueOrDefault<double>(
                                                                                              getJsonField(
                                                                                                mobileCardDetailslistItem,
                                                                                                r'''$.LastStatementBalance''',
                                                                                              ),
                                                                                              0.0,
                                                                                            ).toDouble()),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Container(
                                                                                          decoration: const BoxDecoration(),
                                                                                          child: RecentChargesWidget(
                                                                                            key: Key('Keyqrn_${mobileCardDetailslistIndex}_of_${mobileCardDetailslist.length}'),
                                                                                            balance: functions.formatstring(valueOrDefault<double>(
                                                                                              getJsonField(
                                                                                                mobileCardDetailslistItem,
                                                                                                r'''$.RecentCharges''',
                                                                                              ),
                                                                                              0.0,
                                                                                            ).toDouble()),
                                                                                            date: getJsonField(
                                                                                                      mobileCardDetailslistItem,
                                                                                                      r'''$.RecentChargesDate''',
                                                                                                    ) !=
                                                                                                    null
                                                                                                ? functions.toDateDDMMYYYY(getJsonField(
                                                                                                    mobileCardDetailslistItem,
                                                                                                    r'''$.RecentChargesDate''',
                                                                                                  ).toString())
                                                                                                : '',
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Container(
                                                                                          decoration: const BoxDecoration(),
                                                                                          child: PastDueBalanceWidget(
                                                                                            key: Key('Keycrk_${mobileCardDetailslistIndex}_of_${mobileCardDetailslist.length}'),
                                                                                            bal: functions.formatstring(valueOrDefault<double>(
                                                                                              getJsonField(
                                                                                                mobileCardDetailslistItem,
                                                                                                r'''$.PaymentPastDue''',
                                                                                              ),
                                                                                              0.0,
                                                                                            ).toDouble()),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Container(
                                                                                          decoration: const BoxDecoration(),
                                                                                          child: LastPaymentWidget(
                                                                                            key: Key('Keyrcn_${mobileCardDetailslistIndex}_of_${mobileCardDetailslist.length}'),
                                                                                            lastPayment: functions.formatstring(valueOrDefault<double>(
                                                                                              getJsonField(
                                                                                                mobileCardDetailslistItem,
                                                                                                r'''$.LastPaidAmount''',
                                                                                              ),
                                                                                              0.0,
                                                                                            ).toDouble()),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Container(
                                                                                          decoration: const BoxDecoration(),
                                                                                          child: TotalCreditLimitWidget(
                                                                                            key: Key('Keyqyp_${mobileCardDetailslistIndex}_of_${mobileCardDetailslist.length}'),
                                                                                            bal: functions.formatstring(valueOrDefault<double>(
                                                                                              getJsonField(
                                                                                                mobileCardDetailslistItem,
                                                                                                r'''$.TotalCreditLimit''',
                                                                                              ),
                                                                                              0.0,
                                                                                            ).toDouble()),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              if (MediaQuery.sizeOf(context).width < 810.0)
                                                                                Container(
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                  ),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              decoration: const BoxDecoration(),
                                                                                              child: StatmentBalanceWidget(
                                                                                                key: Key('Keyeuv_${mobileCardDetailslistIndex}_of_${mobileCardDetailslist.length}'),
                                                                                                date: getJsonField(
                                                                                                          mobileCardDetailslistItem,
                                                                                                          r'''$.LastStatementDate''',
                                                                                                        ) !=
                                                                                                        null
                                                                                                    ? functions.toDateDDMMYYYY(getJsonField(
                                                                                                        mobileCardDetailslistItem,
                                                                                                        r'''$.LastStatementDate''',
                                                                                                      ).toString())
                                                                                                    : '',
                                                                                                balance: functions.formatstring(valueOrDefault<double>(
                                                                                                  getJsonField(
                                                                                                    mobileCardDetailslistItem,
                                                                                                    r'''$.LastStatementBalance''',
                                                                                                  ),
                                                                                                  0.0,
                                                                                                ).toDouble()),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              decoration: const BoxDecoration(),
                                                                                              child: RecentChargesWidget(
                                                                                                key: Key('Keygkc_${mobileCardDetailslistIndex}_of_${mobileCardDetailslist.length}'),
                                                                                                balance: functions.formatstring(valueOrDefault<double>(
                                                                                                  getJsonField(
                                                                                                    mobileCardDetailslistItem,
                                                                                                    r'''$.RecentCharges''',
                                                                                                  ),
                                                                                                  0.0,
                                                                                                ).toDouble()),
                                                                                                date: getJsonField(
                                                                                                          mobileCardDetailslistItem,
                                                                                                          r'''$.RecentChargesDate''',
                                                                                                        ) !=
                                                                                                        null
                                                                                                    ? functions.toDateDDMMYYYY(getJsonField(
                                                                                                        mobileCardDetailslistItem,
                                                                                                        r'''$.RecentChargesDate''',
                                                                                                      ).toString())
                                                                                                    : '',
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              decoration: const BoxDecoration(),
                                                                                              child: PastDueBalanceWidget(
                                                                                                key: Key('Key7b8_${mobileCardDetailslistIndex}_of_${mobileCardDetailslist.length}'),
                                                                                                bal: functions.formatstring(valueOrDefault<double>(
                                                                                                  getJsonField(
                                                                                                    mobileCardDetailslistItem,
                                                                                                    r'''$.PaymentPastDue''',
                                                                                                  ),
                                                                                                  0.0,
                                                                                                ).toDouble()),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              decoration: const BoxDecoration(),
                                                                                              child: LastPaymentWidget(
                                                                                                key: Key('Key6sq_${mobileCardDetailslistIndex}_of_${mobileCardDetailslist.length}'),
                                                                                                lastPayment: functions.formatstring(valueOrDefault<double>(
                                                                                                  getJsonField(
                                                                                                    mobileCardDetailslistItem,
                                                                                                    r'''$.LastPaidAmount''',
                                                                                                  ),
                                                                                                  0.0,
                                                                                                ).toDouble()),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              decoration: const BoxDecoration(),
                                                                                              child: TotalCreditLimitWidget(
                                                                                                key: Key('Keyixn_${mobileCardDetailslistIndex}_of_${mobileCardDetailslist.length}'),
                                                                                                bal: functions.formatstring(valueOrDefault<double>(
                                                                                                  getJsonField(
                                                                                                    mobileCardDetailslistItem,
                                                                                                    r'''$.TotalCreditLimit''',
                                                                                                  ),
                                                                                                  0.0,
                                                                                                ).toDouble()),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    if (_model.selectedIndex != 1) {
                                                                                      _model.recentActivityABMobileRes = await action_blocks.recentActivityAPICall(
                                                                                        context,
                                                                                        userId: FFAppState().selectedUserId.toString(),
                                                                                        accountNumber: getJsonField(
                                                                                          mobileCardDetailslistItem,
                                                                                          r'''$.AccountNumber''',
                                                                                        ).toString(),
                                                                                      );
                                                                                      setState(() {
                                                                                        _model.recentActivityList = _model.recentActivityABMobileRes!.toList().cast<dynamic>();
                                                                                        _model.selectedIndex = 1;
                                                                                      });
                                                                                    }

                                                                                    setState(() {});
                                                                                  },
                                                                                  child: Container(
                                                                                    decoration: BoxDecoration(
                                                                                      color: _model.selectedIndex == 1 ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                      borderRadius: BorderRadius.only(
                                                                                        bottomLeft: Radius.circular(valueOrDefault<double>(
                                                                                          _model.selectedIndex == 1 ? 0.0 : 4.0,
                                                                                          0.0,
                                                                                        )),
                                                                                        bottomRight: Radius.circular(valueOrDefault<double>(
                                                                                          _model.selectedIndex == 1 ? 0.0 : 4.0,
                                                                                          0.0,
                                                                                        )),
                                                                                        topLeft: const Radius.circular(4.0),
                                                                                        topRight: const Radius.circular(4.0),
                                                                                      ),
                                                                                      border: Border.all(
                                                                                        color: _model.selectedIndex == 1 ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                      ),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          if ((_model.selectedIndex == 0) || (_model.selectedIndex == 2) || (_model.selectedIndex == 3) || (_model.selectedIndex == 4))
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                              child: Icon(
                                                                                                Icons.add_outlined,
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                size: 19.0,
                                                                                              ),
                                                                                            ),
                                                                                          if (_model.selectedIndex == 1)
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                              child: InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  setState(() {
                                                                                                    _model.selectedIndex = 0;
                                                                                                  });
                                                                                                },
                                                                                                child: Icon(
                                                                                                  Icons.remove_rounded,
                                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                  size: 19.0,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          Text(
                                                                                            'Recent Activity',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Arial',
                                                                                                  color: _model.selectedIndex == 1 ? FlutterFlowTheme.of(context).primaryBackground : Colors.black,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              if (_model.selectedIndex == 1)
                                                                                RecentActivitiyWidget(
                                                                                  key: Key('Key4v1_${mobileCardDetailslistIndex}_of_${mobileCardDetailslist.length}'),
                                                                                  recentActivityList: _model.recentActivityList,
                                                                                ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    if (_model.selectedIndex != 2) {
                                                                                      _model.paymentHistoryListMobileABRes = await action_blocks.paymentHistoryList(
                                                                                        context,
                                                                                        userId: FFAppState().selectedUserId.toString(),
                                                                                        accountNumber: getJsonField(
                                                                                          mobileCardDetailslistItem,
                                                                                          r'''$.AccountNumber''',
                                                                                        ).toString(),
                                                                                      );
                                                                                      setState(() {
                                                                                        _model.paymentHistoryList = _model.paymentHistoryListMobileABRes!.toList().cast<dynamic>();
                                                                                        _model.selectedIndex = 2;
                                                                                      });
                                                                                    }

                                                                                    setState(() {});
                                                                                  },
                                                                                  child: Container(
                                                                                    decoration: BoxDecoration(
                                                                                      color: _model.selectedIndex == 2 ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                      borderRadius: BorderRadius.only(
                                                                                        bottomLeft: Radius.circular(valueOrDefault<double>(
                                                                                          _model.selectedIndex == 2 ? 0.0 : 4.0,
                                                                                          0.0,
                                                                                        )),
                                                                                        bottomRight: Radius.circular(valueOrDefault<double>(
                                                                                          _model.selectedIndex == 2 ? 0.0 : 4.0,
                                                                                          0.0,
                                                                                        )),
                                                                                        topLeft: const Radius.circular(4.0),
                                                                                        topRight: const Radius.circular(4.0),
                                                                                      ),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          if ((_model.selectedIndex == 0) || (_model.selectedIndex == 3) || (_model.selectedIndex == 1) || (_model.selectedIndex == 4))
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                              child: Icon(
                                                                                                Icons.add_outlined,
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                size: 19.0,
                                                                                              ),
                                                                                            ),
                                                                                          if (_model.selectedIndex == 2)
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                              child: InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  setState(() {
                                                                                                    _model.selectedIndex = 0;
                                                                                                  });
                                                                                                },
                                                                                                child: Icon(
                                                                                                  Icons.remove_rounded,
                                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                  size: 19.0,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          Text(
                                                                                            'Payment History',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Arial',
                                                                                                  color: _model.selectedIndex == 2 ? FlutterFlowTheme.of(context).primaryBackground : Colors.black,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              if (_model.selectedIndex == 2)
                                                                                PaymnetHistory1Widget(
                                                                                  key: Key('Key0ql_${mobileCardDetailslistIndex}_of_${mobileCardDetailslist.length}'),
                                                                                  paymentHistoryDataList: _model.paymentHistoryList,
                                                                                ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    if (_model.selectedIndex != 3) {
                                                                                      _model.statementMobileAPIRes = await action_blocks.statementAPICall(
                                                                                        context,
                                                                                        userId: FFAppState().selectedUserId.toString(),
                                                                                        accountNumber: getJsonField(
                                                                                          mobileCardDetailslistItem,
                                                                                          r'''$.AccountNumber''',
                                                                                        ).toString(),
                                                                                      );
                                                                                      setState(() {
                                                                                        _model.statementsList = _model.statementMobileAPIRes!.toList().cast<dynamic>();
                                                                                        _model.selectedIndex = 3;
                                                                                      });
                                                                                    }

                                                                                    setState(() {});
                                                                                  },
                                                                                  child: Container(
                                                                                    decoration: BoxDecoration(
                                                                                      color: _model.selectedIndex == 3 ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                      borderRadius: BorderRadius.only(
                                                                                        bottomLeft: Radius.circular(valueOrDefault<double>(
                                                                                          _model.selectedIndex == 3 ? 0.0 : 4.0,
                                                                                          0.0,
                                                                                        )),
                                                                                        bottomRight: Radius.circular(valueOrDefault<double>(
                                                                                          _model.selectedIndex == 3 ? 0.0 : 4.0,
                                                                                          0.0,
                                                                                        )),
                                                                                        topLeft: const Radius.circular(4.0),
                                                                                        topRight: const Radius.circular(4.0),
                                                                                      ),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          if ((_model.selectedIndex == 1) || (_model.selectedIndex == 0) || (_model.selectedIndex == 2) || (_model.selectedIndex == 4))
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                              child: Icon(
                                                                                                Icons.add_outlined,
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                size: 19.0,
                                                                                              ),
                                                                                            ),
                                                                                          if (_model.selectedIndex == 3)
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                              child: InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  setState(() {
                                                                                                    _model.selectedIndex = 0;
                                                                                                  });
                                                                                                },
                                                                                                child: Icon(
                                                                                                  Icons.remove_rounded,
                                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                  size: 19.0,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          Text(
                                                                                            'Statements',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Arial',
                                                                                                  color: _model.selectedIndex == 3 ? FlutterFlowTheme.of(context).primaryBackground : Colors.black,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              if (_model.selectedIndex == 3)
                                                                                StatementsWidget(
                                                                                  key: Key('Key5vo_${mobileCardDetailslistIndex}_of_${mobileCardDetailslist.length}'),
                                                                                  statementDataList: _model.statementsList,
                                                                                ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    if (_model.selectedIndex != 4) {
                                                                                      _model.rewardPointsMobileAPIRes = await action_blocks.rewardPointsAPI(
                                                                                        context,
                                                                                        userId: FFAppState().selectedUserId.toString(),
                                                                                        accountNumber: getJsonField(
                                                                                          mobileCardDetailslistItem,
                                                                                          r'''$.AccountNumber''',
                                                                                        ).toString(),
                                                                                      );
                                                                                      setState(() {
                                                                                        _model.rewardPointsList = _model.rewardPointsMobileAPIRes!.toList().cast<dynamic>();
                                                                                        _model.selectedIndex = 4;
                                                                                      });
                                                                                    }

                                                                                    setState(() {});
                                                                                  },
                                                                                  child: Container(
                                                                                    decoration: BoxDecoration(
                                                                                      color: _model.selectedIndex == 4 ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                      borderRadius: BorderRadius.only(
                                                                                        bottomLeft: Radius.circular(valueOrDefault<double>(
                                                                                          _model.selectedIndex == 4 ? 0.0 : 4.0,
                                                                                          0.0,
                                                                                        )),
                                                                                        bottomRight: Radius.circular(valueOrDefault<double>(
                                                                                          _model.selectedIndex == 4 ? 0.0 : 4.0,
                                                                                          0.0,
                                                                                        )),
                                                                                        topLeft: const Radius.circular(4.0),
                                                                                        topRight: const Radius.circular(4.0),
                                                                                      ),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          if ((_model.selectedIndex == 1) || (_model.selectedIndex == 2) || (_model.selectedIndex == 3) || (_model.selectedIndex == 0))
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                              child: Icon(
                                                                                                Icons.add_outlined,
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                size: 19.0,
                                                                                              ),
                                                                                            ),
                                                                                          if (_model.selectedIndex == 4)
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                              child: InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  setState(() {
                                                                                                    _model.selectedIndex = 0;
                                                                                                  });
                                                                                                },
                                                                                                child: Icon(
                                                                                                  Icons.remove_rounded,
                                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                  size: 19.0,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          Text(
                                                                                            'Rewards Activity',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Arial',
                                                                                                  color: _model.selectedIndex == 4 ? FlutterFlowTheme.of(context).primaryBackground : Colors.black,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              if (_model.selectedIndex == 4)
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                                                  child: RewardsActivityWidget(
                                                                                    key: Key('Key9y8_${mobileCardDetailslistIndex}_of_${mobileCardDetailslist.length}'),
                                                                                    rewardPointsDataList: _model.rewardPointsList,
                                                                                  ),
                                                                                ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              );
                                                            }),
                                                          );
                                                        },
                                                      );
                                                    } else {
                                                      return Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  8.0),
                                                          child: Text(
                                                            'No data found',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Arial',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                  },
                                                ),
                                              ].addToEnd(
                                                  const SizedBox(height: 16.0)),
                                            ),
                                          ),
                                        ),
                                      ].addToEnd(const SizedBox(height: 20.0)),
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
            ),
          )),
    );
  }
}
