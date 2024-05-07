import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/pages/apply_now/customised_fields/custom_date_selector_apply/custom_date_selector_apply_widget.dart';
import '/pages/apply_now/customised_fields/custom_radio_button/custom_radio_button_widget.dart';
import '/pages/login/custom_state_selector/custom_state_selector_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_captchax/custom_outlined_text_field_captchax_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_d_o_b/custom_outlined_text_field_d_o_b_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_general/custom_outlined_text_field_general_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_phone/custom_outlined_text_field_phone_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_s_s_n/custom_outlined_text_field_s_s_n_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'apply_now_page_model.dart';
export 'apply_now_page_model.dart';

class ApplyNowPageWidget extends StatefulWidget {
  const ApplyNowPageWidget({super.key});

  @override
  State<ApplyNowPageWidget> createState() => _ApplyNowPageWidgetState();
}

class _ApplyNowPageWidgetState extends State<ApplyNowPageWidget> {
  late ApplyNowPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ApplyNowPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.captchaValue = '';
      await Future.wait([
        Future(() async {
          await _model.actionStateAPI(context);
        }),
        Future(() async {
          await _model.actionAPI(context);
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
        title: 'MyECP : Application Information',
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
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
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
                                                                          'Please enter your Personal Information',
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
                                                                        24.0,
                                                                        16.0,
                                                                        24.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    if (_model
                                                                        .hasErrorAPI)
                                                                      wrapWithModel(
                                                                        model: _model
                                                                            .errorBannerOutlinedModel1,
                                                                        updateCallback:
                                                                            () =>
                                                                                setState(() {}),
                                                                        child:
                                                                            ErrorBannerOutlinedWidget(
                                                                          message:
                                                                              _model.errorAPI,
                                                                        ),
                                                                      ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children:
                                                                          [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/millls_card_flat.png',
                                                                            width:
                                                                                267.0,
                                                                            height:
                                                                                168.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Container(
                                                                                width: double.infinity,
                                                                                decoration: const BoxDecoration(),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                  child: RichText(
                                                                                    textScaler: MediaQuery.of(context).textScaler,
                                                                                    text: TextSpan(
                                                                                      children: [
                                                                                        TextSpan(
                                                                                          text: '* ',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Arial',
                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                fontSize: 12.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: false,
                                                                                              ),
                                                                                        ),
                                                                                        const TextSpan(
                                                                                          text: 'Required Fields',
                                                                                          style: TextStyle(
                                                                                            color: Colors.black,
                                                                                            fontWeight: FontWeight.bold,
                                                                                            fontSize: 12.0,
                                                                                          ),
                                                                                        )
                                                                                      ],
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Arial',
                                                                                            fontSize: 12.0,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                ),
                                                                                child: wrapWithModel(
                                                                                  model: _model.applyForRadioButtonDModel,
                                                                                  updateCallback: () => setState(() {}),
                                                                                  child: const CustomRadioButtonWidget(),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 16.0)),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        'Apply now! Get a decision in minutes!',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Arial',
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              fontSize: 24.0,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Text(
                                                                          'PERSONAL INFORMATION',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Arial',
                                                                                color: Colors.black,
                                                                                fontSize: 20.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.bold,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                        AlignedTooltip(
                                                                          content:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(4.0),
                                                                            child:
                                                                                Text(
                                                                              'Your first and last name must be your full legal name',
                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                    fontFamily: 'Arial',
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          offset:
                                                                              4.0,
                                                                          preferredDirection:
                                                                              AxisDirection.down,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          elevation:
                                                                              4.0,
                                                                          tailBaseWidth:
                                                                              24.0,
                                                                          tailLength:
                                                                              12.0,
                                                                          waitDuration:
                                                                              const Duration(milliseconds: 100),
                                                                          showDuration:
                                                                              const Duration(milliseconds: 100),
                                                                          triggerMode:
                                                                              TooltipTriggerMode.tap,
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            child:
                                                                                Image.asset(
                                                                              'assets/images/help_icon.png',
                                                                              width: 20.0,
                                                                              height: 20.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 4.0)),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.firstNameTextFieldDModel,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: CustomOutlinedTextFieldGeneralWidget(
                                                                                enabled: true,
                                                                                title: 'First Name',
                                                                                icon: const Icon(
                                                                                  Icons.ten_k,
                                                                                  color: Colors.transparent,
                                                                                ),
                                                                                hasIconAction: false,
                                                                                isRequired: true,
                                                                                infoMessage: '',
                                                                                errorMessage: _model.errorFirstName,
                                                                                hasError: _model.hasErrorFirstName,
                                                                                hintText: '',
                                                                                defaultFocus: false,
                                                                                onIconTap: () async {},
                                                                                validate: () async {},
                                                                                resetError: () async {},
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              20.0,
                                                                          height:
                                                                              20.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 16.0)),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.mITextFieldDModel,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: CustomOutlinedTextFieldGeneralWidget(
                                                                                enabled: true,
                                                                                title: 'MI',
                                                                                icon: const Icon(
                                                                                  Icons.ten_k,
                                                                                  color: Colors.transparent,
                                                                                ),
                                                                                hasIconAction: false,
                                                                                isRequired: false,
                                                                                infoMessage: '',
                                                                                hasError: false,
                                                                                hintText: '',
                                                                                defaultFocus: false,
                                                                                onIconTap: () async {},
                                                                                validate: () async {},
                                                                                resetError: () async {},
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              20.0,
                                                                          height:
                                                                              20.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 16.0)),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.lastNameTextFieldDModel,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: CustomOutlinedTextFieldGeneralWidget(
                                                                                enabled: true,
                                                                                title: 'Last Name',
                                                                                icon: const Icon(
                                                                                  Icons.ten_k,
                                                                                  color: Colors.transparent,
                                                                                ),
                                                                                hasIconAction: false,
                                                                                isRequired: true,
                                                                                infoMessage: '',
                                                                                errorMessage: _model.errorLastName,
                                                                                hasError: _model.hasErrorLastName,
                                                                                hintText: '',
                                                                                defaultFocus: false,
                                                                                onIconTap: () async {},
                                                                                validate: () async {},
                                                                                resetError: () async {},
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              20.0,
                                                                          height:
                                                                              20.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 16.0)),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.suffixTextFieldDModel,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: CustomOutlinedTextFieldGeneralWidget(
                                                                                enabled: true,
                                                                                title: 'Suffix',
                                                                                icon: const Icon(
                                                                                  Icons.ten_k,
                                                                                  color: Colors.transparent,
                                                                                ),
                                                                                hasIconAction: false,
                                                                                isRequired: false,
                                                                                infoMessage: '',
                                                                                hasError: false,
                                                                                hintText: '',
                                                                                defaultFocus: false,
                                                                                onIconTap: () async {},
                                                                                validate: () async {},
                                                                                resetError: () async {},
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              20.0,
                                                                          height:
                                                                              20.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 16.0)),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.sSNTextFieldDModel,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: CustomOutlinedTextFieldSSNWidget(
                                                                                enabled: true,
                                                                                title: 'Social Security Number',
                                                                                icon: const Icon(
                                                                                  Icons.ten_k,
                                                                                  color: Colors.transparent,
                                                                                ),
                                                                                hasIconAction: false,
                                                                                isRequired: true,
                                                                                infoMessage: '',
                                                                                errorMessage: _model.errorSSN,
                                                                                hasError: _model.hasErrorSSN,
                                                                                hint: 'XXX-XX-XXXX',
                                                                                onIconTap: () async {},
                                                                                validate: () async {
                                                                                  if (!(((_model.sSNTextFieldDModel.ssnValue!).length ?? 0) == 9)) {
                                                                                    setState(() {
                                                                                      _model.errorSSN = 'Valid Social Security Number is required';
                                                                                      _model.hasErrorSSN = true;
                                                                                    });
                                                                                  }
                                                                                },
                                                                                resetError: () async {
                                                                                  setState(() {
                                                                                    _model.errorSSN = ' ';
                                                                                    _model.hasErrorSSN = false;
                                                                                  });
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              20.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              AlignedTooltip(
                                                                            content:
                                                                                Padding(
                                                                              padding: const EdgeInsets.all(4.0),
                                                                              child: Text(
                                                                                'The Social Security Number\nyou enter must match our\nrecords.',
                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                      fontFamily: 'Arial',
                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            offset:
                                                                                4.0,
                                                                            preferredDirection:
                                                                                AxisDirection.down,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            elevation:
                                                                                4.0,
                                                                            tailBaseWidth:
                                                                                24.0,
                                                                            tailLength:
                                                                                12.0,
                                                                            waitDuration:
                                                                                const Duration(milliseconds: 100),
                                                                            showDuration:
                                                                                const Duration(milliseconds: 100),
                                                                            triggerMode:
                                                                                TooltipTriggerMode.tap,
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: Image.asset(
                                                                                'assets/images/help_icon.png',
                                                                                width: 20.0,
                                                                                height: 20.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 16.0)),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.dOBTextFieldDModel,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: CustomOutlinedTextFieldDOBWidget(
                                                                                enabled: true,
                                                                                title: 'Date of Birth',
                                                                                icon: const Icon(
                                                                                  Icons.ten_k,
                                                                                  color: Colors.transparent,
                                                                                ),
                                                                                hasIconAction: false,
                                                                                isRequired: true,
                                                                                infoMessage: '',
                                                                                errorMessage: _model.errorDOB,
                                                                                hasError: _model.hasErrorDOB,
                                                                                onIconTap: () async {},
                                                                                validate: () async {
                                                                                  if (!functions.dateValidator(_model.dOBTextFieldDModel.value!)) {
                                                                                    setState(() {
                                                                                      _model.errorDOB = 'Please enter valid Date';
                                                                                      _model.hasErrorDOB = true;
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
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              20.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              AlignedTooltip(
                                                                            content:
                                                                                Padding(
                                                                              padding: const EdgeInsets.all(4.0),
                                                                              child: Text(
                                                                                'The date of birth you enter\nmust match our records.',
                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                      fontFamily: 'Arial',
                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            offset:
                                                                                4.0,
                                                                            preferredDirection:
                                                                                AxisDirection.down,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            elevation:
                                                                                4.0,
                                                                            tailBaseWidth:
                                                                                24.0,
                                                                            tailLength:
                                                                                12.0,
                                                                            waitDuration:
                                                                                const Duration(milliseconds: 100),
                                                                            showDuration:
                                                                                const Duration(milliseconds: 100),
                                                                            triggerMode:
                                                                                TooltipTriggerMode.tap,
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: Image.asset(
                                                                                'assets/images/help_icon.png',
                                                                                width: 20.0,
                                                                                height: 20.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 16.0)),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              20.0,
                                                                          height:
                                                                              20.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      height:
                                                                          16.0)),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Current Address',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Arial',
                                                                            color:
                                                                                Colors.black,
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
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.address1TextFieldDModel,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: CustomOutlinedTextFieldGeneralWidget(
                                                                                enabled: true,
                                                                                title: 'Address Line 1',
                                                                                icon: const Icon(
                                                                                  Icons.ten_k,
                                                                                  color: Colors.transparent,
                                                                                ),
                                                                                hasIconAction: false,
                                                                                isRequired: true,
                                                                                infoMessage: '',
                                                                                errorMessage: _model.errorAddress1,
                                                                                hasError: _model.hasErrorAddress1,
                                                                                hintText: '',
                                                                                defaultFocus: false,
                                                                                onIconTap: () async {},
                                                                                validate: () async {},
                                                                                resetError: () async {},
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              20.0,
                                                                          height:
                                                                              20.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 16.0)),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.address2TextFieldDModel,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: CustomOutlinedTextFieldGeneralWidget(
                                                                                enabled: true,
                                                                                title: 'Address Line 2',
                                                                                icon: const Icon(
                                                                                  Icons.ten_k,
                                                                                  color: Colors.transparent,
                                                                                ),
                                                                                hasIconAction: false,
                                                                                isRequired: false,
                                                                                infoMessage: '',
                                                                                errorMessage: _model.errorAddress2,
                                                                                hasError: _model.hasErrorAddress2,
                                                                                hintText: '',
                                                                                defaultFocus: false,
                                                                                onIconTap: () async {},
                                                                                validate: () async {},
                                                                                resetError: () async {},
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              20.0,
                                                                          height:
                                                                              20.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 16.0)),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.cityTextFieldDModel,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: CustomOutlinedTextFieldGeneralWidget(
                                                                                enabled: true,
                                                                                title: 'City',
                                                                                icon: const Icon(
                                                                                  Icons.ten_k,
                                                                                  color: Colors.transparent,
                                                                                ),
                                                                                hasIconAction: false,
                                                                                isRequired: true,
                                                                                infoMessage: '',
                                                                                errorMessage: _model.errorCity,
                                                                                hasError: _model.hasErrorCity,
                                                                                hintText: '',
                                                                                defaultFocus: false,
                                                                                onIconTap: () async {},
                                                                                validate: () async {},
                                                                                resetError: () async {},
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              20.0,
                                                                          height:
                                                                              20.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 16.0)),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.customStateSelectorModel,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: CustomStateSelectorWidget(
                                                                                title: 'State',
                                                                                enable: true,
                                                                                states: _model.states,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              20.0,
                                                                          height:
                                                                              20.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 16.0)),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.zipTextFieldDModel,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: CustomOutlinedTextFieldGeneralWidget(
                                                                                enabled: true,
                                                                                title: 'Zip Code',
                                                                                icon: const Icon(
                                                                                  Icons.ten_k,
                                                                                  color: Colors.transparent,
                                                                                ),
                                                                                hasIconAction: false,
                                                                                isRequired: true,
                                                                                infoMessage: '',
                                                                                errorMessage: _model.errorZip,
                                                                                hasError: _model.hasErrorZip,
                                                                                hintText: '',
                                                                                defaultFocus: false,
                                                                                onIconTap: () async {},
                                                                                validate: () async {},
                                                                                resetError: () async {},
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              20.0,
                                                                          height:
                                                                              20.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 16.0)),
                                                                    ),
                                                                    Text(
                                                                      'Time at Present Address',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Arial',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).black,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.customDateSelectorPresentApplyModel,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: CustomDateSelectorApplyWidget(
                                                                                enabled: true,
                                                                                isRequired: false,
                                                                                hasError: false,
                                                                                validate: () async {},
                                                                                resetError: () async {},
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              20.0,
                                                                          height:
                                                                              20.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 16.0)),
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      height:
                                                                          16.0)),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'INCOME INFORMATION',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Arial',
                                                                            color:
                                                                                Colors.black,
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
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                RichText(
                                                                                  textScaler: MediaQuery.of(context).textScaler,
                                                                                  text: TextSpan(
                                                                                    children: [
                                                                                      TextSpan(
                                                                                        text: 'Total Monthly Income ',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Arial',
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.normal,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                      TextSpan(
                                                                                        text: '*',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Arial',
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      )
                                                                                    ],
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Arial',
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  decoration: const BoxDecoration(),
                                                                                  child: custom_widgets.AmountWidget(
                                                                                    width: double.infinity,
                                                                                    height: 55.0,
                                                                                    hasError: _model.hasErrorMonthlyIncome,
                                                                                    isLeftAlign: true,
                                                                                    value: _model.totalMonthlyIncome,
                                                                                    isLoading: false,
                                                                                    isThinBorder: true,
                                                                                    isPadding: true,
                                                                                    onChange: (value) async {
                                                                                      setState(() {
                                                                                        _model.totalMonthlyIncome = value;
                                                                                      });
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  '(Enter Whole Dollars Only)',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Arial',
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                ),
                                                                              ].divide(const SizedBox(height: 4.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              10.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              AlignedTooltip(
                                                                            content:
                                                                                Padding(
                                                                              padding: const EdgeInsets.all(4.0),
                                                                              child: Text(
                                                                                'This is a combination of your\nmonthly salary before any\ndeductions and any additional\nallowances. Examples may\ninclude income earned from\nsalaries, investments, rental\nproperties, Social Security\nbenefits, retirement accounts\nand allowances. Alimony, child\nsupport, or separate\nmaintenance income does not\nneed to be included.',
                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                      fontFamily: 'Arial',
                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            offset:
                                                                                4.0,
                                                                            preferredDirection:
                                                                                AxisDirection.down,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            elevation:
                                                                                4.0,
                                                                            tailBaseWidth:
                                                                                24.0,
                                                                            tailLength:
                                                                                12.0,
                                                                            waitDuration:
                                                                                const Duration(milliseconds: 100),
                                                                            showDuration:
                                                                                const Duration(milliseconds: 100),
                                                                            triggerMode:
                                                                                TooltipTriggerMode.tap,
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: Image.asset(
                                                                                'assets/images/help_icon.png',
                                                                                width: 20.0,
                                                                                height: 20.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 16.0)),
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      height:
                                                                          16.0)),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'EMPLOYMENT INFORMATION',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Arial',
                                                                            color:
                                                                                Colors.black,
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
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Flexible(
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.currentEmployerTextFieldDModel,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: CustomOutlinedTextFieldGeneralWidget(
                                                                                enabled: true,
                                                                                title: 'Current Employer',
                                                                                icon: const Icon(
                                                                                  Icons.ten_k,
                                                                                  color: Colors.transparent,
                                                                                ),
                                                                                hasIconAction: false,
                                                                                isRequired: false,
                                                                                infoMessage: '',
                                                                                hasError: false,
                                                                                hintText: '',
                                                                                defaultFocus: false,
                                                                                isUseFull: false,
                                                                                onIconTap: () async {},
                                                                                validate: () async {},
                                                                                resetError: () async {},
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              20.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              AlignedTooltip(
                                                                            content:
                                                                                Padding(
                                                                              padding: const EdgeInsets.all(4.0),
                                                                              child: Text(
                                                                                'Enter the name of your current\nemployer. If you’re retired:\nType the word ‘Retired-’\nfollowed by the name of your\nlast employer. If you are self-\nemployed: Type the word ‘Self-’\nfollowed by type of business.',
                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                      fontFamily: 'Arial',
                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            offset:
                                                                                4.0,
                                                                            preferredDirection:
                                                                                AxisDirection.down,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            elevation:
                                                                                4.0,
                                                                            tailBaseWidth:
                                                                                24.0,
                                                                            tailLength:
                                                                                12.0,
                                                                            waitDuration:
                                                                                const Duration(milliseconds: 100),
                                                                            showDuration:
                                                                                const Duration(milliseconds: 100),
                                                                            triggerMode:
                                                                                TooltipTriggerMode.tap,
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: Image.asset(
                                                                                'assets/images/help_icon.png',
                                                                                width: 20.0,
                                                                                height: 20.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 16.0)),
                                                                    ),
                                                                    Text(
                                                                      'Time with Current Employer',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Arial',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).black,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.customDateSelectorCurrentApplyModel,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: CustomDateSelectorApplyWidget(
                                                                                enabled: true,
                                                                                isRequired: false,
                                                                                hasError: false,
                                                                                validate: () async {},
                                                                                resetError: () async {},
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              20.0,
                                                                          height:
                                                                              20.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 16.0)),
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      height:
                                                                          16.0)),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'OTHER INFORMATION',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Arial',
                                                                            color:
                                                                                Colors.black,
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
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.mothersMaidenTextFieldDModel,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: CustomOutlinedTextFieldGeneralWidget(
                                                                                enabled: true,
                                                                                title: 'Mother’s Maiden',
                                                                                icon: const Icon(
                                                                                  Icons.ten_k,
                                                                                  color: Colors.transparent,
                                                                                ),
                                                                                hasIconAction: false,
                                                                                isRequired: false,
                                                                                infoMessage: '',
                                                                                hasError: false,
                                                                                hintText: '',
                                                                                defaultFocus: false,
                                                                                onIconTap: () async {},
                                                                                validate: () async {},
                                                                                resetError: () async {},
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              20.0,
                                                                          height:
                                                                              20.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 16.0)),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Expanded(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children:
                                                                                [
                                                                              Text(
                                                                                'Monthly Mortgage/Rent Payment',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Arial',
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                              ),
                                                                              Container(
                                                                                decoration: const BoxDecoration(),
                                                                                child: custom_widgets.AmountWidget(
                                                                                  width: double.infinity,
                                                                                  height: 55.0,
                                                                                  hasError: false,
                                                                                  isLeftAlign: true,
                                                                                  value: _model.monthlyMortgage,
                                                                                  isLoading: false,
                                                                                  isThinBorder: true,
                                                                                  isPadding: true,
                                                                                  onChange: (value) async {
                                                                                    setState(() {
                                                                                      _model.monthlyMortgage = value;
                                                                                    });
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(height: 4.0)),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              20.0,
                                                                          height:
                                                                              20.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 16.0)),
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      height:
                                                                          16.0)),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'CONTACT INFORMATION',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Arial',
                                                                            color:
                                                                                Colors.black,
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
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.emailAddressTextFieldDModel,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: CustomOutlinedTextFieldGeneralWidget(
                                                                                enabled: true,
                                                                                title: 'Email Address',
                                                                                icon: const Icon(
                                                                                  Icons.ten_k,
                                                                                  color: Colors.transparent,
                                                                                ),
                                                                                hasIconAction: false,
                                                                                isRequired: true,
                                                                                infoMessage: '',
                                                                                errorMessage: _model.errorEmail,
                                                                                hasError: _model.hasErrorEmail,
                                                                                hintText: '',
                                                                                defaultFocus: false,
                                                                                onIconTap: () async {},
                                                                                validate: () async {
                                                                                  if (!functions.isValidEmail(_model.emailAddressTextFieldDModel.value!)) {
                                                                                    setState(() {
                                                                                      _model.errorEmail = 'A valid Email Address is required';
                                                                                      _model.hasErrorEmail = true;
                                                                                    });
                                                                                  }
                                                                                },
                                                                                resetError: () async {
                                                                                  setState(() {
                                                                                    _model.errorEmail = ' ';
                                                                                    _model.hasErrorEmail = false;
                                                                                  });
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              20.0,
                                                                          height:
                                                                              20.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 16.0)),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children:
                                                                          [
                                                                        Theme(
                                                                          data:
                                                                              ThemeData(
                                                                            checkboxTheme:
                                                                                CheckboxThemeData(
                                                                              visualDensity: VisualDensity.compact,
                                                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(4.0),
                                                                              ),
                                                                            ),
                                                                            unselectedWidgetColor:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                          ),
                                                                          child:
                                                                              Checkbox(
                                                                            value: _model.informationCheckBoxDValue ??=
                                                                                false,
                                                                            onChanged:
                                                                                (newValue) async {
                                                                              setState(() => _model.informationCheckBoxDValue = newValue!);
                                                                            },
                                                                            side:
                                                                                BorderSide(
                                                                              width: 2,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                            ),
                                                                            activeColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            checkColor:
                                                                                FlutterFlowTheme.of(context).info,
                                                                          ),
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                4.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'I agree the Exchange Credit program may use the mailing and/or E-mail address I have provided to send me information about MILITARY STAR promotions, services, and financial information.',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Arial',
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 4.0)),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children:
                                                                          [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children:
                                                                              [
                                                                            Expanded(
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                child: wrapWithModel(
                                                                                  model: _model.mobileNumberTextFieldDModel,
                                                                                  updateCallback: () => setState(() {}),
                                                                                  child: CustomOutlinedTextFieldPhoneWidget(
                                                                                    enabled: true,
                                                                                    title: 'Mobile Phone',
                                                                                    icon: const Icon(
                                                                                      Icons.ten_k,
                                                                                      color: Colors.transparent,
                                                                                    ),
                                                                                    hasIconAction: false,
                                                                                    isRequired: true,
                                                                                    infoMessage: '',
                                                                                    errorMessage: _model.errorMobile,
                                                                                    hasError: _model.hasErrorMobile,
                                                                                    hint: '(___) - ___ - ____',
                                                                                    onIconTap: () async {},
                                                                                    validate: () async {},
                                                                                    resetError: () async {},
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width: 20.0,
                                                                              height: 20.0,
                                                                              decoration: const BoxDecoration(),
                                                                            ),
                                                                          ].divide(const SizedBox(width: 16.0)),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children:
                                                                              [
                                                                            Expanded(
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                child: Text(
                                                                                  'NOTE: Your primary phone number is required for URGENT notifications concerning your Exchange Credit Program account(s)',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Arial',
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width: 20.0,
                                                                              height: 20.0,
                                                                              decoration: const BoxDecoration(),
                                                                            ),
                                                                          ].divide(const SizedBox(width: 16.0)),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              height: 4.0)),
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      height:
                                                                          16.0)),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children:
                                                                          [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Text(
                                                                              '† Mobile Disclosure',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Arial',
                                                                                    color: Colors.black,
                                                                                    fontSize: 20.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.normal,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: Container(
                                                                                    decoration: const BoxDecoration(),
                                                                                    child: Text(
                                                                                      'If you give us your mobile number, we have your permission to contact you at that number about all your Exchange Credit Program accounts. Your consent allows us to use text messaging, artificial or prerecorded voice messages and automatic dialing technology for informational and account service calls, but not for telemarketing or sales calls. It may include contact from companies working on our behalf to service your accounts. Message and data rates may apply. ',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Arial',
                                                                                            color: FlutterFlowTheme.of(context).black,
                                                                                            fontSize: 12.0,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  width: 20.0,
                                                                                  height: 20.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                ),
                                                                              ].divide(const SizedBox(width: 16.0)),
                                                                            ),
                                                                          ].divide(const SizedBox(height: 1.0)),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Text(
                                                                              'Agreements and Disclosures ',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Arial',
                                                                                    color: Colors.black,
                                                                                    fontSize: 20.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.normal,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: Container(
                                                                                    decoration: const BoxDecoration(),
                                                                                    child: Text(
                                                                                      'By submitting this application, you certify that, to the best of your knowledge, the information you supplied in this application is true and correct, and you understand: (1) use of an account will be subject to the Exchange Credit Program Agreement, copies of which will be provided or sent upon approval; (2) the exchange may verify your employment and credit history through credit reporting agencies and any person, business entity, or governmental agency that can provide such information, at the time of application and later for account review and servicing purposes; and (3) the Exchange Credit Program may use information in this application for MILITARY STAR marketing purposes. If your MILITARY STAR Private Label Account becomes delinquent, you understand the Exchange Credit Program will pursue all remedies available to it under federal law to recover full payment of your MILITARY STAR Private Label Account. These remedies may result in the deduction or garnishment of funds from your military, retired, or civilian pay, as well as the offset of funds due under a federal tax return or other federal payment.',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Arial',
                                                                                            color: FlutterFlowTheme.of(context).black,
                                                                                            fontSize: 12.0,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  width: 20.0,
                                                                                  height: 20.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                ),
                                                                              ].divide(const SizedBox(width: 16.0)),
                                                                            ),
                                                                          ].divide(const SizedBox(height: 1.0)),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Text(
                                                                              'Agency Disclosure Notice',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Arial',
                                                                                    color: Colors.black,
                                                                                    fontSize: 20.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.normal,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: Container(
                                                                                    width: double.infinity,
                                                                                    height: 120.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    child: FlutterFlowWebView(
                                                                                      content: 'https://apigateway-dev-ccoox6j1.uc.gateway.dev/api/static-pages?pageName=card-apply-privacy',
                                                                                      bypass: false,
                                                                                      width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                      height: 100.0,
                                                                                      verticalScroll: false,
                                                                                      horizontalScroll: false,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  width: 20.0,
                                                                                  height: 20.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                ),
                                                                              ].divide(const SizedBox(width: 16.0)),
                                                                            ),
                                                                          ].divide(const SizedBox(height: 1.0)),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Text(
                                                                              'Exchange Credit Program Account Opening Disclosures',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Arial',
                                                                                    color: Colors.black,
                                                                                    fontSize: 20.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.normal,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Flexible(
                                                                                  child: Container(
                                                                                    width: double.infinity,
                                                                                    height: 120.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    child: FlutterFlowWebView(
                                                                                      content: 'https://apigateway-dev-ccoox6j1.uc.gateway.dev/api/static-pages?pageName=card-apply-tc',
                                                                                      bypass: false,
                                                                                      width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                      height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                      verticalScroll: false,
                                                                                      horizontalScroll: false,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  width: 20.0,
                                                                                  height: 20.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                ),
                                                                              ].divide(const SizedBox(width: 16.0)),
                                                                            ),
                                                                          ].divide(const SizedBox(height: 1.0)),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children:
                                                                              [
                                                                            Expanded(
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Theme(
                                                                                      data: ThemeData(
                                                                                        checkboxTheme: CheckboxThemeData(
                                                                                          visualDensity: VisualDensity.compact,
                                                                                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                          shape: RoundedRectangleBorder(
                                                                                            borderRadius: BorderRadius.circular(4.0),
                                                                                          ),
                                                                                        ),
                                                                                        unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                      ),
                                                                                      child: Checkbox(
                                                                                        value: _model.noticeCheckBoxDValue ??= false,
                                                                                        onChanged: (newValue) async {
                                                                                          setState(() => _model.noticeCheckBoxDValue = newValue!);
                                                                                        },
                                                                                        side: BorderSide(
                                                                                          width: 2,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        ),
                                                                                        activeColor: FlutterFlowTheme.of(context).primary,
                                                                                        checkColor: FlutterFlowTheme.of(context).info,
                                                                                      ),
                                                                                    ),
                                                                                    Flexible(
                                                                                      child: Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                        child: Text(
                                                                                          'I have read and agree to the above Account Opening disclosures, Terms and Conditions which contain rate, fee, cost, rewards information and other information if applicable.',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Arial',
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: false,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(width: 4.0)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width: 20.0,
                                                                              height: 20.0,
                                                                              decoration: const BoxDecoration(),
                                                                            ),
                                                                          ].divide(const SizedBox(width: 16.0)),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children:
                                                                              [
                                                                            Expanded(
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                child: wrapWithModel(
                                                                                  model: _model.captchaTextFieldDModel,
                                                                                  updateCallback: () => setState(() {}),
                                                                                  child: CustomOutlinedTextFieldCaptchaxWidget(
                                                                                    enabled: true,
                                                                                    hasIconAction: false,
                                                                                    hasError: _model.errorCaptcha,
                                                                                    icon: const Icon(
                                                                                      Icons.ten_k,
                                                                                      color: Colors.transparent,
                                                                                    ),
                                                                                    infoMessage: '',
                                                                                    use: 'apply',
                                                                                    captchaValue: _model.captchaValue,
                                                                                    onIconTap: () async {},
                                                                                    validate: () async {},
                                                                                    resetError: () async {
                                                                                      setState(() {
                                                                                        _model.errorCaptcha = false;
                                                                                      });
                                                                                    },
                                                                                    refreshCaptchaAction: () async {
                                                                                      await _model.actionAPI(context);
                                                                                      setState(() {});
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width: 20.0,
                                                                              height: 20.0,
                                                                              decoration: const BoxDecoration(),
                                                                            ),
                                                                          ].divide(const SizedBox(width: 16.0)),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                color: Colors.transparent,
                                                                                borderRadius: BorderRadius.circular(4.0),
                                                                                border: Border.all(
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  width: 1.0,
                                                                                ),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(4.0, 2.0, 4.0, 2.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  children: [
                                                                                    Theme(
                                                                                      data: ThemeData(
                                                                                        checkboxTheme: CheckboxThemeData(
                                                                                          visualDensity: VisualDensity.compact,
                                                                                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                          shape: RoundedRectangleBorder(
                                                                                            borderRadius: BorderRadius.circular(4.0),
                                                                                          ),
                                                                                        ),
                                                                                        unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                      ),
                                                                                      child: Checkbox(
                                                                                        value: _model.agreeCheckboxValue ??= false,
                                                                                        onChanged: (newValue) async {
                                                                                          setState(() => _model.agreeCheckboxValue = newValue!);
                                                                                        },
                                                                                        side: BorderSide(
                                                                                          width: 2,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        ),
                                                                                        activeColor: FlutterFlowTheme.of(context).primary,
                                                                                        checkColor: FlutterFlowTheme.of(context).info,
                                                                                      ),
                                                                                    ),
                                                                                    Text(
                                                                                      'I Agree',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Arial',
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(width: 4.0)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: Container(
                                                                                    decoration: const BoxDecoration(),
                                                                                    child: Text(
                                                                                      'You understand that by clicking on the I AGREE button immediately following this notice, you are providing ‘written instructions’ to Army and Air Force Exchange Services under the Fair Credit Reporting Act authorizing Army and Air Force Exchange Services to obtain information from your personal credit profile or other information from Experian. You authorize Army and Air Force Exchange Services to obtain such information solely to confirm your identity to avoid fraudulent transactions in your name.',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Arial',
                                                                                            color: FlutterFlowTheme.of(context).black,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  width: 20.0,
                                                                                  height: 20.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                ),
                                                                              ].divide(const SizedBox(width: 16.0)),
                                                                            ),
                                                                          ].divide(const SizedBox(height: 4.0)),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              height: 16.0)),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                              children: [
                                                                                wrapWithModel(
                                                                                  model: _model.commonCancelButtonModel1,
                                                                                  updateCallback: () => setState(() {}),
                                                                                  child: CommonCancelButtonWidget(
                                                                                    title: 'Cancel',
                                                                                    onTap: () async {
                                                                                      context.safePop();
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                                wrapWithModel(
                                                                                  model: _model.commonCustomButtonModel,
                                                                                  updateCallback: () => setState(() {}),
                                                                                  child: CommonCustomButtonWidget(
                                                                                    titile: 'Submit Application',
                                                                                    isDisabled: !((_model.firstNameTextFieldDModel.value != null && _model.firstNameTextFieldDModel.value != '') && (_model.lastNameTextFieldDModel.value != null && _model.lastNameTextFieldDModel.value != '') && (_model.sSNTextFieldDModel.ssnValue != null && _model.sSNTextFieldDModel.ssnValue != '') && !_model.hasErrorSSN && (_model.dOBTextFieldDModel.value != null && _model.dOBTextFieldDModel.value != '') && !_model.hasErrorDOB && (_model.address1TextFieldDModel.value != null && _model.address1TextFieldDModel.value != '') && (_model.cityTextFieldDModel.value != null && _model.cityTextFieldDModel.value != '') && (_model.customStateSelectorModel.stateDropDownValue != null) && (_model.zipTextFieldDModel.value != null && _model.zipTextFieldDModel.value != '') && (_model.emailAddressTextFieldDModel.value != null && _model.emailAddressTextFieldDModel.value != '') && !_model.hasErrorEmail && (_model.mobileNumberTextFieldDModel.value != null && _model.mobileNumberTextFieldDModel.value != '') && (_model.captchaTextFieldDModel.value != null && _model.captchaTextFieldDModel.value != '') && _model.informationCheckBoxDValue! && _model.noticeCheckBoxDValue! && _model.agreeCheckboxValue! && !_model.errorCaptcha && (_model.totalMonthlyIncome != '') && !_model.hasErrorMonthlyIncome),
                                                                                    isEditIconVisible: false,
                                                                                    onTap: () async {
                                                                                      var shouldSetState = false;
                                                                                      if (((_model.captchaTextFieldDModel.value!).length ?? 0) == 6) {
                                                                                        await action_blocks.showLoadingDialog(context);
                                                                                        _model.apiResultApply = await ApplyNowGroup.applyCall.call(
                                                                                          dynamicBaseURL: FFAppState().dynamicBaseURL,
                                                                                          cardApplyingFor: _model.applyForRadioButtonDModel.selectedOption == 0 ? 'military_star' : 'military_clothing',
                                                                                          firstName: _model.firstNameTextFieldDModel.value,
                                                                                          middleInitial: _model.mITextFieldDModel.value,
                                                                                          lastName: _model.lastNameTextFieldDModel.value,
                                                                                          suffix: _model.suffixTextFieldDModel.value,
                                                                                          dob: _model.dOBTextFieldDModel.value,
                                                                                          ssn: functions.toInt(_model.sSNTextFieldDModel.ssnValue!, 'ssn'),
                                                                                          address1: _model.address1TextFieldDModel.value,
                                                                                          address2: _model.address2TextFieldDModel.value,
                                                                                          city: _model.cityTextFieldDModel.value,
                                                                                          state: _model.customStateSelectorModel.stateDropDownValue?.toString(),
                                                                                          zipCode: functions.toInt(_model.zipTextFieldDModel.value!, 'zip'),
                                                                                          yearsAtAddress: _model.customDateSelectorPresentApplyModel.year != null && _model.customDateSelectorPresentApplyModel.year != '' ? functions.toInt(_model.customDateSelectorPresentApplyModel.year!, 'yearsAtAddress') : functions.toInt('null', 'null'),
                                                                                          monthsAtAddress: _model.customDateSelectorPresentApplyModel.month != null && _model.customDateSelectorPresentApplyModel.month != '' ? functions.toInt(_model.customDateSelectorPresentApplyModel.month!, 'monthsAtAddress') : functions.toInt('null', 'null'),
                                                                                          monthlyIncome: functions.toInt(_model.totalMonthlyIncome, 'totalMonthlyIncome'),
                                                                                          employer: _model.currentEmployerTextFieldDModel.value,
                                                                                          yearsAtEmployer: _model.customDateSelectorCurrentApplyModel.year != null && _model.customDateSelectorCurrentApplyModel.year != '' ? functions.toInt(_model.customDateSelectorCurrentApplyModel.year!, 'yearsAtEmployer') : functions.toInt('null', 'null'),
                                                                                          monthsAtEmployer: _model.customDateSelectorCurrentApplyModel.month != null && _model.customDateSelectorCurrentApplyModel.month != '' ? functions.toInt(_model.customDateSelectorCurrentApplyModel.month!, 'monthsAtEmployer') : functions.toInt('null', 'null'),
                                                                                          motherMaiden: _model.mothersMaidenTextFieldDModel.value,
                                                                                          email: _model.emailAddressTextFieldDModel.value,
                                                                                          monthlyRent: functions.toInt(_model.monthlyMortgage, 'monthlyMortgage'),
                                                                                          mobileNo: functions.toInt(_model.mobileNumberTextFieldDModel.value!, 'mobile'),
                                                                                          acceptTerms1: functions.boolToString(_model.informationCheckBoxDValue!),
                                                                                          acceptTerms2: functions.boolToString(_model.noticeCheckBoxDValue!),
                                                                                          userId: currentAuthenticationToken != null && currentAuthenticationToken != '' ? FFAppState().selectedUserId.toString() : '0',
                                                                                        );
                                                                                        shouldSetState = true;
                                                                                        Navigator.pop(context);
                                                                                        if ((_model.apiResultApply?.succeeded ?? true)) {
                                                                                          setState(() {
                                                                                            _model.errorAPI = null;
                                                                                            _model.hasErrorAPI = false;
                                                                                          });
                                                                                          setState(() {
                                                                                            FFAppState().responseApplyNow = ResponseApplyNowStruct.maybeFromMap((_model.apiResultApply?.jsonBody ?? ''))!;
                                                                                          });
                                                                                          if (FFAppState().responseApplyNow.appStatus == ApplyNowStatus.Approved) {
                                                                                            context.pushNamed(
                                                                                              'productApprovalPage',
                                                                                              extra: <String, dynamic>{
                                                                                                kTransitionInfoKey: const TransitionInfo(
                                                                                                  hasTransition: true,
                                                                                                  transitionType: PageTransitionType.fade,
                                                                                                  duration: Duration(milliseconds: 0),
                                                                                                ),
                                                                                              },
                                                                                            );

                                                                                            if (shouldSetState) setState(() {});
                                                                                            return;
                                                                                          } else {
                                                                                            context.pushNamed(
                                                                                              'productApplicationPage',
                                                                                              queryParameters: {
                                                                                                'applicationNumber': serializeParam(
                                                                                                  FFAppState().responseApplyNow.appNo,
                                                                                                  ParamType.String,
                                                                                                ),
                                                                                              }.withoutNulls,
                                                                                            );

                                                                                            if (shouldSetState) setState(() {});
                                                                                            return;
                                                                                          }
                                                                                        } else {
                                                                                          setState(() {
                                                                                            _model.errorAPI = getJsonField(
                                                                                              (_model.apiResultApply?.jsonBody ?? ''),
                                                                                              r'''$.Message''',
                                                                                            ).toString();
                                                                                            _model.hasErrorAPI = true;
                                                                                          });
                                                                                          if (shouldSetState) setState(() {});
                                                                                          return;
                                                                                        }
                                                                                      } else {
                                                                                        setState(() {
                                                                                          _model.errorCaptcha = true;
                                                                                        });
                                                                                        if (shouldSetState) setState(() {});
                                                                                        return;
                                                                                      }

                                                                                      if (shouldSetState) setState(() {});
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(width: 8.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              20.0,
                                                                          height:
                                                                              20.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 16.0)),
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      height:
                                                                          24.0)),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  height:
                                                                      32.0)),
                                                            ),
                                                          ),
                                                        ],
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
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 16.0),
                                    child: Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
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
                                                                'Please enter your Personal Information',
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
                                                      height: 2.0,
                                                      thickness: 2.5,
                                                      color: Color(0xFF801B0E),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 24.0,
                                                          16.0, 24.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          if (_model
                                                              .hasErrorAPI)
                                                            wrapWithModel(
                                                              model: _model
                                                                  .errorBannerOutlinedModel2,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  ErrorBannerOutlinedWidget(
                                                                message: _model
                                                                    .errorAPI,
                                                              ),
                                                            ),
                                                          Builder(
                                                            builder: (context) {
                                                              if (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  632.0) {
                                                                return Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/images/millls_card_flat.png',
                                                                        width:
                                                                            200.0,
                                                                        height:
                                                                            126.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      width: double
                                                                          .infinity,
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                        child:
                                                                            RichText(
                                                                          textScaler:
                                                                              MediaQuery.of(context).textScaler,
                                                                          text:
                                                                              TextSpan(
                                                                            children: [
                                                                              TextSpan(
                                                                                text: '* ',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Arial',
                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                              ),
                                                                              const TextSpan(
                                                                                text: 'Required Fields',
                                                                                style: TextStyle(
                                                                                  color: Colors.black,
                                                                                  fontWeight: FontWeight.bold,
                                                                                  fontSize: 12.0,
                                                                                ),
                                                                              )
                                                                            ],
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Arial',
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                      child:
                                                                          wrapWithModel(
                                                                        model: _model
                                                                            .customRadioButtonMModel,
                                                                        updateCallback:
                                                                            () =>
                                                                                setState(() {}),
                                                                        child:
                                                                            const CustomRadioButtonWidget(),
                                                                      ),
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      height:
                                                                          8.0)),
                                                                );
                                                              } else {
                                                                return Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children:
                                                                          [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/millls_card_flat.png',
                                                                            width:
                                                                                267.0,
                                                                            height:
                                                                                168.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Container(
                                                                                width: double.infinity,
                                                                                decoration: const BoxDecoration(),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                  child: RichText(
                                                                                    textScaler: MediaQuery.of(context).textScaler,
                                                                                    text: TextSpan(
                                                                                      children: [
                                                                                        TextSpan(
                                                                                          text: '* ',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Arial',
                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                fontSize: 12.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: false,
                                                                                              ),
                                                                                        ),
                                                                                        const TextSpan(
                                                                                          text: 'Required Fields',
                                                                                          style: TextStyle(
                                                                                            color: Colors.black,
                                                                                            fontWeight: FontWeight.bold,
                                                                                            fontSize: 12.0,
                                                                                          ),
                                                                                        )
                                                                                      ],
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Arial',
                                                                                            fontSize: 12.0,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                ),
                                                                                child: wrapWithModel(
                                                                                  model: _model.customRadioButtonTModel,
                                                                                  updateCallback: () => setState(() {}),
                                                                                  child: const CustomRadioButtonWidget(),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 16.0)),
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      height:
                                                                          8.0)),
                                                                );
                                                              }
                                                            },
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Text(
                                                              'Apply now! Get a decision in minutes!',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Arial',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    fontSize: MediaQuery.sizeOf(context).width <
                                                                            632.0
                                                                        ? 16.0
                                                                        : 24.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'PERSONAL INFORMATION',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Arial',
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          20.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                              AlignedTooltip(
                                                                content:
                                                                    Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              4.0),
                                                                  child: Text(
                                                                    'Your first and last name must be your full legal name',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Arial',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                                offset: 4.0,
                                                                preferredDirection:
                                                                    AxisDirection
                                                                        .down,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                elevation: 4.0,
                                                                tailBaseWidth:
                                                                    24.0,
                                                                tailLength:
                                                                    12.0,
                                                                waitDuration:
                                                                    const Duration(
                                                                        milliseconds:
                                                                            100),
                                                                showDuration:
                                                                    const Duration(
                                                                        milliseconds:
                                                                            100),
                                                                triggerMode:
                                                                    TooltipTriggerMode
                                                                        .tap,
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/help_icon.png',
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 4.0)),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .firstNameTextFieldMModel,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        CustomOutlinedTextFieldGeneralWidget(
                                                                      enabled:
                                                                          true,
                                                                      title:
                                                                          'First Name',
                                                                      icon:
                                                                          const Icon(
                                                                        Icons
                                                                            .ten_k,
                                                                        color: Colors
                                                                            .transparent,
                                                                      ),
                                                                      hasIconAction:
                                                                          false,
                                                                      isRequired:
                                                                          true,
                                                                      infoMessage:
                                                                          '',
                                                                      errorMessage:
                                                                          _model
                                                                              .errorFirstName,
                                                                      hasError:
                                                                          _model
                                                                              .hasErrorFirstName,
                                                                      hintText:
                                                                          '',
                                                                      initialValue:
                                                                          '',
                                                                      defaultFocus:
                                                                          false,
                                                                      onIconTap:
                                                                          () async {},
                                                                      validate:
                                                                          () async {},
                                                                      resetError:
                                                                          () async {},
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .mITextFieldMModel,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        CustomOutlinedTextFieldGeneralWidget(
                                                                      enabled:
                                                                          true,
                                                                      title:
                                                                          'MI',
                                                                      icon:
                                                                          const Icon(
                                                                        Icons
                                                                            .ten_k,
                                                                        color: Colors
                                                                            .transparent,
                                                                      ),
                                                                      hasIconAction:
                                                                          false,
                                                                      isRequired:
                                                                          false,
                                                                      infoMessage:
                                                                          '',
                                                                      hasError:
                                                                          false,
                                                                      hintText:
                                                                          '',
                                                                      initialValue:
                                                                          '',
                                                                      defaultFocus:
                                                                          false,
                                                                      onIconTap:
                                                                          () async {},
                                                                      validate:
                                                                          () async {},
                                                                      resetError:
                                                                          () async {},
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .lastNameTextFieldMModel,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        CustomOutlinedTextFieldGeneralWidget(
                                                                      enabled:
                                                                          true,
                                                                      title:
                                                                          'Last Name',
                                                                      icon:
                                                                          const Icon(
                                                                        Icons
                                                                            .ten_k,
                                                                        color: Colors
                                                                            .transparent,
                                                                      ),
                                                                      hasIconAction:
                                                                          false,
                                                                      isRequired:
                                                                          true,
                                                                      infoMessage:
                                                                          '',
                                                                      errorMessage:
                                                                          _model
                                                                              .errorLastName,
                                                                      hasError:
                                                                          _model
                                                                              .hasErrorLastName,
                                                                      hintText:
                                                                          '',
                                                                      initialValue:
                                                                          '',
                                                                      defaultFocus:
                                                                          false,
                                                                      onIconTap:
                                                                          () async {},
                                                                      validate:
                                                                          () async {},
                                                                      resetError:
                                                                          () async {},
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .suffixTextFieldMModel,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        CustomOutlinedTextFieldGeneralWidget(
                                                                      enabled:
                                                                          true,
                                                                      title:
                                                                          'Suffix',
                                                                      icon:
                                                                          const Icon(
                                                                        Icons
                                                                            .ten_k,
                                                                        color: Colors
                                                                            .transparent,
                                                                      ),
                                                                      hasIconAction:
                                                                          false,
                                                                      isRequired:
                                                                          false,
                                                                      infoMessage:
                                                                          '',
                                                                      hasError:
                                                                          false,
                                                                      hintText:
                                                                          '',
                                                                      initialValue:
                                                                          '',
                                                                      defaultFocus:
                                                                          false,
                                                                      onIconTap:
                                                                          () async {},
                                                                      validate:
                                                                          () async {},
                                                                      resetError:
                                                                          () async {},
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .sSNTextFieldMModel,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        CustomOutlinedTextFieldSSNWidget(
                                                                      enabled:
                                                                          true,
                                                                      title:
                                                                          'Social Security Number',
                                                                      icon:
                                                                          const Icon(
                                                                        Icons
                                                                            .ten_k,
                                                                        color: Colors
                                                                            .transparent,
                                                                      ),
                                                                      hasIconAction:
                                                                          false,
                                                                      isRequired:
                                                                          true,
                                                                      infoMessage:
                                                                          '',
                                                                      errorMessage:
                                                                          _model
                                                                              .errorSSN,
                                                                      hasError:
                                                                          _model
                                                                              .hasErrorSSN,
                                                                      hint:
                                                                          'XXX-XX-XXXX',
                                                                      initialValue:
                                                                          '',
                                                                      onIconTap:
                                                                          () async {},
                                                                      validate:
                                                                          () async {
                                                                        if (!(((_model.sSNTextFieldMModel.ssnValue!).length ??
                                                                                0) ==
                                                                            9)) {
                                                                          setState(
                                                                              () {
                                                                            _model.errorSSN =
                                                                                'Valid Social Security Number is required';
                                                                            _model.hasErrorSSN =
                                                                                true;
                                                                          });
                                                                        }
                                                                      },
                                                                      resetError:
                                                                          () async {
                                                                        setState(
                                                                            () {
                                                                          _model.errorSSN =
                                                                              ' ';
                                                                          _model.hasErrorSSN =
                                                                              false;
                                                                        });
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    AlignedTooltip(
                                                                  content:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            4.0),
                                                                    child: Text(
                                                                      'The Social Security Number\nyou enter must match our\nrecords.',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Arial',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  offset: 4.0,
                                                                  preferredDirection:
                                                                      AxisDirection
                                                                          .down,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  elevation:
                                                                      4.0,
                                                                  tailBaseWidth:
                                                                      24.0,
                                                                  tailLength:
                                                                      12.0,
                                                                  waitDuration:
                                                                      const Duration(
                                                                          milliseconds:
                                                                              100),
                                                                  showDuration:
                                                                      const Duration(
                                                                          milliseconds:
                                                                              100),
                                                                  triggerMode:
                                                                      TooltipTriggerMode
                                                                          .tap,
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/help_icon.png',
                                                                      width:
                                                                          20.0,
                                                                      height:
                                                                          20.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .dOBTextFieldMModel,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        CustomOutlinedTextFieldDOBWidget(
                                                                      enabled:
                                                                          true,
                                                                      title:
                                                                          'Date of Birth',
                                                                      icon:
                                                                          const Icon(
                                                                        Icons
                                                                            .ten_k,
                                                                        color: Colors
                                                                            .transparent,
                                                                      ),
                                                                      hasIconAction:
                                                                          false,
                                                                      isRequired:
                                                                          true,
                                                                      infoMessage:
                                                                          '',
                                                                      errorMessage:
                                                                          _model
                                                                              .errorDOB,
                                                                      hasError:
                                                                          _model
                                                                              .hasErrorDOB,
                                                                      onIconTap:
                                                                          () async {},
                                                                      validate:
                                                                          () async {
                                                                        if (!functions.dateValidator(_model
                                                                            .dOBTextFieldMModel
                                                                            .value!)) {
                                                                          setState(
                                                                              () {
                                                                            _model.errorDOB =
                                                                                'Please enter valid Date';
                                                                            _model.hasErrorDOB =
                                                                                true;
                                                                          });
                                                                        }
                                                                      },
                                                                      resetError:
                                                                          () async {
                                                                        setState(
                                                                            () {
                                                                          _model.errorDOB =
                                                                              ' ';
                                                                          _model.hasErrorDOB =
                                                                              false;
                                                                        });
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    AlignedTooltip(
                                                                  content:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            4.0),
                                                                    child: Text(
                                                                      'The date of birth you enter\nmust match our records.',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Arial',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  offset: 4.0,
                                                                  preferredDirection:
                                                                      AxisDirection
                                                                          .down,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  elevation:
                                                                      4.0,
                                                                  tailBaseWidth:
                                                                      24.0,
                                                                  tailLength:
                                                                      12.0,
                                                                  waitDuration:
                                                                      const Duration(
                                                                          milliseconds:
                                                                              100),
                                                                  showDuration:
                                                                      const Duration(
                                                                          milliseconds:
                                                                              100),
                                                                  triggerMode:
                                                                      TooltipTriggerMode
                                                                          .tap,
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/help_icon.png',
                                                                      width:
                                                                          20.0,
                                                                      height:
                                                                          20.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                              ),
                                                            ],
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 16.0)),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Current Address',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Arial',
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .address1TextFieldMModel,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        CustomOutlinedTextFieldGeneralWidget(
                                                                      enabled:
                                                                          true,
                                                                      title:
                                                                          'Address Line 1',
                                                                      icon:
                                                                          const Icon(
                                                                        Icons
                                                                            .ten_k,
                                                                        color: Colors
                                                                            .transparent,
                                                                      ),
                                                                      hasIconAction:
                                                                          false,
                                                                      isRequired:
                                                                          true,
                                                                      infoMessage:
                                                                          '',
                                                                      errorMessage:
                                                                          _model
                                                                              .errorAddress1,
                                                                      hasError:
                                                                          _model
                                                                              .hasErrorAddress1,
                                                                      hintText:
                                                                          '',
                                                                      initialValue:
                                                                          '',
                                                                      defaultFocus:
                                                                          false,
                                                                      onIconTap:
                                                                          () async {},
                                                                      validate:
                                                                          () async {},
                                                                      resetError:
                                                                          () async {},
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .address2TextFieldMModel,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        CustomOutlinedTextFieldGeneralWidget(
                                                                      enabled:
                                                                          true,
                                                                      title:
                                                                          'Address Line 2',
                                                                      icon:
                                                                          const Icon(
                                                                        Icons
                                                                            .ten_k,
                                                                        color: Colors
                                                                            .transparent,
                                                                      ),
                                                                      hasIconAction:
                                                                          false,
                                                                      isRequired:
                                                                          false,
                                                                      infoMessage:
                                                                          '',
                                                                      errorMessage:
                                                                          _model
                                                                              .errorAddress2,
                                                                      hasError:
                                                                          _model
                                                                              .hasErrorAddress2,
                                                                      hintText:
                                                                          '',
                                                                      initialValue:
                                                                          '',
                                                                      defaultFocus:
                                                                          false,
                                                                      onIconTap:
                                                                          () async {},
                                                                      validate:
                                                                          () async {},
                                                                      resetError:
                                                                          () async {},
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .cityTextFieldMModel,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        CustomOutlinedTextFieldGeneralWidget(
                                                                      enabled:
                                                                          true,
                                                                      title:
                                                                          'City',
                                                                      icon:
                                                                          const Icon(
                                                                        Icons
                                                                            .ten_k,
                                                                        color: Colors
                                                                            .transparent,
                                                                      ),
                                                                      hasIconAction:
                                                                          false,
                                                                      isRequired:
                                                                          true,
                                                                      infoMessage:
                                                                          '',
                                                                      errorMessage:
                                                                          _model
                                                                              .errorCity,
                                                                      hasError:
                                                                          _model
                                                                              .hasErrorCity,
                                                                      hintText:
                                                                          '',
                                                                      initialValue:
                                                                          '',
                                                                      defaultFocus:
                                                                          false,
                                                                      onIconTap:
                                                                          () async {},
                                                                      validate:
                                                                          () async {},
                                                                      resetError:
                                                                          () async {},
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .customStateSelectorMModel,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        CustomStateSelectorWidget(
                                                                      title:
                                                                          'State',
                                                                      enable:
                                                                          true,
                                                                      states: _model
                                                                          .states,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .zipTextFieldMModel,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        CustomOutlinedTextFieldGeneralWidget(
                                                                      enabled:
                                                                          true,
                                                                      title:
                                                                          'Zip Code',
                                                                      icon:
                                                                          const Icon(
                                                                        Icons
                                                                            .ten_k,
                                                                        color: Colors
                                                                            .transparent,
                                                                      ),
                                                                      hasIconAction:
                                                                          false,
                                                                      isRequired:
                                                                          true,
                                                                      infoMessage:
                                                                          '',
                                                                      errorMessage:
                                                                          _model
                                                                              .errorZip,
                                                                      hasError:
                                                                          _model
                                                                              .hasErrorZip,
                                                                      hintText:
                                                                          '',
                                                                      initialValue:
                                                                          '',
                                                                      defaultFocus:
                                                                          false,
                                                                      onIconTap:
                                                                          () async {},
                                                                      validate:
                                                                          () async {},
                                                                      resetError:
                                                                          () async {},
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                          Text(
                                                            'Time at Present Address',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Arial',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .black,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .customDateSelectorPresentApplyMModel,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        CustomDateSelectorApplyWidget(
                                                                      enabled:
                                                                          true,
                                                                      isRequired:
                                                                          false,
                                                                      hasError:
                                                                          false,
                                                                      validate:
                                                                          () async {},
                                                                      resetError:
                                                                          () async {},
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 16.0)),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'INCOME INFORMATION',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Arial',
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      RichText(
                                                                        textScaler:
                                                                            MediaQuery.of(context).textScaler,
                                                                        text:
                                                                            TextSpan(
                                                                          children: [
                                                                            TextSpan(
                                                                              text: 'Total Monthly Income ',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Arial',
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.normal,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                            ),
                                                                            TextSpan(
                                                                              text: '*',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Arial',
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                            )
                                                                          ],
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Arial',
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        decoration:
                                                                            const BoxDecoration(),
                                                                        child: custom_widgets
                                                                            .AmountWidget(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              55.0,
                                                                          hasError:
                                                                              false,
                                                                          isLeftAlign:
                                                                              true,
                                                                          value:
                                                                              _model.totalMonthlyIncome,
                                                                          isLoading:
                                                                              false,
                                                                          isThinBorder:
                                                                              true,
                                                                          isPadding:
                                                                              true,
                                                                          onChange:
                                                                              (value) async {
                                                                            setState(() {
                                                                              _model.totalMonthlyIncome = value;
                                                                            });
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        '(Enter Whole Dollars Only)',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Arial',
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        height:
                                                                            4.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    AlignedTooltip(
                                                                  content:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            4.0),
                                                                    child: Text(
                                                                      'This is a combination of your\nmonthly salary before any\ndeductions and any additional\nallowances. Examples may\ninclude income earned from\nsalaries, investments, rental\nproperties, Social Security\nbenefits, retirement accounts\nand allowances. Alimony, child\nsupport, or separate\nmaintenance income does not\nneed to be included.',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Arial',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  offset: 4.0,
                                                                  preferredDirection:
                                                                      AxisDirection
                                                                          .down,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  elevation:
                                                                      4.0,
                                                                  tailBaseWidth:
                                                                      24.0,
                                                                  tailLength:
                                                                      12.0,
                                                                  waitDuration:
                                                                      const Duration(
                                                                          milliseconds:
                                                                              100),
                                                                  showDuration:
                                                                      const Duration(
                                                                          milliseconds:
                                                                              100),
                                                                  triggerMode:
                                                                      TooltipTriggerMode
                                                                          .tap,
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/help_icon.png',
                                                                      width:
                                                                          20.0,
                                                                      height:
                                                                          20.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 16.0)),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'EMPLOYMENT INFORMATION',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Arial',
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Flexible(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .currentEmployerTextFieldMModel,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        CustomOutlinedTextFieldGeneralWidget(
                                                                      enabled:
                                                                          true,
                                                                      title:
                                                                          'Current Employer',
                                                                      icon:
                                                                          const Icon(
                                                                        Icons
                                                                            .ten_k,
                                                                        color: Colors
                                                                            .transparent,
                                                                      ),
                                                                      hasIconAction:
                                                                          false,
                                                                      isRequired:
                                                                          false,
                                                                      infoMessage:
                                                                          '',
                                                                      hasError:
                                                                          false,
                                                                      hintText:
                                                                          '',
                                                                      initialValue:
                                                                          '',
                                                                      defaultFocus:
                                                                          false,
                                                                      onIconTap:
                                                                          () async {},
                                                                      validate:
                                                                          () async {},
                                                                      resetError:
                                                                          () async {},
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    AlignedTooltip(
                                                                  content:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            4.0),
                                                                    child: Text(
                                                                      'Enter the name of your current\nemployer. If you’re retired:\nType the word ‘Retired-’\nfollowed by the name of your\nlast employer. If you are self-\nemployed: Type the word ‘Self-’\nfollowed by type of business.',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Arial',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  offset: 4.0,
                                                                  preferredDirection:
                                                                      AxisDirection
                                                                          .down,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  elevation:
                                                                      4.0,
                                                                  tailBaseWidth:
                                                                      24.0,
                                                                  tailLength:
                                                                      12.0,
                                                                  waitDuration:
                                                                      const Duration(
                                                                          milliseconds:
                                                                              100),
                                                                  showDuration:
                                                                      const Duration(
                                                                          milliseconds:
                                                                              100),
                                                                  triggerMode:
                                                                      TooltipTriggerMode
                                                                          .tap,
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/help_icon.png',
                                                                      width:
                                                                          20.0,
                                                                      height:
                                                                          20.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                          Text(
                                                            'Time with Current Employer',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Arial',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .black,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .customDateSelectorCurrentApplyMModel,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        CustomDateSelectorApplyWidget(
                                                                      enabled:
                                                                          true,
                                                                      isRequired:
                                                                          false,
                                                                      hasError:
                                                                          false,
                                                                      validate:
                                                                          () async {},
                                                                      resetError:
                                                                          () async {},
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 16.0)),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'OTHER INFORMATION',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Arial',
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .mothersMaidenTextFieldMModel,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        CustomOutlinedTextFieldGeneralWidget(
                                                                      enabled:
                                                                          true,
                                                                      title:
                                                                          'Mother’s Maiden',
                                                                      icon:
                                                                          const Icon(
                                                                        Icons
                                                                            .ten_k,
                                                                        color: Colors
                                                                            .transparent,
                                                                      ),
                                                                      hasIconAction:
                                                                          false,
                                                                      isRequired:
                                                                          false,
                                                                      infoMessage:
                                                                          '',
                                                                      hasError:
                                                                          false,
                                                                      hintText:
                                                                          '',
                                                                      initialValue:
                                                                          '',
                                                                      defaultFocus:
                                                                          false,
                                                                      onIconTap:
                                                                          () async {},
                                                                      validate:
                                                                          () async {},
                                                                      resetError:
                                                                          () async {},
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Monthly Mortgage/Rent Payment',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Arial',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                    Container(
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child: custom_widgets
                                                                          .AmountWidget(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            55.0,
                                                                        hasError:
                                                                            false,
                                                                        isLeftAlign:
                                                                            true,
                                                                        value: _model
                                                                            .monthlyMortgage,
                                                                        isLoading:
                                                                            false,
                                                                        isThinBorder:
                                                                            true,
                                                                        isPadding:
                                                                            true,
                                                                        onChange:
                                                                            (value) async {
                                                                          setState(
                                                                              () {
                                                                            _model.monthlyMortgage =
                                                                                value;
                                                                          });
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      height:
                                                                          4.0)),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 16.0)),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'CONTACT INFORMATION',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Arial',
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .emailAddressTextFieldMModel,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        CustomOutlinedTextFieldGeneralWidget(
                                                                      enabled:
                                                                          true,
                                                                      title:
                                                                          'Email Address',
                                                                      icon:
                                                                          const Icon(
                                                                        Icons
                                                                            .ten_k,
                                                                        color: Colors
                                                                            .transparent,
                                                                      ),
                                                                      hasIconAction:
                                                                          false,
                                                                      isRequired:
                                                                          true,
                                                                      infoMessage:
                                                                          '',
                                                                      errorMessage:
                                                                          _model
                                                                              .errorEmail,
                                                                      hasError:
                                                                          _model
                                                                              .hasErrorEmail,
                                                                      hintText:
                                                                          '',
                                                                      initialValue:
                                                                          '',
                                                                      defaultFocus:
                                                                          false,
                                                                      onIconTap:
                                                                          () async {},
                                                                      validate:
                                                                          () async {
                                                                        if (!functions.isValidEmail(_model
                                                                            .emailAddressTextFieldMModel
                                                                            .value!)) {
                                                                          setState(
                                                                              () {
                                                                            _model.errorEmail =
                                                                                'A valid Email Address is required';
                                                                            _model.hasErrorEmail =
                                                                                true;
                                                                          });
                                                                        }
                                                                      },
                                                                      resetError:
                                                                          () async {
                                                                        setState(
                                                                            () {
                                                                          _model.errorEmail =
                                                                              ' ';
                                                                          _model.hasErrorEmail =
                                                                              false;
                                                                        });
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Theme(
                                                                data: ThemeData(
                                                                  checkboxTheme:
                                                                      CheckboxThemeData(
                                                                    visualDensity:
                                                                        VisualDensity
                                                                            .compact,
                                                                    materialTapTargetSize:
                                                                        MaterialTapTargetSize
                                                                            .shrinkWrap,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              4.0),
                                                                    ),
                                                                  ),
                                                                  unselectedWidgetColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                ),
                                                                child: Checkbox(
                                                                  value: _model
                                                                          .informationCheckBoxMValue ??=
                                                                      false,
                                                                  onChanged:
                                                                      (newValue) async {
                                                                    setState(() =>
                                                                        _model.informationCheckBoxMValue =
                                                                            newValue!);
                                                                  },
                                                                  side:
                                                                      BorderSide(
                                                                    width: 2,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                  ),
                                                                  activeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  checkColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                ),
                                                              ),
                                                              Flexible(
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'I agree the Exchange Credit program may use the mailing and/or E-mail address I have provided to send me information about MILITARY STAR promotions, services, and financial information.',
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
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 4.0)),
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          wrapWithModel(
                                                                        model: _model
                                                                            .mobileNumberTextFieldMModel,
                                                                        updateCallback:
                                                                            () =>
                                                                                setState(() {}),
                                                                        child:
                                                                            CustomOutlinedTextFieldPhoneWidget(
                                                                          enabled:
                                                                              true,
                                                                          title:
                                                                              'Mobile Phone',
                                                                          icon:
                                                                              const Icon(
                                                                            Icons.ten_k,
                                                                            color:
                                                                                Colors.transparent,
                                                                          ),
                                                                          hasIconAction:
                                                                              false,
                                                                          isRequired:
                                                                              true,
                                                                          infoMessage:
                                                                              '',
                                                                          errorMessage:
                                                                              _model.errorMobile,
                                                                          hasError:
                                                                              _model.hasErrorMobile,
                                                                          hint:
                                                                              '(___) - ___ - ____',
                                                                          onIconTap:
                                                                              () async {},
                                                                          validate:
                                                                              () async {},
                                                                          resetError:
                                                                              () async {},
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    decoration:
                                                                        const BoxDecoration(),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    width:
                                                                        16.0)),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          Text(
                                                                        'NOTE: Your primary phone number is required for URGENT notifications concerning your Exchange Credit Program account(s)',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Arial',
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    decoration:
                                                                        const BoxDecoration(),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    width:
                                                                        16.0)),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                height: 4.0)),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 16.0)),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    '† Mobile Disclosure',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Arial',
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Text(
                                                                            'If you give us your mobile number, we have your permission to contact you at that number about all your Exchange Credit Program accounts. Your consent allows us to use text messaging, artificial or prerecorded voice messages and automatic dialing technology for informational and account service calls, but not for telemarketing or sales calls. It may include contact from companies working on our behalf to service your accounts. Message and data rates may apply. ',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Arial',
                                                                                  color: FlutterFlowTheme.of(context).black,
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        width:
                                                                            20.0,
                                                                        height:
                                                                            20.0,
                                                                        decoration:
                                                                            const BoxDecoration(),
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        width:
                                                                            16.0)),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        1.0)),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Agreements and Disclosures ',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Arial',
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Text(
                                                                            'By submitting this application, you certify that, to the best of your knowledge, the information you supplied in this application is true and correct, and you understand: (1) use of an account will be subject to the Exchange Credit Program Agreement, copies of which will be provided or sent upon approval; (2) the exchange may verify your employment and credit history through credit reporting agencies and any person, business entity, or governmental agency that can provide such information, at the time of application and later for account review and servicing purposes; and (3) the Exchange Credit Program may use information in this application for MILITARY STAR marketing purposes. If your MILITARY STAR Private Label Account becomes delinquent, you understand the Exchange Credit Program will pursue all remedies available to it under federal law to recover full payment of your MILITARY STAR Private Label Account. These remedies may result in the deduction or garnishment of funds from your military, retired, or civilian pay, as well as the offset of funds due under a federal tax return or other federal payment.',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Arial',
                                                                                  color: FlutterFlowTheme.of(context).black,
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        width:
                                                                            20.0,
                                                                        height:
                                                                            20.0,
                                                                        decoration:
                                                                            const BoxDecoration(),
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        width:
                                                                            16.0)),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        1.0)),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Agency Disclosure Notice',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Arial',
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              120.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          child:
                                                                              FlutterFlowWebView(
                                                                            content:
                                                                                'https://apigateway-dev-ccoox6j1.uc.gateway.dev/api/static-pages?pageName=card-apply-privacy',
                                                                            bypass:
                                                                                false,
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 1.0,
                                                                            height:
                                                                                100.0,
                                                                            verticalScroll:
                                                                                false,
                                                                            horizontalScroll:
                                                                                false,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        width:
                                                                            20.0,
                                                                        height:
                                                                            20.0,
                                                                        decoration:
                                                                            const BoxDecoration(),
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        width:
                                                                            16.0)),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        1.0)),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Exchange Credit Program Account Opening Disclosures',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Arial',
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Flexible(
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              120.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          child:
                                                                              FlutterFlowWebView(
                                                                            content:
                                                                                'https://apigateway-dev-ccoox6j1.uc.gateway.dev/api/static-pages?pageName=card-apply-tc',
                                                                            bypass:
                                                                                false,
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 1.0,
                                                                            height:
                                                                                MediaQuery.sizeOf(context).height * 1.0,
                                                                            verticalScroll:
                                                                                false,
                                                                            horizontalScroll:
                                                                                false,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        width:
                                                                            20.0,
                                                                        height:
                                                                            20.0,
                                                                        decoration:
                                                                            const BoxDecoration(),
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        width:
                                                                            16.0)),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        1.0)),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children:
                                                                            [
                                                                          Theme(
                                                                            data:
                                                                                ThemeData(
                                                                              checkboxTheme: CheckboxThemeData(
                                                                                visualDensity: VisualDensity.compact,
                                                                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(4.0),
                                                                                ),
                                                                              ),
                                                                              unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
                                                                            ),
                                                                            child:
                                                                                Checkbox(
                                                                              value: _model.noticeCheckBoxMValue ??= false,
                                                                              onChanged: (newValue) async {
                                                                                setState(() => _model.noticeCheckBoxMValue = newValue!);
                                                                              },
                                                                              side: BorderSide(
                                                                                width: 2,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                              ),
                                                                              activeColor: FlutterFlowTheme.of(context).primary,
                                                                              checkColor: FlutterFlowTheme.of(context).info,
                                                                            ),
                                                                          ),
                                                                          Flexible(
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                'I have read and agree to the above Account Opening disclosures, Terms and Conditions which contain rate, fee, cost, rewards information and other information if applicable.',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Arial',
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ].divide(const SizedBox(width: 4.0)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    decoration:
                                                                        const BoxDecoration(),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    width:
                                                                        16.0)),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          wrapWithModel(
                                                                        model: _model
                                                                            .captchaTextFieldMModel,
                                                                        updateCallback:
                                                                            () =>
                                                                                setState(() {}),
                                                                        child:
                                                                            CustomOutlinedTextFieldCaptchaxWidget(
                                                                          enabled:
                                                                              true,
                                                                          hasIconAction:
                                                                              false,
                                                                          hasError:
                                                                              _model.errorCaptcha,
                                                                          icon:
                                                                              const Icon(
                                                                            Icons.ten_k,
                                                                            color:
                                                                                Colors.transparent,
                                                                          ),
                                                                          infoMessage:
                                                                              '',
                                                                          use:
                                                                              'apply',
                                                                          captchaValue:
                                                                              _model.captchaValue,
                                                                          onIconTap:
                                                                              () async {},
                                                                          validate:
                                                                              () async {},
                                                                          resetError:
                                                                              () async {
                                                                            setState(() {
                                                                              _model.errorCaptcha = false;
                                                                            });
                                                                          },
                                                                          refreshCaptchaAction:
                                                                              () async {
                                                                            await _model.actionAPI(context);
                                                                            setState(() {});
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    decoration:
                                                                        const BoxDecoration(),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    width:
                                                                        16.0)),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .transparent,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              4.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          2.0,
                                                                          4.0,
                                                                          2.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children:
                                                                            [
                                                                          Theme(
                                                                            data:
                                                                                ThemeData(
                                                                              checkboxTheme: CheckboxThemeData(
                                                                                visualDensity: VisualDensity.compact,
                                                                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(4.0),
                                                                                ),
                                                                              ),
                                                                              unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
                                                                            ),
                                                                            child:
                                                                                Checkbox(
                                                                              value: _model.agreeCheckboxMValue ??= false,
                                                                              onChanged: (newValue) async {
                                                                                setState(() => _model.agreeCheckboxMValue = newValue!);
                                                                              },
                                                                              side: BorderSide(
                                                                                width: 2,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                              ),
                                                                              activeColor: FlutterFlowTheme.of(context).primary,
                                                                              checkColor: FlutterFlowTheme.of(context).info,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'I Agree',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Arial',
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ].divide(const SizedBox(width: 4.0)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Text(
                                                                            'You understand that by clicking on the I AGREE button immediately following this notice, you are providing ‘written instructions’ to Army and Air Force Exchange Services under the Fair Credit Reporting Act authorizing Army and Air Force Exchange Services to obtain information from your personal credit profile or other information from Experian. You authorize Army and Air Force Exchange Services to obtain such information solely to confirm your identity to avoid fraudulent transactions in your name.',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Arial',
                                                                                  color: FlutterFlowTheme.of(context).black,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        width:
                                                                            20.0,
                                                                        height:
                                                                            20.0,
                                                                        decoration:
                                                                            const BoxDecoration(),
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        width:
                                                                            16.0)),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        4.0)),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                height: 16.0)),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      wrapWithModel(
                                                                        model: _model
                                                                            .commonCancelButtonModel2,
                                                                        updateCallback:
                                                                            () =>
                                                                                setState(() {}),
                                                                        child:
                                                                            CommonCancelButtonWidget(
                                                                          title:
                                                                              'Cancel',
                                                                          onTap:
                                                                              () async {
                                                                            context.safePop();
                                                                          },
                                                                        ),
                                                                      ),
                                                                      wrapWithModel(
                                                                        model: _model
                                                                            .commonCustomButtonMModel,
                                                                        updateCallback:
                                                                            () =>
                                                                                setState(() {}),
                                                                        child:
                                                                            CommonCustomButtonWidget(
                                                                          titile:
                                                                              'Submit Application',
                                                                          isDisabled: !((_model.firstNameTextFieldMModel.value != null && _model.firstNameTextFieldMModel.value != '') &&
                                                                              (_model.lastNameTextFieldMModel.value != null && _model.lastNameTextFieldMModel.value != '') &&
                                                                              (_model.sSNTextFieldMModel.ssnValue != null && _model.sSNTextFieldMModel.ssnValue != '') &&
                                                                              !_model.hasErrorSSN &&
                                                                              (_model.dOBTextFieldMModel.value != null && _model.dOBTextFieldMModel.value != '') &&
                                                                              !_model.hasErrorDOB &&
                                                                              (_model.address1TextFieldMModel.value != null && _model.address1TextFieldMModel.value != '') &&
                                                                              (_model.cityTextFieldMModel.value != null && _model.cityTextFieldMModel.value != '') &&
                                                                              (_model.customStateSelectorMModel.stateDropDownValue != null) &&
                                                                              (_model.zipTextFieldMModel.value != null && _model.zipTextFieldMModel.value != '') &&
                                                                              _model.informationCheckBoxMValue! &&
                                                                              _model.noticeCheckBoxMValue! &&
                                                                              _model.agreeCheckboxMValue! &&
                                                                              (_model.emailAddressTextFieldMModel.value != null && _model.emailAddressTextFieldMModel.value != '') &&
                                                                              !_model.hasErrorEmail &&
                                                                              (_model.mobileNumberTextFieldMModel.value != null && _model.mobileNumberTextFieldMModel.value != '') &&
                                                                              (_model.captchaTextFieldMModel.value != null && _model.captchaTextFieldMModel.value != '') &&
                                                                              !_model.errorCaptcha &&
                                                                              (_model.totalMonthlyIncome != '') &&
                                                                              !_model.hasErrorMonthlyIncome),
                                                                          isEditIconVisible:
                                                                              false,
                                                                          onTap:
                                                                              () async {
                                                                            var shouldSetState =
                                                                                false;
                                                                            if (((_model.captchaTextFieldMModel.value!).length ?? 0) ==
                                                                                6) {
                                                                              await action_blocks.showLoadingDialog(context);
                                                                              _model.apiResultApplyM = await ApplyNowGroup.applyCall.call(
                                                                                dynamicBaseURL: FFAppState().dynamicBaseURL,
                                                                                cardApplyingFor: MediaQuery.sizeOf(context).width < 632.0 ? (_model.customRadioButtonMModel.selectedOption == 0 ? 'military_star' : 'military_clothing') : (_model.customRadioButtonTModel.selectedOption == 0 ? 'military_star' : 'military_clothing'),
                                                                                firstName: _model.firstNameTextFieldMModel.value,
                                                                                middleInitial: _model.mITextFieldMModel.value,
                                                                                lastName: _model.lastNameTextFieldMModel.value,
                                                                                suffix: _model.suffixTextFieldMModel.value,
                                                                                dob: _model.dOBTextFieldMModel.value,
                                                                                ssn: functions.toInt(_model.sSNTextFieldMModel.ssnValue!, 'ssn'),
                                                                                address1: _model.address1TextFieldMModel.value,
                                                                                address2: _model.address2TextFieldMModel.value,
                                                                                city: _model.cityTextFieldMModel.value,
                                                                                state: _model.customStateSelectorMModel.stateDropDownValue?.toString(),
                                                                                zipCode: functions.toInt(_model.zipTextFieldMModel.value!, 'zip'),
                                                                                yearsAtAddress: _model.customDateSelectorPresentApplyMModel.year != null && _model.customDateSelectorPresentApplyMModel.year != '' ? functions.toInt(_model.customDateSelectorPresentApplyMModel.year!, 'yearsAtAddress') : functions.toInt('null', 'null'),
                                                                                monthsAtAddress: _model.customDateSelectorPresentApplyMModel.month != null && _model.customDateSelectorPresentApplyMModel.month != '' ? functions.toInt(_model.customDateSelectorPresentApplyMModel.month!, 'monthsAtAddress') : functions.toInt('null', 'null'),
                                                                                monthlyIncome: functions.toInt(_model.totalMonthlyIncome, 'totalMonthlyIncome'),
                                                                                employer: _model.currentEmployerTextFieldMModel.value,
                                                                                yearsAtEmployer: _model.customDateSelectorCurrentApplyMModel.year != null && _model.customDateSelectorCurrentApplyMModel.year != '' ? functions.toInt(_model.customDateSelectorCurrentApplyMModel.year!, 'yearsAtEmployer') : functions.toInt('null', 'null'),
                                                                                monthsAtEmployer: _model.customDateSelectorCurrentApplyMModel.month != null && _model.customDateSelectorCurrentApplyMModel.month != '' ? functions.toInt(_model.customDateSelectorCurrentApplyMModel.month!, 'MonthsAtEmployer') : functions.toInt('null', 'null'),
                                                                                motherMaiden: _model.mothersMaidenTextFieldMModel.value,
                                                                                email: _model.emailAddressTextFieldMModel.value,
                                                                                monthlyRent: functions.toInt(_model.monthlyMortgage, 'monthlyMortgage'),
                                                                                mobileNo: functions.toInt(_model.mobileNumberTextFieldMModel.value!, 'mobuleNo'),
                                                                                acceptTerms1: functions.boolToString(_model.informationCheckBoxMValue!),
                                                                                acceptTerms2: functions.boolToString(_model.noticeCheckBoxMValue!),
                                                                                userId: currentAuthenticationToken != null && currentAuthenticationToken != '' ? FFAppState().selectedUserId.toString() : '0',
                                                                              );
                                                                              shouldSetState = true;
                                                                              Navigator.pop(context);
                                                                              if ((_model.apiResultApplyM?.succeeded ?? true)) {
                                                                                setState(() {
                                                                                  _model.errorAPI = null;
                                                                                  _model.hasErrorAPI = false;
                                                                                });
                                                                                setState(() {
                                                                                  FFAppState().responseApplyNow = ResponseApplyNowStruct.maybeFromMap((_model.apiResultApply?.jsonBody ?? ''))!;
                                                                                });
                                                                                if (FFAppState().responseApplyNow.appStatus == ApplyNowStatus.Approved) {
                                                                                  context.pushNamed(
                                                                                    'productApprovalPage',
                                                                                    extra: <String, dynamic>{
                                                                                      kTransitionInfoKey: const TransitionInfo(
                                                                                        hasTransition: true,
                                                                                        transitionType: PageTransitionType.fade,
                                                                                        duration: Duration(milliseconds: 0),
                                                                                      ),
                                                                                    },
                                                                                  );

                                                                                  if (shouldSetState) setState(() {});
                                                                                  return;
                                                                                } else {
                                                                                  context.pushNamed(
                                                                                    'productApplicationPage',
                                                                                    queryParameters: {
                                                                                      'applicationNumber': serializeParam(
                                                                                        FFAppState().responseApplyNow.appNo,
                                                                                        ParamType.String,
                                                                                      ),
                                                                                    }.withoutNulls,
                                                                                  );

                                                                                  if (shouldSetState) setState(() {});
                                                                                  return;
                                                                                }
                                                                              } else {
                                                                                setState(() {
                                                                                  _model.errorAPI = getJsonField(
                                                                                    (_model.apiResultApplyM?.jsonBody ?? ''),
                                                                                    r'''$.Message''',
                                                                                  ).toString();
                                                                                  _model.hasErrorAPI = true;
                                                                                });
                                                                                if (shouldSetState) setState(() {});
                                                                                return;
                                                                              }
                                                                            } else {
                                                                              setState(() {
                                                                                _model.errorCaptcha = true;
                                                                              });
                                                                              if (shouldSetState) {
                                                                                setState(() {});
                                                                              }
                                                                              return;
                                                                            }

                                                                            if (shouldSetState) {
                                                                              setState(() {});
                                                                            }
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        width:
                                                                            8.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 24.0)),
                                                      ),
                                                    ].divide(
                                                        const SizedBox(height: 32.0)),
                                                  ),
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
