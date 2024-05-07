import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_general/custom_outlined_text_field_general_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_phone/custom_outlined_text_field_phone_widget.dart';
import 'dart:async';
import 'registration3_component_widget.dart' show Registration3ComponentWidget;
import 'package:flutter/material.dart';

class Registration3ComponentModel
    extends FlutterFlowModel<Registration3ComponentWidget> {
  ///  Local state fields for this component.

  String errorUserId = ' ';

  bool hasErrorUserId = false;

  String errorPassword = ' ';

  bool hasErrorPassword = false;

  String errorConfirmPassword = ' ';

  bool hasErrorConfirmPassword = false;

  String errorHomePhoneNumber = ' ';

  bool hasErrorHomePhoneNumber = false;

  String errorWorkPhoneNumber = ' ';

  bool hasErrorWorkPhoneNumber = false;

  String errorMobilePhoneNumber = ' ';

  bool hasErrorMobilePhoneNumber = false;

  List<SecurityQuestionStruct> securityQuestion1 = [];
  void addToSecurityQuestion1(SecurityQuestionStruct item) =>
      securityQuestion1.add(item);
  void removeFromSecurityQuestion1(SecurityQuestionStruct item) =>
      securityQuestion1.remove(item);
  void removeAtIndexFromSecurityQuestion1(int index) =>
      securityQuestion1.removeAt(index);
  void insertAtIndexInSecurityQuestion1(
          int index, SecurityQuestionStruct item) =>
      securityQuestion1.insert(index, item);
  void updateSecurityQuestion1AtIndex(
          int index, Function(SecurityQuestionStruct) updateFn) =>
      securityQuestion1[index] = updateFn(securityQuestion1[index]);

  List<SecurityQuestionStruct> securityQuestion2 = [];
  void addToSecurityQuestion2(SecurityQuestionStruct item) =>
      securityQuestion2.add(item);
  void removeFromSecurityQuestion2(SecurityQuestionStruct item) =>
      securityQuestion2.remove(item);
  void removeAtIndexFromSecurityQuestion2(int index) =>
      securityQuestion2.removeAt(index);
  void insertAtIndexInSecurityQuestion2(
          int index, SecurityQuestionStruct item) =>
      securityQuestion2.insert(index, item);
  void updateSecurityQuestion2AtIndex(
          int index, Function(SecurityQuestionStruct) updateFn) =>
      securityQuestion2[index] = updateFn(securityQuestion2[index]);

  List<SecurityQuestionStruct> securityQuestion3 = [];
  void addToSecurityQuestion3(SecurityQuestionStruct item) =>
      securityQuestion3.add(item);
  void removeFromSecurityQuestion3(SecurityQuestionStruct item) =>
      securityQuestion3.remove(item);
  void removeAtIndexFromSecurityQuestion3(int index) =>
      securityQuestion3.removeAt(index);
  void insertAtIndexInSecurityQuestion3(
          int index, SecurityQuestionStruct item) =>
      securityQuestion3.insert(index, item);
  void updateSecurityQuestion3AtIndex(
          int index, Function(SecurityQuestionStruct) updateFn) =>
      securityQuestion3[index] = updateFn(securityQuestion3[index]);

  String securityQuestionAnswer1 = ' ';

  String securityQuestionAnswer2 = ' ';

  String securityQuestionAnswer3 = ' ';

  bool hasErrorSQ1 = false;

  bool hasErrorSQ2 = false;

  bool hasErrorSQ3 = false;

  String errorAPI = ' ';

  bool hasErrorAPI = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Security Questions)] action in Registration3Component widget.
  ApiCallResponse? apiSecurityQuestion1D;
  // Stores action output result for [Backend Call - API (Security Questions)] action in Registration3Component widget.
  ApiCallResponse? apiSecurityQuestion2D;
  // Stores action output result for [Backend Call - API (Security Questions)] action in Registration3Component widget.
  ApiCallResponse? apiSecurityQuestion3D;
  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel1;
  // Model for UserIdTextFieldD.
  late CustomOutlinedTextFieldGeneralModel userIdTextFieldDModel;
  // Model for HomePhoneTextFieldD.
  late CustomOutlinedTextFieldPhoneModel homePhoneTextFieldDModel;
  // Model for WorkPhoneTextFieldD.
  late CustomOutlinedTextFieldPhoneModel workPhoneTextFieldDModel;
  // Model for MobilePhoneTextFieldD.
  late CustomOutlinedTextFieldPhoneModel mobilePhoneTextFieldDModel;
  // State field(s) for SecurityQuestionDropDown1 widget.
  int? securityQuestionDropDown1Value;
  FormFieldController<int>? securityQuestionDropDown1ValueController;
  // State field(s) for SecurityQuestionDropDown2 widget.
  int? securityQuestionDropDown2Value;
  FormFieldController<int>? securityQuestionDropDown2ValueController;
  // State field(s) for SecurityQuestionDropDown3 widget.
  int? securityQuestionDropDown3Value;
  FormFieldController<int>? securityQuestionDropDown3ValueController;
  // Model for CommonCancelButtonD.
  late CommonCancelButtonModel commonCancelButtonDModel;
  // Model for CommonCustomButtonD.
  late CommonCustomButtonModel commonCustomButtonDModel;
  // Stores action output result for [Backend Call - API (createProfile)] action in CommonCustomButtonD widget.
  ApiCallResponse? apiResponseCreateProfile;
  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel2;
  // Model for UserIdTextFieldM.
  late CustomOutlinedTextFieldGeneralModel userIdTextFieldMModel;
  // Model for HomePhoneTextFieldM.
  late CustomOutlinedTextFieldPhoneModel homePhoneTextFieldMModel;
  // Model for WorkPhoneTextFieldM.
  late CustomOutlinedTextFieldPhoneModel workPhoneTextFieldMModel;
  // Model for MobilePhoneTextFieldM.
  late CustomOutlinedTextFieldPhoneModel mobilePhoneTextFieldMModel;
  // State field(s) for SecurityQuestionDropDown1M widget.
  int? securityQuestionDropDown1MValue;
  FormFieldController<int>? securityQuestionDropDown1MValueController;
  // State field(s) for SecurityQuestionDropDown2M widget.
  int? securityQuestionDropDown2MValue;
  FormFieldController<int>? securityQuestionDropDown2MValueController;
  // State field(s) for SecurityQuestionDropDown3M widget.
  int? securityQuestionDropDown3MValue;
  FormFieldController<int>? securityQuestionDropDown3MValueController;
  // Model for CommonCancelButtonM.
  late CommonCancelButtonModel commonCancelButtonMModel;
  // Model for CommonCustomButtonM.
  late CommonCustomButtonModel commonCustomButtonMModel;
  // Stores action output result for [Backend Call - API (createProfile)] action in CommonCustomButtonM widget.
  ApiCallResponse? apiResponseCreateProfileM;

  @override
  void initState(BuildContext context) {
    errorBannerOutlinedModel1 =
        createModel(context, () => ErrorBannerOutlinedModel());
    userIdTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    homePhoneTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldPhoneModel());
    workPhoneTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldPhoneModel());
    mobilePhoneTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldPhoneModel());
    commonCancelButtonDModel =
        createModel(context, () => CommonCancelButtonModel());
    commonCustomButtonDModel =
        createModel(context, () => CommonCustomButtonModel());
    errorBannerOutlinedModel2 =
        createModel(context, () => ErrorBannerOutlinedModel());
    userIdTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    homePhoneTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldPhoneModel());
    workPhoneTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldPhoneModel());
    mobilePhoneTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldPhoneModel());
    commonCancelButtonMModel =
        createModel(context, () => CommonCancelButtonModel());
    commonCustomButtonMModel =
        createModel(context, () => CommonCustomButtonModel());
  }

  @override
  void dispose() {
    errorBannerOutlinedModel1.dispose();
    userIdTextFieldDModel.dispose();
    homePhoneTextFieldDModel.dispose();
    workPhoneTextFieldDModel.dispose();
    mobilePhoneTextFieldDModel.dispose();
    commonCancelButtonDModel.dispose();
    commonCustomButtonDModel.dispose();
    errorBannerOutlinedModel2.dispose();
    userIdTextFieldMModel.dispose();
    homePhoneTextFieldMModel.dispose();
    workPhoneTextFieldMModel.dispose();
    mobilePhoneTextFieldMModel.dispose();
    commonCancelButtonMModel.dispose();
    commonCustomButtonMModel.dispose();
  }

  /// Action blocks.
  Future validatePasswordFlow(BuildContext context) async {
    if (FFAppState().password != '') {
      if (FFAppState().isPasswordValid) {
        if ((FFAppState().confirmPassword != '') &&
            FFAppState().isConfirmPasswordValid) {
          if (FFAppState().password == FFAppState().confirmPassword) {
            errorPassword = ' ';
            hasErrorPassword = false;
            errorConfirmPassword = ' ';
            hasErrorConfirmPassword = false;
          } else {
            errorPassword = '';
            hasErrorPassword = true;
            errorConfirmPassword =
                'Your passwords do not match. Please re-enter your passwords.';
            hasErrorConfirmPassword = true;
          }
        } else {
          return;
        }
      } else {
        errorPassword = 'Password does not meet all requirements ';
        hasErrorPassword = true;
      }
    } else {
      return;
    }
  }

  Future validateConfirmPasswordFlow(BuildContext context) async {
    if (FFAppState().confirmPassword != '') {
      if (FFAppState().isConfirmPasswordValid) {
        if (FFAppState().isPasswordValid) {
          if (FFAppState().password == FFAppState().confirmPassword) {
            // Reset Errors
            errorPassword = ' ';
            hasErrorPassword = false;
            errorConfirmPassword = ' ';
            hasErrorConfirmPassword = false;
          } else {
            // Triiger equality error
            errorPassword = '';
            hasErrorPassword = true;
            errorConfirmPassword =
                'Your passwords do not match. Please re-enter your passwords.';
            hasErrorConfirmPassword = true;
          }

          return;
        } else {
          return;
        }
      } else {
        // Trigger Errors
        errorConfirmPassword = 'Password does not meet all requirements ';
        hasErrorConfirmPassword = true;
        return;
      }
    } else {
      return;
    }
  }
}
