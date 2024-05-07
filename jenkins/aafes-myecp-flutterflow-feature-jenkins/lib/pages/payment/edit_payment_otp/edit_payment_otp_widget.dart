import '/backend/api_requests/api_calls.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_circular_indicator/common_circular_indicator_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/payment/components/confirm_o_t_p_alert_box/confirm_o_t_p_alert_box_widget.dart';
import '/pages/payment/components/custom_outlined_text_field_date_payments/custom_outlined_text_field_date_payments_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'edit_payment_otp_model.dart';
export 'edit_payment_otp_model.dart';

class EditPaymentOtpWidget extends StatefulWidget {
  const EditPaymentOtpWidget({super.key});

  @override
  State<EditPaymentOtpWidget> createState() => _EditPaymentOtpWidgetState();
}

class _EditPaymentOtpWidgetState extends State<EditPaymentOtpWidget> {
  late EditPaymentOtpModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditPaymentOtpModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.sessionTimerAction(
        context,
        true,
      );
      setState(() {
        _model.isLoading = true;
      });
      _model.apiResponseBanksAndBankProfiles =
          await PaymentsGroup.getBankAccountsAndBankProfilesByUserIDCall.call(
        dynamicBaseURL: FFAppState().dynamicBaseURL,
        userId: FFAppState().selectedUserId.toString(),
      );
      if ((_model.apiResponseBanksAndBankProfiles?.succeeded ?? true)) {
        // Save locally in page
        setState(() {
          _model.bankAccountsAndBankProfileJSON =
              (_model.apiResponseBanksAndBankProfiles?.jsonBody ?? '')
                  .toList()
                  .cast<dynamic>();
        });
        // 1st time we assign, primary
        setState(() {
          FFAppState().selectedPaymentAccount =
              functions.getPrimaryPaymentAccount(
                  (_model.apiResponseBanksAndBankProfiles?.jsonBody ?? ''));
        });
        _model.apiResponseAccountSummary =
            await PaymentsGroup.accountSummaryByAccountNumberCall.call(
          userId: FFAppState().selectedUserId.toString(),
          accountNo: getJsonField(
            FFAppState().selectedPaymentAccount,
            r'''$["AccountNumber"]''',
          ).toString().toString(),
          dynamicBaseURL: FFAppState().dynamicBaseURL,
        );
        if ((_model.apiResponseAccountSummary?.succeeded ?? true)) {
          setState(() {
            FFAppState().selectedPaymentSummary =
                (_model.apiResponseAccountSummary?.jsonBody ?? '');
          });
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Some error occured',
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
              duration: const Duration(milliseconds: 4000),
              backgroundColor: FlutterFlowTheme.of(context).secondary,
            ),
          );
        }
      } else {
        // Some error occured snack
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Some error occured',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
            duration: const Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).secondary,
          ),
        );
      }

      setState(() {
        _model.isLoading = false;
      });
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
        title: 'edit_payment_otp',
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
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 70.0, 0.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: FFAppConstants.maxScreenWidth,
                                  constraints: BoxConstraints(
                                    minHeight:
                                        FFAppState().screenBodyHeightDesktop,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  alignment: const AlignmentDirectional(0.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 2.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              decoration: const BoxDecoration(
                                                color: Color(0xFF0F2654),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(0.0),
                                                  topLeft: Radius.circular(8.0),
                                                  topRight:
                                                      Radius.circular(8.0),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Icon(
                                                        Icons
                                                            .arrow_circle_left_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .white,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Text(
                                                        'One Time Payment',
                                                        style:
                                                            FlutterFlowTheme.of(
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
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  1.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              child: Builder(
                                                builder: (context) {
                                                  if (_model.isLoading ==
                                                      true) {
                                                    return Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          1.0,
                                                      decoration: BoxDecoration(
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
                                                                  .isLoading ==
                                                              true) {
                                                            return wrapWithModel(
                                                              model: _model
                                                                  .commonCircularIndicatorModel,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  const CommonCircularIndicatorWidget(),
                                                            );
                                                          } else {
                                                            return Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Error loading data... Please try again',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
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
                                                                FFButtonWidget(
                                                                  onPressed:
                                                                      () {
                                                                    print(
                                                                        'Button pressed ...');
                                                                  },
                                                                  text:
                                                                      'Reload',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    height:
                                                                        40.0,
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Arial',
                                                                          color:
                                                                              Colors.white,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                    elevation:
                                                                        3.0,
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  height: 8.0)),
                                                            );
                                                          }
                                                        },
                                                      ),
                                                    );
                                                  } else {
                                                    return SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                    16.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          20.0,
                                                                          10.0,
                                                                          20.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                        'Schedule One Time Payment',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Arial',
                                                                              fontSize: 16.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.bold,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                      RichText(
                                                                        textScaler:
                                                                            MediaQuery.of(context).textScaler,
                                                                        text:
                                                                            TextSpan(
                                                                          children: [
                                                                            TextSpan(
                                                                              text: 'AutoPay ',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Arial',
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.normal,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                            ),
                                                                            const TextSpan(
                                                                              text: 'OFF',
                                                                              style: TextStyle(
                                                                                fontWeight: FontWeight.bold,
                                                                                fontSize: 16.0,
                                                                              ),
                                                                            )
                                                                          ],
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Arial',
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  elevation:
                                                                      2.0,
                                                                  shape:
                                                                      const RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              8.0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              8.0),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              0.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              0.0),
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        1.0,
                                                                    height:
                                                                        MediaQuery.sizeOf(context).height *
                                                                            1.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      borderRadius:
                                                                          const BorderRadius
                                                                              .only(
                                                                        bottomLeft:
                                                                            Radius.circular(8.0),
                                                                        bottomRight:
                                                                            Radius.circular(8.0),
                                                                        topLeft:
                                                                            Radius.circular(0.0),
                                                                        topRight:
                                                                            Radius.circular(0.0),
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                          decoration:
                                                                              const BoxDecoration(
                                                                            color:
                                                                                Color(0xFF0F2654),
                                                                            borderRadius:
                                                                                BorderRadius.only(
                                                                              bottomLeft: Radius.circular(0.0),
                                                                              bottomRight: Radius.circular(0.0),
                                                                              topLeft: Radius.circular(8.0),
                                                                              topRight: Radius.circular(8.0),
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
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                  child: Text(
                                                                                    'Payment Method',
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
                                                                          height:
                                                                              2.5,
                                                                          thickness:
                                                                              3.0,
                                                                          color:
                                                                              Color(0xFF801B0E),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              20.0,
                                                                              10.0,
                                                                              20.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              FlutterFlowRadioButton(
                                                                                options: [
                                                                                  'Test'
                                                                                ].toList(),
                                                                                onChanged: (val) async {
                                                                                  setState(() {});
                                                                                  setState(() {
                                                                                    _model.selectedBankProfile = functions.selectBankProfile(
                                                                                        getJsonField(
                                                                                          FFAppState().selectedPaymentAccount,
                                                                                          r'''$["BankProfiles"]''',
                                                                                          true,
                                                                                        )!,
                                                                                        functions.extractLast4DigitsOfAccount(_model.radioPaymentMethodDValue!));
                                                                                  });
                                                                                },
                                                                                controller: _model.radioPaymentMethodDValueController ??= FormFieldController<String>(null),
                                                                                optionHeight: 36.0,
                                                                                textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                      fontFamily: 'Arial',
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                                selectedTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Arial',
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                                buttonPosition: RadioButtonPosition.left,
                                                                                direction: Axis.vertical,
                                                                                radioButtonColor: FlutterFlowTheme.of(context).primary,
                                                                                inactiveRadioButtonColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                toggleable: false,
                                                                                horizontalAlignment: WrapAlignment.start,
                                                                                verticalAlignment: WrapCrossAlignment.start,
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    context.pushNamed(
                                                                                      'ManageUserPage',
                                                                                      queryParameters: {
                                                                                        'accountNumber': serializeParam(
                                                                                          FFAppState().accountNumber,
                                                                                          ParamType.String,
                                                                                        ),
                                                                                        'isPrimaryUser': serializeParam(
                                                                                          false,
                                                                                          ParamType.bool,
                                                                                        ),
                                                                                        'cardNumber': serializeParam(
                                                                                          '2',
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
                                                                                  child: RichText(
                                                                                    textScaler: MediaQuery.of(context).textScaler,
                                                                                    text: TextSpan(
                                                                                      children: [
                                                                                        TextSpan(
                                                                                          text: 'Manage Bank Accounts',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Arial',
                                                                                                color: const Color(0xFF0000FF),
                                                                                                fontSize: 16.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.normal,
                                                                                                useGoogleFonts: false,
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
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          decoration:
                                                                              const BoxDecoration(
                                                                            color:
                                                                                Color(0xFF0F2654),
                                                                            borderRadius:
                                                                                BorderRadius.only(
                                                                              bottomLeft: Radius.circular(0.0),
                                                                              bottomRight: Radius.circular(0.0),
                                                                              topLeft: Radius.circular(0.0),
                                                                              topRight: Radius.circular(0.0),
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
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                  child: Text(
                                                                                    'Payment Date',
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
                                                                          height:
                                                                              2.5,
                                                                          thickness:
                                                                              3.0,
                                                                          color:
                                                                              Color(0xFF801B0E),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              double.infinity,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                20.0,
                                                                                10.0,
                                                                                20.0),
                                                                            child:
                                                                                Wrap(
                                                                              spacing: 0.0,
                                                                              runSpacing: 0.0,
                                                                              alignment: WrapAlignment.spaceBetween,
                                                                              crossAxisAlignment: WrapCrossAlignment.center,
                                                                              direction: Axis.horizontal,
                                                                              runAlignment: WrapAlignment.spaceBetween,
                                                                              verticalDirection: VerticalDirection.down,
                                                                              clipBehavior: Clip.none,
                                                                              children: [
                                                                                Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  ),
                                                                                  child: wrapWithModel(
                                                                                    model: _model.customOutlinedTextFieldDatePaymentsModel,
                                                                                    updateCallback: () => setState(() {}),
                                                                                    child: CustomOutlinedTextFieldDatePaymentsWidget(
                                                                                      enabled: true,
                                                                                      title: '   ',
                                                                                      icon: Icon(
                                                                                        Icons.calendar_today,
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        size: 22.0,
                                                                                      ),
                                                                                      hasIconAction: true,
                                                                                      isRequired: true,
                                                                                      infoMessage: 'The date you enter, should\nbe valid.',
                                                                                      errorMessage: _model.errorDOB,
                                                                                      hasError: _model.hasErrorDOB,
                                                                                      calendarHasFocus: _model.calendarHasFocus,
                                                                                      isShowInfoIcon: false,
                                                                                      onIconTap: () async {
                                                                                        setState(() {
                                                                                          _model.errorDOB = ' ';
                                                                                          _model.hasErrorDOB = false;
                                                                                        });
                                                                                      },
                                                                                      validate: () async {
                                                                                        if (functions.dateValidatorPayments(_model.customOutlinedTextFieldDatePaymentsModel.value!)) {
                                                                                          setState(() {
                                                                                            _model.errorText = null;
                                                                                            _model.hasErrorDOB = false;
                                                                                          });
                                                                                        } else {
                                                                                          setState(() {
                                                                                            _model.errorDOB = 'Please enter a valid date';
                                                                                            _model.hasErrorDOB = true;
                                                                                            _model.calendarHasFocus = true;
                                                                                          });
                                                                                        }
                                                                                      },
                                                                                      resetError: () async {
                                                                                        setState(() {
                                                                                          _model.errorDOB = ' ';
                                                                                          _model.hasErrorDOB = false;
                                                                                        });
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  'Payment Due: ${valueOrDefault<String>(
                                                                                    getJsonField(
                                                                                      FFAppState().selectedPaymentSummary,
                                                                                      r'''$["PaymentDueDate"]''',
                                                                                    )?.toString(),
                                                                                    'PaymentDueDate',
                                                                                  )}',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Arial',
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          decoration:
                                                                              const BoxDecoration(
                                                                            color:
                                                                                Color(0xFF0F2654),
                                                                            borderRadius:
                                                                                BorderRadius.only(
                                                                              bottomLeft: Radius.circular(0.0),
                                                                              bottomRight: Radius.circular(0.0),
                                                                              topLeft: Radius.circular(0.0),
                                                                              topRight: Radius.circular(0.0),
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
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                  child: Text(
                                                                                    'Amount',
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
                                                                          height:
                                                                              2.5,
                                                                          thickness:
                                                                              3.0,
                                                                          color:
                                                                              Color(0xFF801B0E),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              20.0,
                                                                              10.0,
                                                                              20.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Text(
                                                                                  valueOrDefault<String>(
                                                                                    'Your Current Balance is \$${valueOrDefault<String>(
                                                                                      getJsonField(
                                                                                        FFAppState().selectedPaymentSummary,
                                                                                        r'''$["CurrentBalance"]''',
                                                                                      )?.toString(),
                                                                                      'CurrentBalance',
                                                                                    )}',
                                                                                    'CurrentBalance',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Arial',
                                                                                        fontSize: 20.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              20.0,
                                                                              10.0,
                                                                              20.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              FlutterFlowRadioButton(
                                                                                options: [
                                                                                  'Minimum Payment Due'
                                                                                ].toList(),
                                                                                onChanged: (val) async {
                                                                                  setState(() {});
                                                                                  setState(() {
                                                                                    _model.selectedOtherPaymentAmount = '0';
                                                                                    _model.selectedPaymentOption = 'M';
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.radioLastStateBalDValueController?.reset();
                                                                                    _model.radioOtherAmountDValueController?.reset();
                                                                                  });
                                                                                },
                                                                                controller: _model.radioMinPayDueDValueController ??= FormFieldController<String>(false.toString()),
                                                                                optionHeight: 32.0,
                                                                                textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                      fontFamily: 'Arial',
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                                selectedTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Arial',
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                                buttonPosition: RadioButtonPosition.left,
                                                                                direction: Axis.vertical,
                                                                                radioButtonColor: FlutterFlowTheme.of(context).primary,
                                                                                inactiveRadioButtonColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                toggleable: true,
                                                                                horizontalAlignment: WrapAlignment.start,
                                                                                verticalAlignment: WrapCrossAlignment.start,
                                                                              ),
                                                                              RichText(
                                                                                textScaler: MediaQuery.of(context).textScaler,
                                                                                text: TextSpan(
                                                                                  children: [
                                                                                    TextSpan(
                                                                                      text: '\$',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Arial',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            fontSize: 16.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                    ),
                                                                                    TextSpan(
                                                                                      text: valueOrDefault<String>(
                                                                                        getJsonField(
                                                                                          FFAppState().selectedPaymentSummary,
                                                                                          r'''$["MinimumPaymentDue"]''',
                                                                                        )?.toString(),
                                                                                        'MinimumPaymentDue',
                                                                                      ),
                                                                                      style: const TextStyle(),
                                                                                    )
                                                                                  ],
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Arial',
                                                                                        fontSize: 16.0,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              20.0,
                                                                              10.0,
                                                                              20.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              FlutterFlowRadioButton(
                                                                                options: [
                                                                                  'Last Statement Balance'
                                                                                ].toList(),
                                                                                onChanged: (val) async {
                                                                                  setState(() {});
                                                                                  setState(() {
                                                                                    _model.selectedOtherPaymentAmount = '0';
                                                                                    _model.selectedPaymentOption = 'B';
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.radioMinPayDueDValueController?.reset();
                                                                                    _model.radioOtherAmountDValueController?.reset();
                                                                                  });
                                                                                },
                                                                                controller: _model.radioLastStateBalDValueController ??= FormFieldController<String>(false.toString()),
                                                                                optionHeight: 32.0,
                                                                                textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                      fontFamily: 'Arial',
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                                selectedTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Arial',
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                                buttonPosition: RadioButtonPosition.left,
                                                                                direction: Axis.vertical,
                                                                                radioButtonColor: FlutterFlowTheme.of(context).primary,
                                                                                inactiveRadioButtonColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                toggleable: true,
                                                                                horizontalAlignment: WrapAlignment.start,
                                                                                verticalAlignment: WrapCrossAlignment.start,
                                                                              ),
                                                                              RichText(
                                                                                textScaler: MediaQuery.of(context).textScaler,
                                                                                text: TextSpan(
                                                                                  children: [
                                                                                    TextSpan(
                                                                                      text: '\$',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Arial',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            fontSize: 16.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                    ),
                                                                                    TextSpan(
                                                                                      text: getJsonField(
                                                                                        FFAppState().selectedPaymentSummary,
                                                                                        r'''$["LastStatementBalance"]''',
                                                                                      ).toString(),
                                                                                      style: const TextStyle(),
                                                                                    )
                                                                                  ],
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Arial',
                                                                                        fontSize: 16.0,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              20.0,
                                                                              10.0,
                                                                              20.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              FlutterFlowRadioButton(
                                                                                options: [
                                                                                  'Other Amount'
                                                                                ].toList(),
                                                                                onChanged: (val) async {
                                                                                  setState(() {});
                                                                                  setState(() {
                                                                                    _model.selectedOtherPaymentAmount = '0';
                                                                                    _model.selectedPaymentOption = 'O';
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.radioMinPayDueDValueController?.reset();
                                                                                    _model.radioLastStateBalDValueController?.reset();
                                                                                  });
                                                                                },
                                                                                controller: _model.radioOtherAmountDValueController ??= FormFieldController<String>(false.toString()),
                                                                                optionHeight: 32.0,
                                                                                textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                      fontFamily: 'Arial',
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                                selectedTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Arial',
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                                buttonPosition: RadioButtonPosition.left,
                                                                                direction: Axis.vertical,
                                                                                radioButtonColor: FlutterFlowTheme.of(context).primary,
                                                                                inactiveRadioButtonColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                toggleable: false,
                                                                                horizontalAlignment: WrapAlignment.start,
                                                                                verticalAlignment: WrapCrossAlignment.start,
                                                                              ),
                                                                              SizedBox(
                                                                                width: 100.0,
                                                                                height: 56.0,
                                                                                child: custom_widgets.AmountWidgetWithDisability(
                                                                                  width: 100.0,
                                                                                  height: 56.0,
                                                                                  hasError: false,
                                                                                  isLeftAlign: false,
                                                                                  value: '2345',
                                                                                  isLoading: false,
                                                                                  isDisabled: _model.selectedPaymentOption != 'O',
                                                                                  onChange: (value) async {
                                                                                    setState(() {
                                                                                      _model.otherPaymentAmount = value;
                                                                                    });
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children:
                                                                              [
                                                                            wrapWithModel(
                                                                              model: _model.commonCancelButtonModel,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: CommonCancelButtonWidget(
                                                                                title: '     Cancel    ',
                                                                                onTap: () async {},
                                                                              ),
                                                                            ),
                                                                            Builder(
                                                                              builder: (context) => InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onLongPress: () async {
                                                                                  _model.apiResultUpdateResponse = await PaymentsGroup.updatePaymentCall.call(
                                                                                    userId: FFAppState().selectedUserId,
                                                                                    accountNo: getJsonField(
                                                                                      FFAppState().selectedPaymentAccount,
                                                                                      r'''$["AccountNumber"]''',
                                                                                    ),
                                                                                    paymentDate: _model.customOutlinedTextFieldDatePaymentsModel.value,
                                                                                    otherAmountValue: _model.otherPaymentAmount,
                                                                                    paymentOption: _model.selectedPaymentOption,
                                                                                    dynamicBaseURL: FFAppState().dynamicBaseURL,
                                                                                    paymentType: _model.currentPaymentType,
                                                                                  );
                                                                                  if ((_model.apiResultUpdateResponse?.succeeded ?? true)) {
                                                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                                                      SnackBar(
                                                                                        content: Text(
                                                                                          'Updated Payment',
                                                                                          style: TextStyle(
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                          ),
                                                                                        ),
                                                                                        duration: const Duration(milliseconds: 4000),
                                                                                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                      ),
                                                                                    );
                                                                                  } else {
                                                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                                                      SnackBar(
                                                                                        content: Text(
                                                                                          'Some error occured',
                                                                                          style: TextStyle(
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                          ),
                                                                                        ),
                                                                                        duration: const Duration(milliseconds: 4000),
                                                                                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                      ),
                                                                                    );
                                                                                  }

                                                                                  setState(() {});
                                                                                },
                                                                                child: wrapWithModel(
                                                                                  model: _model.commonCustomButtonModel,
                                                                                  updateCallback: () => setState(() {}),
                                                                                  child: CommonCustomButtonWidget(
                                                                                    titile: 'Update Payment',
                                                                                    isDisabled: _model.currentPaymentDate == '',
                                                                                    isEditIconVisible: false,
                                                                                    onTap: () async {
                                                                                      await showDialog(
                                                                                        context: context,
                                                                                        builder: (dialogContext) {
                                                                                          return Dialog(
                                                                                            elevation: 0,
                                                                                            insetPadding: EdgeInsets.zero,
                                                                                            backgroundColor: Colors.transparent,
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                            child: WebViewAware(
                                                                                              child: GestureDetector(
                                                                                                onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                child: SizedBox(
                                                                                                  height: MediaQuery.sizeOf(context).height * 0.45,
                                                                                                  width: MediaQuery.sizeOf(context).width * 0.3,
                                                                                                  child: ConfirmOTPAlertBoxWidget(
                                                                                                    paymentMethod: '${getJsonField(
                                                                                                      _model.selectedBankProfile,
                                                                                                      r'''$["ProfileName"]''',
                                                                                                    ).toString()} (XXXXXX${getJsonField(
                                                                                                      _model.selectedBankProfile,
                                                                                                      r'''$["BankAccountNoLast4"]''',
                                                                                                    ).toString()})',
                                                                                                    paymentDate: _model.customOutlinedTextFieldDatePaymentsModel.value!,
                                                                                                    paymentAmount: _model.otherPaymentAmount,
                                                                                                    profileNo: _model.currentProfileNo,
                                                                                                    otherAmountValue: _model.otherPaymentAmount,
                                                                                                    accountNo: getJsonField(
                                                                                                      _model.selectedBankProfile,
                                                                                                      r'''$["AccountNumber"]''',
                                                                                                    ).toString(),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                      ).then((value) => setState(() {}));

                                                                                      _model.apiResponseAddPayment = await PaymentsGroup.updatePaymentCall.call(
                                                                                        userId: FFAppState().selectedUserId,
                                                                                        accountNo: getJsonField(
                                                                                          FFAppState().selectedPaymentAccount,
                                                                                          r'''$["AccountNumber"]''',
                                                                                        ),
                                                                                        otherAmountValue: _model.selectedOtherPaymentAmount,
                                                                                        paymentOption: 'O',
                                                                                        paymentDate: _model.customOutlinedTextFieldDatePaymentsModel.value,
                                                                                        dynamicBaseURL: FFAppState().dynamicBaseURL,
                                                                                        paymentType: 'OneTime',
                                                                                      );
                                                                                      if ((_model.apiResponseAddPayment?.succeeded ?? true)) {
                                                                                        context.pushNamed(
                                                                                          'payment_upcoming',
                                                                                          queryParameters: {
                                                                                            'apiResposeAddPayments': serializeParam(
                                                                                              (_model.apiResponseAddPayment?.jsonBody ?? ''),
                                                                                              ParamType.JSON,
                                                                                            ),
                                                                                          }.withoutNulls,
                                                                                        );
                                                                                      } else {
                                                                                        ScaffoldMessenger.of(context).showSnackBar(
                                                                                          SnackBar(
                                                                                            content: Text(
                                                                                              'Some error occured',
                                                                                              style: TextStyle(
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                              ),
                                                                                            ),
                                                                                            duration: const Duration(milliseconds: 4000),
                                                                                            backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                          ),
                                                                                        );
                                                                                      }

                                                                                      setState(() {});
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ].divide(const SizedBox(width: 20.0)),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              20.0,
                                                                              0.0,
                                                                              20.0),
                                                                          child:
                                                                              RichText(
                                                                            textScaler:
                                                                                MediaQuery.of(context).textScaler,
                                                                            text:
                                                                                TextSpan(
                                                                              children: [
                                                                                TextSpan(
                                                                                  text: 'Switch to Auto Pay',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Arial',
                                                                                        color: const Color(0xFF0000FF),
                                                                                        fontSize: 16.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.normal,
                                                                                        useGoogleFonts: false,
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
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  }
                                                },
                                              ),
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width *
                                              0.05,
                                          0.0,
                                        ),
                                        0.0,
                                        valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width *
                                              0.05,
                                          0.0,
                                        ),
                                        0.0),
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
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
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
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                constraints: BoxConstraints(
                                  minHeight:
                                      FFAppState().screenBodyHeightMobile,
                                ),
                                decoration: const BoxDecoration(),
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 16.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 3.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color:
                                            FlutterFlowTheme.of(context).white,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
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
                  if (false)
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
