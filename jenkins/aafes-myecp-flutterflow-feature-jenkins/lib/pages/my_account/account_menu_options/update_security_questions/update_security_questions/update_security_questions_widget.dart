import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/common_circular_indicator/common_circular_indicator_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/my_account/update_email_address/added2_f_a_sec_comp/added2_f_a_sec_comp_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'update_security_questions_model.dart';
export 'update_security_questions_model.dart';

class UpdateSecurityQuestionsWidget extends StatefulWidget {
  const UpdateSecurityQuestionsWidget({super.key});

  @override
  State<UpdateSecurityQuestionsWidget> createState() =>
      _UpdateSecurityQuestionsWidgetState();
}

class _UpdateSecurityQuestionsWidgetState
    extends State<UpdateSecurityQuestionsWidget> {
  late UpdateSecurityQuestionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpdateSecurityQuestionsModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.isTwoFactorAuth = false;
        _model.isEdit = false;
      });
      await _model.onInitialization(context);
      setState(() {});
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

    return Builder(
      builder: (context) {
        if (!_model.isTwoFactorAuth!) {
          return Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                            'Update Security Questions',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Arial',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
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
                    if (_model.isLoading || _model.hasError) {
                      return Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 0.5,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(8.0),
                            bottomRight: Radius.circular(8.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(0.0),
                          ),
                        ),
                        child: Builder(
                          builder: (context) {
                            if (_model.isLoading == true) {
                              return wrapWithModel(
                                model: _model.commonCircularIndicatorModel,
                                updateCallback: () => setState(() {}),
                                child: const CommonCircularIndicatorWidget(),
                              );
                            } else {
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'Error loading data... Please try again',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Arial',
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await _model.onInitialization(context);
                                      setState(() {});
                                    },
                                    text: 'Reload',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Arial',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 8.0)),
                              );
                            }
                          },
                        ),
                      );
                    } else {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (_model.isSucess && !_model.isEdit)
                              Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).success,
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).success,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    'Your profile has been successfully updated.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Arial',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                              ),
                            if ((_model.error != null && _model.error != '') &&
                                _model.isEdit)
                              Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).error,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    _model.error!,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Arial',
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                              ),
                            Align(
                              alignment: const AlignmentDirectional(1.0, 0.0),
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '*',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Arial',
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    const TextSpan(
                                      text: '  Required Fields',
                                      style: TextStyle(),
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
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Material(
                                  color: Colors.transparent,
                                  elevation: 2.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Security Question 1',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Arial',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: ' *',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    fontSize: 14.0,
                                                  ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Arial',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              FlutterFlowDropDown<int>(
                                                controller: _model
                                                        .question1ValueController ??=
                                                    FormFieldController<int>(
                                                  _model.question1Value ??=
                                                      _model.userQuestionAnswers !=
                                                              null
                                                          ? _model
                                                              .userQuestionAnswers
                                                              ?.questionID1
                                                          : _model
                                                              .securityQuestion1
                                                              .first
                                                              .questionID,
                                                ),
                                                options: List<int>.from(_model
                                                    .securityQuestion1
                                                    .map((e) => e.questionID)
                                                    .toList()),
                                                optionLabels: _model
                                                    .securityQuestion1
                                                    .map((e) => e.question)
                                                    .toList(),
                                                onChanged: (val) async {
                                                  setState(() => _model
                                                      .question1Value = val);
                                                  setState(() {
                                                    _model.securityQuestionAnswer1 =
                                                        '';
                                                  });
                                                },
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Arial',
                                                      color: _model.isEdit
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .accent3,
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: false,
                                                    ),
                                                hintText: 'Select a Question',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 22.0,
                                                ),
                                                fillColor: _model.isEdit
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor: _model.isEdit
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .accent2,
                                                borderWidth: 1.0,
                                                borderRadius: 6.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                disabled: !_model.isEdit,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                              custom_widgets
                                                  .CustomOutlinedTextFieldWidget(
                                                width: double.infinity,
                                                height: 120.0,
                                                readOnly: !_model.isEdit,
                                                value: _model
                                                    .securityQuestionAnswer1!,
                                                onValueChange: (data) async {
                                                  setState(() {
                                                    _model.securityQuestionAnswer1 =
                                                        data;
                                                  });
                                                },
                                                hasError: (error) async {
                                                  setState(() {});
                                                },
                                              ),
                                            ].divide(const SizedBox(height: 16.0)),
                                          ),
                                        ].divide(const SizedBox(height: 4.0)),
                                      ),
                                    ),
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  elevation: 2.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Security Question 2',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Arial',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: ' *',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    fontSize: 14.0,
                                                  ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Arial',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              FlutterFlowDropDown<int>(
                                                controller: _model
                                                        .question2ValueController ??=
                                                    FormFieldController<int>(
                                                  _model.question2Value ??=
                                                      _model.userQuestionAnswers !=
                                                              null
                                                          ? _model
                                                              .userQuestionAnswers
                                                              ?.questionID2
                                                          : _model
                                                              .securityQuestion2
                                                              .first
                                                              .questionID,
                                                ),
                                                options: List<int>.from(_model
                                                    .securityQuestion2
                                                    .map((e) => e.questionID)
                                                    .toList()),
                                                optionLabels: _model
                                                    .securityQuestion2
                                                    .map((e) => e.question)
                                                    .toList(),
                                                onChanged: (val) async {
                                                  setState(() => _model
                                                      .question2Value = val);
                                                  setState(() {
                                                    _model.securityQuestionAnswer2 =
                                                        '';
                                                  });
                                                },
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Arial',
                                                      color: _model.isEdit
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .accent3,
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: false,
                                                    ),
                                                hintText: 'Select a Question',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 22.0,
                                                ),
                                                fillColor: _model.isEdit
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor: _model.isEdit
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .accent2,
                                                borderWidth: 1.0,
                                                borderRadius: 6.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                disabled: !_model.isEdit,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                              custom_widgets
                                                  .CustomOutlinedTextFieldWidget(
                                                width: double.infinity,
                                                height: 120.0,
                                                readOnly: !_model.isEdit,
                                                value: _model
                                                    .securityQuestionAnswer2!,
                                                onValueChange: (data) async {
                                                  setState(() {
                                                    _model.securityQuestionAnswer2 =
                                                        data;
                                                  });
                                                },
                                                hasError: (error) async {
                                                  setState(() {
                                                    _model.hasErrorSQ2 = error;
                                                  });
                                                },
                                              ),
                                            ].divide(const SizedBox(height: 16.0)),
                                          ),
                                        ].divide(const SizedBox(height: 4.0)),
                                      ),
                                    ),
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  elevation: 2.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Security Question 3',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Arial',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: ' *',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    fontSize: 14.0,
                                                  ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Arial',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              FlutterFlowDropDown<int>(
                                                controller: _model
                                                        .question3ValueController ??=
                                                    FormFieldController<int>(
                                                  _model.question3Value ??=
                                                      _model.userQuestionAnswers !=
                                                              null
                                                          ? _model
                                                              .userQuestionAnswers
                                                              ?.questionID3
                                                          : _model
                                                              .securityQuestion3
                                                              .first
                                                              .questionID,
                                                ),
                                                options: List<int>.from(_model
                                                    .securityQuestion3
                                                    .map((e) => e.questionID)
                                                    .toList()),
                                                optionLabels: _model
                                                    .securityQuestion3
                                                    .map((e) => e.question)
                                                    .toList(),
                                                onChanged: (val) async {
                                                  setState(() => _model
                                                      .question3Value = val);
                                                  setState(() {
                                                    _model.securityQuestionAnswer3 =
                                                        '';
                                                  });
                                                },
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Arial',
                                                      color: _model.isEdit
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .accent3,
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: false,
                                                    ),
                                                hintText: 'Select a Question',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 22.0,
                                                ),
                                                fillColor: _model.isEdit
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor: _model.isEdit
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .accent2,
                                                borderWidth: 1.0,
                                                borderRadius: 6.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                disabled: !_model.isEdit,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                              custom_widgets
                                                  .CustomOutlinedTextFieldWidget(
                                                width: double.infinity,
                                                height: 120.0,
                                                readOnly: !_model.isEdit,
                                                value: _model
                                                    .securityQuestionAnswer3!,
                                                onValueChange: (data) async {
                                                  setState(() {
                                                    _model.securityQuestionAnswer3 =
                                                        data;
                                                  });
                                                },
                                                hasError: (error) async {
                                                  setState(() {
                                                    _model.hasErrorSQ3 = error;
                                                  });
                                                },
                                              ),
                                            ].divide(const SizedBox(height: 16.0)),
                                          ),
                                        ].divide(const SizedBox(height: 4.0)),
                                      ),
                                    ),
                                  ),
                                ),
                                if (_model.isEdit)
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 2.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 32.0, 16.0, 32.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  const TextSpan(
                                                    text: 'Current Password ',
                                                    style: TextStyle(),
                                                  ),
                                                  TextSpan(
                                                    text: '*',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Arial',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts: false,
                                                        ),
                                                  )
                                                ],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Arial',
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                            Container(
                                              height: _model.hasPasswordError
                                                  ? 115.0
                                                  : 56.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              child: SizedBox(
                                                width: 300.0,
                                                height: 115.0,
                                                child: custom_widgets
                                                    .PasswordWidget(
                                                  width: 300.0,
                                                  height: 115.0,
                                                  value: _model.password!,
                                                  isLoading: false,
                                                  hasError:
                                                      _model.hasPasswordError ||
                                                          _model.isUpdateError,
                                                  errorMessage: _model
                                                      .passwordErrorMessage,
                                                  onChange: (value) async {
                                                    setState(() {
                                                      _model.password = value;
                                                      _model.passwordErrorMessage =
                                                          null;
                                                      _model.hasPasswordError =
                                                          false;
                                                      _model.isUpdateError =
                                                          false;
                                                    });
                                                  },
                                                ),
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 8.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                if (_model.isEdit)
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () async {
                                          setState(() {
                                            _model.question1ValueController
                                                    ?.value =
                                                _model.userQuestionAnswers!
                                                    .questionID1;
                                          });
                                          setState(() {
                                            _model.question2ValueController
                                                    ?.value =
                                                _model.userQuestionAnswers!
                                                    .questionID2;
                                          });
                                          setState(() {
                                            _model.question3ValueController
                                                    ?.value =
                                                _model.userQuestionAnswers!
                                                    .questionID3;
                                          });
                                          setState(() {
                                            _model.securityQuestionAnswer1 =
                                                _model.userQuestionAnswers
                                                    ?.answer1;
                                            _model.securityQuestionAnswer2 =
                                                _model.userQuestionAnswers
                                                    ?.answer2;
                                            _model.securityQuestionAnswer3 =
                                                _model.userQuestionAnswers
                                                    ?.answer3;
                                            _model.error = null;
                                            _model.isSucess = false;
                                            _model.password = '';
                                            _model.passwordErrorMessage = null;
                                            _model.hasError = false;
                                            _model.isUpdateError = false;
                                          });
                                          setState(() {
                                            _model.isEdit = false;
                                          });
                                        },
                                        text: 'Cancel',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Arial',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: false,
                                              ),
                                          elevation: 3.0,
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        showLoadingIndicator: false,
                                      ),
                                      FFButtonWidget(
                                        onPressed: ((_model
                                                            .securityQuestionAnswer1 ==
                                                        null ||
                                                    _model.securityQuestionAnswer1 ==
                                                        '') ||
                                                (_model.securityQuestionAnswer2 ==
                                                        null ||
                                                    _model.securityQuestionAnswer2 ==
                                                        '') ||
                                                (_model.securityQuestionAnswer3 ==
                                                        null ||
                                                    _model.securityQuestionAnswer3 ==
                                                        '') ||
                                                (_model.password == null ||
                                                    _model.password == '') ||
                                                _model.hasErrorSQ1 ||
                                                _model.hasErrorSQ2 ||
                                                _model.hasErrorSQ3 ||
                                                _model.hasPasswordError)
                                            ? null
                                            : () async {
                                                if (_model.password == null ||
                                                    _model.password == '') {
                                                  setState(() {
                                                    _model.hasPasswordError =
                                                        true;
                                                    _model.passwordErrorMessage =
                                                        'Your password is required to complete your profile updates. Please enter your current password.';
                                                  });
                                                } else {
                                                  await action_blocks
                                                      .showLoadingDialog(
                                                          context);
                                                  setState(() {
                                                    _model.error = null;
                                                    _model.isUpdateError =
                                                        false;
                                                  });
                                                  if ((_model.securityQuestionAnswer1 != _model.userQuestionAnswers?.answer1) ||
                                                      (_model.securityQuestionAnswer2 !=
                                                          _model
                                                              .userQuestionAnswers
                                                              ?.answer2) ||
                                                      (_model.securityQuestionAnswer3 !=
                                                          _model
                                                              .userQuestionAnswers
                                                              ?.answer3) ||
                                                      (_model.question2Value !=
                                                          _model
                                                              .userQuestionAnswers
                                                              ?.questionID2) ||
                                                      (_model.question2Value !=
                                                          _model
                                                              .userQuestionAnswers
                                                              ?.questionID1) ||
                                                      (_model.question3Value !=
                                                          _model
                                                              .userQuestionAnswers
                                                              ?.questionID3)) {
                                                    _model.updateSecurityQuestions =
                                                        await SecurityAlertsGroup
                                                            .updateSecurityQuestionsCall
                                                            .call(
                                                      userId: FFAppState()
                                                          .selectedUserId
                                                          .toString(),
                                                      dataJson: <String,
                                                          dynamic>{
                                                        'QuestionID1': _model
                                                            .question1Value,
                                                        'Answer1': _model
                                                            .securityQuestionAnswer1,
                                                        'QuestionID2': _model
                                                            .question2Value,
                                                        'Answer2': _model
                                                            .securityQuestionAnswer2,
                                                        'QuestionID3': _model
                                                            .question3Value,
                                                        'Answer3': _model
                                                            .securityQuestionAnswer3,
                                                        'CurrentPassword':
                                                            _model.password,
                                                      },
                                                      dynamicBaseURL:
                                                          FFAppState()
                                                              .dynamicBaseURL,
                                                    );
                                                    if ((_model
                                                            .updateSecurityQuestions
                                                            ?.succeeded ??
                                                        true)) {
                                                      _model.updatedUserAnswers =
                                                          await SecurityAlertsGroup
                                                              .userSecurityAnswersCall
                                                              .call(
                                                        userId: FFAppState()
                                                            .selectedUserId
                                                            .toString(),
                                                        dynamicBaseURL:
                                                            FFAppState()
                                                                .dynamicBaseURL,
                                                      );
                                                      if ((_model
                                                              .updatedUserAnswers
                                                              ?.succeeded ??
                                                          true)) {
                                                        setState(() {
                                                          _model.userQuestionAnswers =
                                                              UserSecurityQuestionAnswersStruct
                                                                  .maybeFromMap((_model
                                                                          .updatedUserAnswers
                                                                          ?.jsonBody ??
                                                                      ''));
                                                          _model.securityQuestionAnswer1 =
                                                              UserSecurityQuestionAnswersStruct
                                                                      .maybeFromMap(
                                                                          (_model.updatedUserAnswers?.jsonBody ??
                                                                              ''))
                                                                  ?.answer1;
                                                          _model.securityQuestionAnswer2 =
                                                              UserSecurityQuestionAnswersStruct
                                                                      .maybeFromMap(
                                                                          (_model.updatedUserAnswers?.jsonBody ??
                                                                              ''))
                                                                  ?.answer2;
                                                          _model.securityQuestionAnswer3 =
                                                              UserSecurityQuestionAnswersStruct
                                                                      .maybeFromMap(
                                                                          (_model.updatedUserAnswers?.jsonBody ??
                                                                              ''))
                                                                  ?.answer3;
                                                        });
                                                        setState(() {
                                                          _model
                                                              .question1ValueController
                                                              ?.value = UserSecurityQuestionAnswersStruct
                                                                  .maybeFromMap((_model
                                                                          .updatedUserAnswers
                                                                          ?.jsonBody ??
                                                                      ''))!
                                                              .questionID1;
                                                        });
                                                        setState(() {
                                                          _model
                                                              .question2ValueController
                                                              ?.value = UserSecurityQuestionAnswersStruct
                                                                  .maybeFromMap((_model
                                                                          .updatedUserAnswers
                                                                          ?.jsonBody ??
                                                                      ''))!
                                                              .questionID2;
                                                        });
                                                        setState(() {
                                                          _model
                                                              .question3ValueController
                                                              ?.value = UserSecurityQuestionAnswersStruct
                                                                  .maybeFromMap((_model
                                                                          .updatedUserAnswers
                                                                          ?.jsonBody ??
                                                                      ''))!
                                                              .questionID3;
                                                        });
                                                      }
                                                      setState(() {
                                                        _model.error = null;
                                                        _model.isSucess = true;
                                                        _model.password = '';
                                                        _model.passwordErrorMessage =
                                                            null;
                                                        _model.hasError = false;
                                                      });
                                                      setState(() {
                                                        _model.isEdit = false;
                                                      });
                                                    } else {
                                                      setState(() {
                                                        _model.error =
                                                            getJsonField(
                                                          (_model.updateSecurityQuestions
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.Message''',
                                                        ).toString();
                                                        _model.isUpdateError =
                                                            true;
                                                      });
                                                    }
                                                  } else {
                                                    setState(() {
                                                      _model.isEdit = false;
                                                    });
                                                  }

                                                  Navigator.pop(context);
                                                }

                                                setState(() {});
                                              },
                                        text: 'Save',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Arial',
                                                    color: Colors.white,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts: false,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          disabledColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          disabledTextColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                        ),
                                        showLoadingIndicator: false,
                                      ),
                                    ].divide(const SizedBox(width: 8.0)),
                                  ),
                              ].divide(const SizedBox(height: 32.0)),
                            ),
                            if (!_model.isEdit)
                              Align(
                                alignment: const AlignmentDirectional(1.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    if (FFAppState().login2FARes.is2FANeeded
                                        ? (FFAppState()
                                                .login2FARes
                                                .isTwoFAOtpIn ||
                                            FFAppState()
                                                .login2FARes
                                                .isTwoFAEmailOptIn)
                                        : false) {
                                      setState(() {
                                        _model.error = null;
                                        _model.isSucess = false;
                                        _model.isUpdateError = false;
                                      });
                                      setState(() {
                                        _model.isTwoFactorAuth = true;
                                      });
                                    } else {
                                      setState(() {
                                        _model.error = null;
                                        _model.isSucess = false;
                                        _model.isUpdateError = false;
                                      });
                                      setState(() {
                                        _model.isEdit = true;
                                      });
                                    }
                                  },
                                  text: 'Edit',
                                  icon: const Icon(
                                    Icons.mode_edit_outline_outlined,
                                    size: 20.0,
                                  ),
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Arial',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  showLoadingIndicator: false,
                                ),
                              ),
                          ].divide(const SizedBox(height: 16.0)),
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          );
        } else {
          return wrapWithModel(
            model: _model.added2FASecCompModel,
            updateCallback: () => setState(() {}),
            child: Added2FASecCompWidget(
              isFromManageUserDetails: true,
              confirmCallBack: () async {
                setState(() {
                  _model.isEdit = true;
                  _model.isTwoFactorAuth = false;
                });
              },
              cancelCallBack: () async {
                setState(() {
                  _model.isTwoFactorAuth = false;
                });
              },
            ),
          );
        }
      },
    );
  }
}
