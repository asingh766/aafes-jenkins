import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/login/custom_state_selector/custom_state_selector_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_general/custom_outlined_text_field_general_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_s_s_n/custom_outlined_text_field_s_s_n_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'manage_auth_users_step3_model.dart';
export 'manage_auth_users_step3_model.dart';

class ManageAuthUsersStep3Widget extends StatefulWidget {
  const ManageAuthUsersStep3Widget({
    super.key,
    required this.firstNameInitialValueD,
    required this.middleInitialValueD,
    required this.lastNameInitialValueD,
    required this.ssnInitialValueD,
    required this.successCallback,
    required this.firstNameInitialValueM,
    required this.middleInitialValueM,
    required this.lastNameInitialValueM,
    required this.ssnInitialValueM,
    required this.accountNumber,
    required this.cancelCallback,
  });

  final String? firstNameInitialValueD;
  final String? middleInitialValueD;
  final String? lastNameInitialValueD;
  final String? ssnInitialValueD;
  final Future Function()? successCallback;
  final String? firstNameInitialValueM;
  final String? middleInitialValueM;
  final String? lastNameInitialValueM;
  final String? ssnInitialValueM;
  final String? accountNumber;
  final Future Function()? cancelCallback;

  @override
  State<ManageAuthUsersStep3Widget> createState() =>
      _ManageAuthUsersStep3WidgetState();
}

class _ManageAuthUsersStep3WidgetState extends State<ManageAuthUsersStep3Widget>
    with TickerProviderStateMixin {
  late ManageAuthUsersStep3Model _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ManageAuthUsersStep3Model());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // reset text fields
      setState(() {
        _model.firstNameTextField2DModel.textController?.clear();
        _model.middleNameTextField2DModel.textController?.clear();
        _model.lastNameTextField2DModel.textController?.clear();
        _model.streetNameTextFieldDModel.textController?.clear();
        _model.aPTTextFieldDModel.textController?.clear();
        _model.cityTextFieldDModel.textController?.clear();
        _model.zipTextFieldDModel.textController?.clear();
        _model.firstNameTextField2MModel.textController?.clear();
        _model.middleNameTextField2MModel.textController?.clear();
        _model.lastNameTextField2MModel.textController?.clear();
        _model.streetNameTextFieldMModel.textController?.clear();
        _model.aPTTextFieldMModel.textController?.clear();
        _model.zipTextFieldMModel.textController?.clear();
        _model.cityTextFieldMModel.textController?.clear();
      });
      // reset dropdown
      setState(() {
        _model.customStateSelectorDModel.stateDropDownValueController?.reset();
        _model.customStateSelectorMModel.stateDropDownValueController?.reset();
      });
      // reset radiobutton
      setState(() {
        _model.addressSelectionDCBDValueController?.reset();
        _model.addressSelectionDCBMValueController?.reset();
      });
      setState(() {
        _model.enableNames = false;
        _model.enableSSN = false;
        _model.errorSSN = ' ';
        _model.hasErrorSSN = false;
        _model.enableTempAddress = false;
        _model.states = [];
      });
      await action_blocks.showLoadingDialog(context);
      _model.apiResultStates = await StatesCall.call(
        dynamicBaseURL: FFAppState().dynamicBaseURL,
      );
      Navigator.pop(context);
      if ((_model.apiResultStates?.succeeded ?? true)) {
        _model.updatePage(() {
          _model.states = ((_model.apiResultStates?.jsonBody ?? '')
                  .toList()
                  .map<StateStruct?>(StateStruct.maybeFromMap)
                  .toList() as Iterable<StateStruct?>)
              .withoutNulls
              .toList()
              .cast<StateStruct>();
          _model.errorAPI = ' ';
          _model.hasErrorAPI = false;
        });
      } else {
        setState(() {
          _model.errorAPI = getJsonField(
            (_model.apiResultStates?.jsonBody ?? ''),
            r'''$.Message''',
          ).toString().toString();
          _model.hasErrorAPI = true;
        });
      }
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, 0.0),
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
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (_model.hasErrorAPI)
                    wrapWithModel(
                      model: _model.errorBannerOutlinedModel1,
                      updateCallback: () => setState(() {}),
                      child: ErrorBannerOutlinedWidget(
                        message: _model.errorAPI,
                      ),
                    ),
                  Text(
                    'Provide the following details for the person you would like to add as an Authorized User to your account.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Arial',
                          color: FlutterFlowTheme.of(context).black,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.firstNameTextField2DModel,
                                updateCallback: () => setState(() {}),
                                child: CustomOutlinedTextFieldGeneralWidget(
                                  enabled: _model.enableNames,
                                  title: 'First Name',
                                  icon: const Icon(
                                    Icons.ten_k,
                                    color: Colors.transparent,
                                  ),
                                  hasIconAction: false,
                                  isRequired: true,
                                  infoMessage: '',
                                  hasError: false,
                                  hintText: '',
                                  initialValue: widget.firstNameInitialValueD,
                                  defaultFocus: false,
                                  onIconTap: () async {},
                                  validate: () async {},
                                  resetError: () async {},
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.middleNameTextField2DModel,
                                updateCallback: () => setState(() {}),
                                child: CustomOutlinedTextFieldGeneralWidget(
                                  enabled: _model.enableNames,
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
                                  initialValue: widget.middleInitialValueD,
                                  defaultFocus: false,
                                  maxLength: 1,
                                  onIconTap: () async {},
                                  validate: () async {},
                                  resetError: () async {},
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.lastNameTextField2DModel,
                                updateCallback: () => setState(() {}),
                                child: CustomOutlinedTextFieldGeneralWidget(
                                  enabled: _model.enableNames,
                                  title: 'Last Name',
                                  icon: const Icon(
                                    Icons.ten_k,
                                    color: Colors.transparent,
                                  ),
                                  hasIconAction: false,
                                  isRequired: true,
                                  infoMessage: '',
                                  hasError: false,
                                  hintText: '',
                                  initialValue: widget.lastNameInitialValueD,
                                  defaultFocus: false,
                                  onIconTap: () async {},
                                  validate: () async {},
                                  resetError: () async {},
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              height: 80.0,
                              decoration: const BoxDecoration(),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      setState(() {
                                        _model.enableNames = true;
                                      });
                                    },
                                    child: Text(
                                      'Edit',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
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
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: const BoxDecoration(),
                            ),
                          ),
                        ].divide(const SizedBox(width: 16.0)),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.sSNTextField2DModel,
                                updateCallback: () => setState(() {}),
                                child: CustomOutlinedTextFieldSSNWidget(
                                  enabled: _model.enableSSN,
                                  title: 'Social Security Number',
                                  icon: const Icon(
                                    Icons.ten_k,
                                    color: Colors.transparent,
                                  ),
                                  hasIconAction: false,
                                  isRequired: false,
                                  infoMessage: '',
                                  hasError: false,
                                  hint: 'XXX - XX - XXXX',
                                  initialValue: widget.ssnInitialValueD,
                                  onIconTap: () async {},
                                  validate: () async {},
                                  resetError: () async {},
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
                              setState(() {
                                _model.enableSSN = true;
                              });
                            },
                            child: Container(
                              height: 80.0,
                              decoration: const BoxDecoration(),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Text(
                                    'Edit',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
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
                          if (MediaQuery.sizeOf(context).width >=
                              kBreakpointLarge)
                            Expanded(
                              child: Container(
                                decoration: const BoxDecoration(),
                              ),
                            ),
                        ].divide(const SizedBox(width: 16.0)),
                      ),
                      Text(
                        'Card will be mailed to:',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Arial',
                              color: FlutterFlowTheme.of(context).black,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        child: FlutterFlowRadioButton(
                          options: FFAppState().addressList.toList(),
                          onChanged: (val) async {
                            setState(() {});
                            if (_model.addressSelectionDCBDValue ==
                                'Other Address') {
                              _model.updatePage(() {
                                _model.enableTempAddress = true;
                              });
                            } else {
                              _model.updatePage(() {
                                _model.enableTempAddress = false;
                              });
                            }
                          },
                          controller:
                              _model.addressSelectionDCBDValueController ??=
                                  FormFieldController<String>(
                                      FFAppState().addressList.first),
                          optionHeight: 32.0,
                          optionWidth: MediaQuery.sizeOf(context).width * 0.5,
                          textStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Arial',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                          selectedTextStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Arial',
                                    color: FlutterFlowTheme.of(context).black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                          buttonPosition: RadioButtonPosition.left,
                          direction: Axis.vertical,
                          radioButtonColor:
                              FlutterFlowTheme.of(context).primary,
                          inactiveRadioButtonColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          toggleable: false,
                          horizontalAlignment: WrapAlignment.start,
                          verticalAlignment: WrapCrossAlignment.start,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(),
                                    child: wrapWithModel(
                                      model: _model.streetNameTextFieldDModel,
                                      updateCallback: () => setState(() {}),
                                      child:
                                          CustomOutlinedTextFieldGeneralWidget(
                                        enabled:
                                            (FFAppState().addressList.length ==
                                                        1) &&
                                                    (FFAppState()
                                                            .addressList
                                                            .first ==
                                                        'Other Address')
                                                ? true
                                                : _model.enableTempAddress,
                                        title: 'Street Name',
                                        icon: const Icon(
                                          Icons.ten_k,
                                          color: Colors.transparent,
                                        ),
                                        hasIconAction: false,
                                        isRequired: true,
                                        infoMessage: '',
                                        hasError: false,
                                        hintText: '',
                                        defaultFocus: true,
                                        onIconTap: () async {},
                                        validate: () async {},
                                        resetError: () async {},
                                      ),
                                    ),
                                  ),
                                ),
                                if (MediaQuery.sizeOf(context).width >=
                                    kBreakpointLarge)
                                  Expanded(
                                    child: Container(
                                      decoration: const BoxDecoration(),
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
                                    child: wrapWithModel(
                                      model: _model.aPTTextFieldDModel,
                                      updateCallback: () => setState(() {}),
                                      child:
                                          CustomOutlinedTextFieldGeneralWidget(
                                        enabled:
                                            (FFAppState().addressList.length ==
                                                        1) &&
                                                    (FFAppState()
                                                            .addressList
                                                            .first ==
                                                        'Other Address')
                                                ? true
                                                : _model.enableTempAddress,
                                        title: 'Apt# or Suite # or Room#',
                                        icon: const Icon(
                                          Icons.ten_k,
                                          color: Colors.transparent,
                                        ),
                                        hasIconAction: false,
                                        isRequired: true,
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
                                if (MediaQuery.sizeOf(context).width >=
                                    kBreakpointLarge)
                                  Expanded(
                                    child: Container(
                                      decoration: const BoxDecoration(),
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
                                    child: wrapWithModel(
                                      model: _model.cityTextFieldDModel,
                                      updateCallback: () => setState(() {}),
                                      child:
                                          CustomOutlinedTextFieldGeneralWidget(
                                        enabled:
                                            (FFAppState().addressList.length ==
                                                        1) &&
                                                    (FFAppState()
                                                            .addressList
                                                            .first ==
                                                        'Other Address')
                                                ? true
                                                : _model.enableTempAddress,
                                        title: 'City',
                                        icon: const Icon(
                                          Icons.ten_k,
                                          color: Colors.transparent,
                                        ),
                                        hasIconAction: false,
                                        isRequired: true,
                                        infoMessage: '',
                                        hasError: false,
                                        hintText: '',
                                        defaultFocus: true,
                                        onIconTap: () async {},
                                        validate: () async {},
                                        resetError: () async {},
                                      ),
                                    ),
                                  ),
                                ),
                                if (MediaQuery.sizeOf(context).width >=
                                    kBreakpointLarge)
                                  Expanded(
                                    child: Container(
                                      decoration: const BoxDecoration(),
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
                                    child: wrapWithModel(
                                      model: _model.customStateSelectorDModel,
                                      updateCallback: () => setState(() {}),
                                      child: CustomStateSelectorWidget(
                                        title: 'State',
                                        states: _model.states,
                                        enable:
                                            (FFAppState().addressList.length ==
                                                        1) &&
                                                    (FFAppState()
                                                            .addressList
                                                            .first ==
                                                        'Other Address')
                                                ? true
                                                : _model.enableTempAddress,
                                      ),
                                    ),
                                  ),
                                ),
                                if (MediaQuery.sizeOf(context).width >=
                                    kBreakpointLarge)
                                  Expanded(
                                    child: Container(
                                      decoration: const BoxDecoration(),
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
                                    child: wrapWithModel(
                                      model: _model.zipTextFieldDModel,
                                      updateCallback: () => setState(() {}),
                                      child:
                                          CustomOutlinedTextFieldGeneralWidget(
                                        enabled:
                                            (FFAppState().addressList.length ==
                                                        1) &&
                                                    (FFAppState()
                                                            .addressList
                                                            .first ==
                                                        'Other Address')
                                                ? true
                                                : _model.enableTempAddress,
                                        title: 'Zip Code',
                                        icon: const Icon(
                                          Icons.ten_k,
                                          color: Colors.transparent,
                                        ),
                                        hasIconAction: false,
                                        isRequired: true,
                                        infoMessage: '',
                                        hasError: false,
                                        hintText: '',
                                        defaultFocus: true,
                                        onIconTap: () async {},
                                        validate: () async {},
                                        resetError: () async {},
                                      ),
                                    ),
                                  ),
                                ),
                                if (MediaQuery.sizeOf(context).width >=
                                    kBreakpointLarge)
                                  Expanded(
                                    child: Container(
                                      decoration: const BoxDecoration(),
                                    ),
                                  ),
                              ],
                            ),
                          ].divide(const SizedBox(height: 16.0)),
                        ),
                      ),
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
                                await widget.cancelCallback?.call();
                              },
                            ),
                          ),
                          wrapWithModel(
                            model: _model.commonCustomButtonDModel,
                            updateCallback: () => setState(() {}),
                            child: CommonCustomButtonWidget(
                              titile: 'Submit',
                              isDisabled: !((_model.firstNameTextField2DModel.value != null && _model.firstNameTextField2DModel.value != '') &&
                                  (_model.lastNameTextField2DModel.value != null &&
                                      _model.lastNameTextField2DModel.value !=
                                          '') &&
                                  (_model.sSNTextField2DModel.ssnValue != null &&
                                      _model.sSNTextField2DModel.ssnValue !=
                                          '') &&
                                  !_model.hasErrorSSN &&
                                  (_model.addressSelectionDCBDValue != null &&
                                      _model.addressSelectionDCBDValue != '') &&
                                  (_model.addressSelectionDCBDValue == 'Other Address'
                                      ? (_model.streetNameTextFieldDModel.value != null &&
                                          _model.streetNameTextFieldDModel.value !=
                                              '')
                                      : true) &&
                                  (_model.addressSelectionDCBDValue == 'Other Address'
                                      ? (_model.aPTTextFieldDModel.value != null &&
                                          _model.aPTTextFieldDModel.value != '')
                                      : true) &&
                                  (_model.addressSelectionDCBDValue == 'Other Address'
                                      ? (_model.cityTextFieldDModel.value != null &&
                                          _model.cityTextFieldDModel.value !=
                                              '')
                                      : true) &&
                                  (_model.addressSelectionDCBDValue == 'Other Address'
                                      ? (_model.customStateSelectorDModel.stateDropDownValue !=
                                          null)
                                      : true) &&
                                  (_model.addressSelectionDCBDValue == 'Other Address'
                                      ? (_model.zipTextFieldDModel.value != null &&
                                          _model.zipTextFieldDModel.value != '')
                                      : true) &&
                                  (FFAppState().addressList.isNotEmpty)),
                              isEditIconVisible: false,
                              onTap: () async {
                                var shouldSetState = false;
                                await action_blocks.showLoadingDialog(context);
                                _model.apiResultAddUserD =
                                    await AuthorisedUsersGroup
                                        .addAuthorisedUsersCall
                                        .call(
                                  authToken: currentAuthenticationToken,
                                  userId:
                                      FFAppState().selectedUserId.toString(),
                                  accountNumber: widget.accountNumber,
                                  firstName:
                                      _model.firstNameTextField2DModel.value,
                                  middleName:
                                      _model.middleNameTextField2DModel.value,
                                  lastName:
                                      _model.lastNameTextField2DModel.value,
                                  ssn: functions.toInt(
                                      _model.sSNTextField2DModel.ssnValue!,
                                      'ssn'),
                                  billingStreetName:
                                      _model.addressSelectionDCBDValue ==
                                              'Other Address'
                                          ? null
                                          : getJsonField(
                                              FFAppState().addressJson,
                                              r'''$.Address1''',
                                            ).toString(),
                                  billingAptRoomNumber:
                                      _model.addressSelectionDCBDValue ==
                                              'Other Address'
                                          ? null
                                          : getJsonField(
                                              FFAppState().addressJson,
                                              r'''$.Address2''',
                                            ).toString(),
                                  billingCity:
                                      _model.addressSelectionDCBDValue ==
                                              'Other Address'
                                          ? null
                                          : getJsonField(
                                              FFAppState().addressJson,
                                              r'''$.City''',
                                            ).toString(),
                                  billingStateAbv:
                                      _model.addressSelectionDCBDValue ==
                                              'Other Address'
                                          ? null
                                          : getJsonField(
                                              FFAppState().addressJson,
                                              r'''$.State''',
                                            ).toString(),
                                  billingZip:
                                      _model.addressSelectionDCBDValue ==
                                              'Other Address'
                                          ? null
                                          : getJsonField(
                                              FFAppState().addressJson,
                                              r'''$.Zip''',
                                            ).toString(),
                                  billingZipPlus: '123',
                                  tempAddStreetName: _model
                                              .addressSelectionDCBDValue ==
                                          'Other Address'
                                      ? _model.streetNameTextFieldDModel.value
                                      : null,
                                  tempAddAptRoomNumber:
                                      _model.addressSelectionDCBDValue ==
                                              'Other Address'
                                          ? _model.aPTTextFieldDModel.value
                                          : null,
                                  tempAddCity:
                                      _model.addressSelectionDCBDValue ==
                                              'Other Address'
                                          ? _model.cityTextFieldDModel.value
                                          : null,
                                  tempAddStateAbv:
                                      _model.addressSelectionDCBDValue ==
                                              'Other Address'
                                          ? _model.customStateSelectorDModel
                                              .stateDropDownValue
                                              ?.toString()
                                          : null,
                                  tempAddZip:
                                      _model.addressSelectionDCBDValue ==
                                              'Other Address'
                                          ? _model.zipTextFieldDModel.value
                                          : null,
                                  tempAddZipPlus: '123',
                                  dynamicBaseURL: FFAppState().dynamicBaseURL,
                                );
                                shouldSetState = true;
                                Navigator.pop(context);
                                if ((_model.apiResultAddUserD?.succeeded ??
                                    true)) {
                                  setState(() {
                                    _model.errorAPI = ' ';
                                    _model.hasErrorAPI = false;
                                  });
                                  await widget.successCallback?.call();
                                  if (shouldSetState) setState(() {});
                                  return;
                                } else {
                                  setState(() {
                                    _model.errorAPI = getJsonField(
                                      (_model.apiResultAddUserD?.jsonBody ??
                                          ''),
                                      r'''$.Message''',
                                    ).toString();
                                    _model.hasErrorAPI = true;
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
                    ].divide(const SizedBox(height: 16.0)),
                  ),
                ].divide(const SizedBox(height: 26.0)),
              ),
            ),
          ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation1']!),
        if (responsiveVisibility(
          context: context,
          desktop: false,
        ))
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (_model.hasErrorAPI)
                    wrapWithModel(
                      model: _model.errorBannerOutlinedModel2,
                      updateCallback: () => setState(() {}),
                      child: ErrorBannerOutlinedWidget(
                        message: _model.errorAPI,
                      ),
                    ),
                  Text(
                    'Provide the following details for the person you would like to add as an Authorized User to your account.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Arial',
                          color: FlutterFlowTheme.of(context).black,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      wrapWithModel(
                        model: _model.firstNameTextField2MModel,
                        updateCallback: () => setState(() {}),
                        child: CustomOutlinedTextFieldGeneralWidget(
                          enabled: _model.enableNames,
                          title: 'First Name',
                          icon: const Icon(
                            Icons.ten_k,
                            color: Colors.transparent,
                          ),
                          hasIconAction: false,
                          isRequired: true,
                          infoMessage: '',
                          hasError: false,
                          hintText: '',
                          initialValue: widget.firstNameInitialValueM,
                          defaultFocus: false,
                          onIconTap: () async {},
                          validate: () async {},
                          resetError: () async {},
                        ),
                      ),
                      wrapWithModel(
                        model: _model.middleNameTextField2MModel,
                        updateCallback: () => setState(() {}),
                        child: CustomOutlinedTextFieldGeneralWidget(
                          enabled: _model.enableNames,
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
                          initialValue: widget.middleInitialValueM,
                          defaultFocus: false,
                          maxLength: 1,
                          onIconTap: () async {},
                          validate: () async {},
                          resetError: () async {},
                        ),
                      ),
                      wrapWithModel(
                        model: _model.lastNameTextField2MModel,
                        updateCallback: () => setState(() {}),
                        child: CustomOutlinedTextFieldGeneralWidget(
                          enabled: _model.enableNames,
                          title: 'Last Name',
                          icon: const Icon(
                            Icons.ten_k,
                            color: Colors.transparent,
                          ),
                          hasIconAction: false,
                          isRequired: true,
                          infoMessage: '',
                          hasError: false,
                          hintText: '',
                          initialValue: widget.lastNameInitialValueM,
                          defaultFocus: false,
                          onIconTap: () async {},
                          validate: () async {},
                          resetError: () async {},
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            setState(() {
                              _model.enableNames = true;
                            });
                          },
                          child: Text(
                            'Edit',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Arial',
                                  color: const Color(0xFF0000FF),
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                      ),
                      wrapWithModel(
                        model: _model.sSNTextField2MModel,
                        updateCallback: () => setState(() {}),
                        child: CustomOutlinedTextFieldSSNWidget(
                          enabled: _model.enableSSN,
                          title: 'Social Security Number',
                          icon: const Icon(
                            Icons.ten_k,
                            color: Colors.transparent,
                          ),
                          hasIconAction: false,
                          isRequired: false,
                          infoMessage: '',
                          hasError: false,
                          hint: 'XXX - XX - XXXX',
                          initialValue: widget.ssnInitialValueM,
                          onIconTap: () async {},
                          validate: () async {},
                          resetError: () async {},
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            setState(() {
                              _model.enableSSN = true;
                            });
                          },
                          child: Text(
                            'Edit',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Arial',
                                  color: const Color(0xFF0000FF),
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                      ),
                      Text(
                        'Card will be mailed to:',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Arial',
                              color: FlutterFlowTheme.of(context).black,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        child: FlutterFlowRadioButton(
                          options: FFAppState().addressList.toList(),
                          onChanged: (val) async {
                            setState(() {});
                            if (_model.addressSelectionDCBMValue ==
                                'Other Address') {
                              _model.updatePage(() {
                                _model.enableTempAddress = true;
                              });
                            } else {
                              _model.updatePage(() {
                                _model.enableTempAddress = false;
                              });
                            }
                          },
                          controller:
                              _model.addressSelectionDCBMValueController ??=
                                  FormFieldController<String>(
                                      FFAppState().addressList.first),
                          optionHeight: 32.0,
                          optionWidth: MediaQuery.sizeOf(context).width * 0.8,
                          textStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Arial',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                          selectedTextStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Arial',
                                    color: FlutterFlowTheme.of(context).black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                          buttonPosition: RadioButtonPosition.left,
                          direction: Axis.vertical,
                          radioButtonColor:
                              FlutterFlowTheme.of(context).primary,
                          inactiveRadioButtonColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          toggleable: false,
                          horizontalAlignment: WrapAlignment.start,
                          verticalAlignment: WrapCrossAlignment.start,
                        ),
                      ),
                      wrapWithModel(
                        model: _model.streetNameTextFieldMModel,
                        updateCallback: () => setState(() {}),
                        child: CustomOutlinedTextFieldGeneralWidget(
                          enabled: _model.enableTempAddress,
                          title: 'Street Name',
                          icon: const Icon(
                            Icons.ten_k,
                            color: Colors.transparent,
                          ),
                          hasIconAction: false,
                          isRequired: true,
                          infoMessage: '',
                          hasError: false,
                          hintText: '',
                          defaultFocus: true,
                          onIconTap: () async {},
                          validate: () async {},
                          resetError: () async {},
                        ),
                      ),
                      wrapWithModel(
                        model: _model.aPTTextFieldMModel,
                        updateCallback: () => setState(() {}),
                        child: CustomOutlinedTextFieldGeneralWidget(
                          enabled: _model.enableTempAddress,
                          title: 'Apt# or Suite # or Room#',
                          icon: const Icon(
                            Icons.ten_k,
                            color: Colors.transparent,
                          ),
                          hasIconAction: false,
                          isRequired: true,
                          infoMessage: '',
                          hasError: false,
                          hintText: '',
                          defaultFocus: false,
                          onIconTap: () async {},
                          validate: () async {},
                          resetError: () async {},
                        ),
                      ),
                      wrapWithModel(
                        model: _model.cityTextFieldMModel,
                        updateCallback: () => setState(() {}),
                        child: CustomOutlinedTextFieldGeneralWidget(
                          enabled: _model.enableTempAddress,
                          title: 'City',
                          icon: const Icon(
                            Icons.ten_k,
                            color: Colors.transparent,
                          ),
                          hasIconAction: false,
                          isRequired: true,
                          infoMessage: '',
                          hasError: false,
                          hintText: '',
                          defaultFocus: true,
                          onIconTap: () async {},
                          validate: () async {},
                          resetError: () async {},
                        ),
                      ),
                      wrapWithModel(
                        model: _model.customStateSelectorMModel,
                        updateCallback: () => setState(() {}),
                        child: CustomStateSelectorWidget(
                          title: 'State',
                          states: _model.states,
                          enable: _model.enableTempAddress,
                        ),
                      ),
                      wrapWithModel(
                        model: _model.zipTextFieldMModel,
                        updateCallback: () => setState(() {}),
                        child: CustomOutlinedTextFieldGeneralWidget(
                          enabled: _model.enableTempAddress,
                          title: 'Zip Code',
                          icon: const Icon(
                            Icons.ten_k,
                            color: Colors.transparent,
                          ),
                          hasIconAction: false,
                          isRequired: true,
                          infoMessage: '',
                          hasError: false,
                          hintText: '',
                          defaultFocus: true,
                          onIconTap: () async {},
                          validate: () async {},
                          resetError: () async {},
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          wrapWithModel(
                            model: _model.commonCancelButtonModel2,
                            updateCallback: () => setState(() {}),
                            child: CommonCancelButtonWidget(
                              title: 'Cancel',
                              onTap: () async {
                                await widget.cancelCallback?.call();
                              },
                            ),
                          ),
                          wrapWithModel(
                            model: _model.commonCustomButtonMModel,
                            updateCallback: () => setState(() {}),
                            child: CommonCustomButtonWidget(
                              titile: 'Submit',
                              isDisabled: !((_model.firstNameTextField2MModel.value != null &&
                                      _model.firstNameTextField2MModel.value !=
                                          '') &&
                                  (_model.lastNameTextField2MModel.value != null &&
                                      _model.lastNameTextField2MModel.value !=
                                          '') &&
                                  (_model.sSNTextField2MModel.ssnValue != null &&
                                      _model.sSNTextField2MModel.ssnValue !=
                                          '') &&
                                  !_model.hasErrorSSN &&
                                  (_model.addressSelectionDCBMValue != null &&
                                      _model.addressSelectionDCBMValue != '') &&
                                  (_model.addressSelectionDCBMValue == 'Other Address'
                                      ? (_model.streetNameTextFieldMModel.value != null &&
                                          _model.streetNameTextFieldMModel.value !=
                                              '')
                                      : true) &&
                                  (_model.addressSelectionDCBMValue == 'Other Address'
                                      ? (_model.aPTTextFieldMModel.value != null &&
                                          _model.aPTTextFieldMModel.value != '')
                                      : true) &&
                                  (_model.addressSelectionDCBMValue == 'Other Address'
                                      ? (_model.cityTextFieldMModel.value != null &&
                                          _model.cityTextFieldMModel.value !=
                                              '')
                                      : true) &&
                                  (_model.customStateSelectorMModel.stateDropDownValue !=
                                      null) &&
                                  (_model.addressSelectionDCBMValue == 'Other Address'
                                      ? (_model.zipTextFieldMModel.value != null && _model.zipTextFieldMModel.value != '')
                                      : true) &&
                                  (FFAppState().addressList.isNotEmpty)),
                              isEditIconVisible: false,
                              onTap: () async {
                                var shouldSetState = false;
                                await action_blocks.showLoadingDialog(context);
                                _model.apiResultAddUserM =
                                    await AuthorisedUsersGroup
                                        .addAuthorisedUsersCall
                                        .call(
                                  authToken: currentAuthenticationToken,
                                  userId:
                                      FFAppState().selectedUserId.toString(),
                                  accountNumber: widget.accountNumber,
                                  firstName:
                                      _model.firstNameTextField2MModel.value,
                                  middleName:
                                      _model.middleNameTextField2MModel.value,
                                  lastName:
                                      _model.lastNameTextField2MModel.value,
                                  ssn: functions.toInt(
                                      _model.sSNTextField2MModel.ssnValue!,
                                      'ssn'),
                                  billingStreetName:
                                      _model.addressSelectionDCBMValue ==
                                              'Other Address'
                                          ? null
                                          : getJsonField(
                                              FFAppState().addressJson,
                                              r'''$.Address1''',
                                            ).toString(),
                                  billingAptRoomNumber:
                                      _model.addressSelectionDCBMValue ==
                                              'Other Address'
                                          ? null
                                          : getJsonField(
                                              FFAppState().addressJson,
                                              r'''$.Address2''',
                                            ).toString(),
                                  billingCity:
                                      _model.addressSelectionDCBMValue ==
                                              'Other Address'
                                          ? null
                                          : getJsonField(
                                              FFAppState().addressJson,
                                              r'''$.City''',
                                            ).toString(),
                                  billingStateAbv:
                                      _model.addressSelectionDCBMValue ==
                                              'Other Address'
                                          ? null
                                          : getJsonField(
                                              FFAppState().addressJson,
                                              r'''$.State''',
                                            ).toString(),
                                  billingZip:
                                      _model.addressSelectionDCBMValue ==
                                              'Other Address'
                                          ? null
                                          : getJsonField(
                                              FFAppState().addressJson,
                                              r'''$.Zip''',
                                            ).toString(),
                                  billingZipPlus: '123',
                                  tempAddStreetName: _model
                                              .addressSelectionDCBMValue ==
                                          'Other Address'
                                      ? _model.streetNameTextFieldMModel.value
                                      : null,
                                  tempAddAptRoomNumber:
                                      _model.addressSelectionDCBMValue ==
                                              'Other Address'
                                          ? _model.aPTTextFieldMModel.value
                                          : null,
                                  tempAddCity:
                                      _model.addressSelectionDCBMValue ==
                                              'Other Address'
                                          ? _model.cityTextFieldMModel.value
                                          : null,
                                  tempAddStateAbv:
                                      _model.addressSelectionDCBMValue ==
                                              'Other Address'
                                          ? _model.customStateSelectorMModel
                                              .stateDropDownValue
                                              ?.toString()
                                          : null,
                                  tempAddZip:
                                      _model.addressSelectionDCBMValue ==
                                              'Other Address'
                                          ? _model.zipTextFieldMModel.value
                                          : null,
                                  tempAddZipPlus: '123',
                                  dynamicBaseURL: FFAppState().dynamicBaseURL,
                                );
                                shouldSetState = true;
                                Navigator.pop(context);
                                if ((_model.apiResultAddUserM?.succeeded ??
                                    true)) {
                                  setState(() {
                                    _model.errorAPI = ' ';
                                    _model.hasErrorAPI = false;
                                  });
                                  await widget.successCallback?.call();
                                  if (shouldSetState) setState(() {});
                                  return;
                                } else {
                                  setState(() {
                                    _model.errorAPI = getJsonField(
                                      (_model.apiResultAddUserM?.jsonBody ??
                                          ''),
                                      r'''$.Message''',
                                    ).toString();
                                    _model.hasErrorAPI = true;
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
                    ].divide(const SizedBox(height: 16.0)),
                  ),
                ].divide(const SizedBox(height: 26.0)),
              ),
            ),
          ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation2']!),
      ],
    );
  }
}
