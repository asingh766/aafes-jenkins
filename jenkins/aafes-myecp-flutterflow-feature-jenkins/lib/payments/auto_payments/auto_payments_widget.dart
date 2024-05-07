import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/payments/auto_payment/auto_payment_widget.dart';
import '/payments/payment_account_selector/payment_account_selector_widget.dart';
import '/payments/payment_form/payment_form_widget.dart';
import '/payments/payment_unavailable/payment_unavailable_widget.dart';
import '/payments/scheduled_payment/scheduled_payment_widget.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'auto_payments_model.dart';
export 'auto_payments_model.dart';

class AutoPaymentsWidget extends StatefulWidget {
  const AutoPaymentsWidget({super.key});

  @override
  State<AutoPaymentsWidget> createState() => _AutoPaymentsWidgetState();
}

class _AutoPaymentsWidgetState extends State<AutoPaymentsWidget> {
  late AutoPaymentsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AutoPaymentsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      unawaited(
        () async {
          await action_blocks.showLoadingDialog(context);
        }(),
      );
      setState(() {
        _model.isLoading = true;
      });
      _model.getpaymentAccountList =
          await BankingProfileGroup.getBankingProfilesCall.call(
        userId: FFAppState().selectedUserId.toString(),
        dynamicBaseURL: FFAppState().dynamicBaseURL,
      );
      if ((_model.getpaymentAccountList?.succeeded ?? true)) {
        setState(() {
          _model.paymentAccounts = ((_model.getpaymentAccountList?.jsonBody ??
                      '')
                  .toList()
                  .map<PaymentAccountStruct?>(PaymentAccountStruct.maybeFromMap)
                  .toList() as Iterable<PaymentAccountStruct?>)
              .withoutNulls
              .toList()
              .cast<PaymentAccountStruct>();
          _model.accountOptions = functions
              .returnPaymentMethodOptions(
                  (_model.getpaymentAccountList?.jsonBody ?? ''))
              .map((e) => OptionStruct.maybeFromMap(e))
              .withoutNulls
              .toList()
              .toList()
              .cast<OptionStruct>();
        });
        if (FFAppState().selectedPaymentAccount != null) {
          setState(() {
            FFAppState().selectedAccountForPayment = _model.paymentAccounts
                .where((e) =>
                    e.accountNumber ==
                    FFAppState().selectedAccountForPayment.accountNumber)
                .toList()
                .first;
          });
        } else {
          setState(() {
            FFAppState().selectedAccountForPayment =
                _model.paymentAccounts.first;
          });
        }

        setState(() {
          _model.selectedAccount = _model.accountOptions
              .where((e) =>
                  e.value ==
                  FFAppState().selectedAccountForPayment.accountNumber)
              .toList()
              .first;
        });
        if (!FFAppState().selectedAccountForPayment.isAccountBlocked) {
          _model.accountPaymentResults =
              await PaymentsGroup.getPaymentsCall.call(
            accountNo: FFAppState().selectedAccountForPayment.accountNumber,
            userId: FFAppState().selectedUserId.toString(),
            dynamicBaseURL: FFAppState().dynamicBaseURL,
          );
          if ((_model.accountPaymentResults?.succeeded ?? true)) {
            setState(() {
              _model.payments = functions
                  .paymentJsonNullRemover(
                      (_model.getpaymentAccountList?.jsonBody ?? ''))
                  .map((e) => PaymentStruct.maybeFromMap(e))
                  .withoutNulls
                  .toList()
                  .toList()
                  .cast<PaymentStruct>();
            });
          } else {
            setState(() {
              _model.payments = [];
            });
          }
        }
      }
      setState(() {
        _model.isLoading = false;
      });
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
        title: 'Auto Payment',
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
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Stack(
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 70.0, 0.0, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width >
                                          kBreakpointLarge
                                      ? FFAppConstants.maxScreenWidth
                                      : MediaQuery.sizeOf(context).width,
                                  constraints: BoxConstraints(
                                    minHeight: MediaQuery.sizeOf(context)
                                                .width >
                                            kBreakpointLarge
                                        ? FFAppState().screenBodyHeightDesktop
                                        : MediaQuery.sizeOf(context).height,
                                  ),
                                  decoration: const BoxDecoration(),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 16.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex:
                                              MediaQuery.sizeOf(context).width <
                                                      kBreakpointLarge
                                                  ? 1
                                                  : 3,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    valueOrDefault<double>(
                                                      () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 16.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 24.0;
                                                        } else {
                                                          return 0.0;
                                                        }
                                                      }(),
                                                      0.0,
                                                    ),
                                                    0.0,
                                                    valueOrDefault<double>(
                                                      () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 16.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 24.0;
                                                        } else {
                                                          return 0.0;
                                                        }
                                                      }(),
                                                      0.0,
                                                    ),
                                                    0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    if (!FFAppState()
                                                        .isFromTwoFacotrAuth)
                                                      Flexible(
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
                                                          ],
                                                        ),
                                                      ),
                                                  ].divide(
                                                      const SizedBox(width: 16.0)),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Material(
                                                      color: Colors.transparent,
                                                      elevation: 2.0,
                                                      shape:
                                                          const RoundedRectangleBorder(
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
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        height: 40.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          borderRadius:
                                                              const BorderRadius.only(
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
                                                            children: [
                                                              InkWell(
                                                                splashColor: Colors
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
                                                                  context.goNamed(
                                                                      'HomeDashboard');
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 20.0,
                                                                  height: 20.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            50.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                  ),
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .arrow_back_outlined,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    size: 14.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                'One Time Payment',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Arial',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 8.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 2.0,
                                                      thickness: 2.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                    ),
                                                    Material(
                                                      color: Colors.transparent,
                                                      elevation: 2.0,
                                                      shape:
                                                          const RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  8.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  8.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  0.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  0.0),
                                                        ),
                                                      ),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          borderRadius:
                                                              const BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    8.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    8.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    0.0),
                                                          ),
                                                        ),
                                                        child: Builder(
                                                          builder: (context) {
                                                            if (_model
                                                                .isLoading) {
                                                              return Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                            16.0),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  height: MediaQuery.sizeOf(
                                                                              context)
                                                                          .height *
                                                                      0.5,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                  ),
                                                                ),
                                                              );
                                                            } else {
                                                              return Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  wrapWithModel(
                                                                    model: _model
                                                                        .paymentAccountSelectorModel,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        PaymentAccountSelectorWidget(
                                                                      accountNumber: FFAppState()
                                                                          .selectedAccountForPayment
                                                                          .accountNoLast4,
                                                                      isPrimaryUser: FFAppState()
                                                                          .selectedAccountForPayment
                                                                          .isPrimaryUser,
                                                                      dropDownTitle:
                                                                          'Switch Account',
                                                                      totalNoOfAuthUsers: _model
                                                                          .paymentAccounts
                                                                          .where((e) =>
                                                                              !e.isPrimaryUser)
                                                                          .toList()
                                                                          .length,
                                                                      bankAccounts:
                                                                          _model
                                                                              .accountOptions,
                                                                      selectedAccount:
                                                                          _model
                                                                              .selectedAccount,
                                                                      onChange:
                                                                          (value) async {
                                                                        unawaited(
                                                                          () async {
                                                                            await action_blocks.showLoadingDialog(context);
                                                                          }(),
                                                                        );
                                                                        setState(
                                                                            () {
                                                                          _model.selectedAccount =
                                                                              value;
                                                                        });
                                                                        setState(
                                                                            () {
                                                                          FFAppState().selectedAccountForPayment = _model
                                                                              .paymentAccounts
                                                                              .where((e) => e.accountNumber == _model.selectedAccount?.value)
                                                                              .toList()
                                                                              .first;
                                                                        });
                                                                        if (!FFAppState()
                                                                            .selectedAccountForPayment
                                                                            .isAccountBlocked) {
                                                                          _model.newAccountPaymentResults = await PaymentsGroup
                                                                              .getPaymentsCall
                                                                              .call(
                                                                            accountNo:
                                                                                FFAppState().selectedAccountForPayment.accountNumber,
                                                                            userId:
                                                                                FFAppState().selectedUserId.toString(),
                                                                            dynamicBaseURL:
                                                                                FFAppState().dynamicBaseURL,
                                                                          );
                                                                          if ((_model.newAccountPaymentResults?.succeeded ??
                                                                              true)) {
                                                                            setState(() {
                                                                              _model.payments = functions.paymentJsonNullRemover((_model.newAccountPaymentResults?.jsonBody ?? '')).map((e) => PaymentStruct.maybeFromMap(e)).withoutNulls.toList().cast<PaymentStruct>();
                                                                            });
                                                                          } else {
                                                                            setState(() {
                                                                              _model.payments = [];
                                                                            });
                                                                          }
                                                                        }
                                                                        Navigator.pop(
                                                                            context);

                                                                        setState(
                                                                            () {});
                                                                      },
                                                                      onOPTChange:
                                                                          (value) async {},
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            16.0),
                                                                    child:
                                                                        Builder(
                                                                      builder:
                                                                          (context) {
                                                                        if ((FFAppState().selectedAccountForPayment !=
                                                                                null) &&
                                                                            FFAppState().selectedAccountForPayment.isAccountBlocked) {
                                                                          return Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            elevation:
                                                                                2.0,
                                                                            shape:
                                                                                RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            child:
                                                                                Container(
                                                                              width: MediaQuery.sizeOf(context).width * 1.0,
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              child: wrapWithModel(
                                                                                model: _model.paymentUnavailableModel,
                                                                                updateCallback: () => setState(() {}),
                                                                                child: const PaymentUnavailableWidget(),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        } else {
                                                                          return Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Text(
                                                                                      'Schedule One Time Payment',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Arial',
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        'AutoPay',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Arial',
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        'ON',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Arial',
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.bold,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                    ].divide(const SizedBox(width: 4.0)),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsets.all(16.0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Builder(
                                                                                      builder: (context) {
                                                                                        if ((_model.payments.isNotEmpty) && (_model.payments.where((e) => e.paymentFrequencyCode == 'M').toList().isNotEmpty)) {
                                                                                          return SizedBox(
                                                                                            height: 200.0,
                                                                                            child: wrapWithModel(
                                                                                              model: _model.autoPaymentModel,
                                                                                              updateCallback: () => setState(() {}),
                                                                                              child: const AutoPaymentWidget(),
                                                                                            ),
                                                                                          );
                                                                                        } else {
                                                                                          return Material(
                                                                                            color: Colors.transparent,
                                                                                            elevation: 2.0,
                                                                                            shape: RoundedRectangleBorder(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            child: Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                              child: wrapWithModel(
                                                                                                model: _model.paymentFormModel1,
                                                                                                updateCallback: () => setState(() {}),
                                                                                                child: const PaymentFormWidget(
                                                                                                  isAutoPayment: true,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                      },
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                      child: Text(
                                                                                        'Switch to Auto Pay',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Arial',
                                                                                              color: const Color(0xFF0000FF),
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(height: 16.0)),
                                                                                ),
                                                                              ),
                                                                              Builder(
                                                                                builder: (context) {
                                                                                  if ((_model.payments.isNotEmpty) && (_model.payments.where((e) => e.paymentFrequencyCode == 'O').toList().isNotEmpty)) {
                                                                                    return wrapWithModel(
                                                                                      model: _model.scheduledPaymentModel,
                                                                                      updateCallback: () => setState(() {}),
                                                                                      child: ScheduledPaymentWidget(
                                                                                        paymentMethod: (String profile, String account) {
                                                                                          return "$profile (....$account)";
                                                                                        }(_model.payments.where((e) => e.paymentFrequencyCode == 'O').toList().first.profileName, FFAppState().selectedAccountForPayment.bankProfiles.where((e) => e.profileNumber == _model.payments.where((e) => e.paymentFrequencyCode == 'O').toList().first.profileNo).toList().first.bankAccountNoLast4),
                                                                                        paymentDate: functions.dateFormatMMMMdyenUS(_model.payments.where((e) => e.paymentFrequencyCode == 'O').toList().first.startDate),
                                                                                        paymentAmount: formatNumber(
                                                                                          _model.payments.where((e) => e.paymentFrequencyCode == 'O').toList().first.amount,
                                                                                          formatType: FormatType.decimal,
                                                                                          decimalType: DecimalType.periodDecimal,
                                                                                          currency: '\$',
                                                                                        ),
                                                                                        onDelete: () async {},
                                                                                      ),
                                                                                    );
                                                                                  } else {
                                                                                    return wrapWithModel(
                                                                                      model: _model.paymentFormModel2,
                                                                                      updateCallback: () => setState(() {}),
                                                                                      child: const PaymentFormWidget(
                                                                                        isAutoPayment: true,
                                                                                      ),
                                                                                    );
                                                                                  }
                                                                                },
                                                                              ),
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Text(
                                                                                  'Switch to Auto Pay',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Arial',
                                                                                        color: const Color(0xFF0000FF),
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(height: 16.0)),
                                                                          );
                                                                        }
                                                                      },
                                                                    ),
                                                                  ),
                                                                ],
                                                              );
                                                            }
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ],
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
                                          Container(
                                            width: 274.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 8.0),
                                              child: Text(
                                                loggedIn
                                                    ? 'Last Login at ${FFAppState().LastLoginDate}'
                                                    : '',
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: wrapWithModel(
                                  model: _model.footerModel,
                                  updateCallback: () => setState(() {}),
                                  child: const FooterWidget(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        wrapWithModel(
                          model: _model.headerModel,
                          updateCallback: () => setState(() {}),
                          child: const HeaderWidget(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
