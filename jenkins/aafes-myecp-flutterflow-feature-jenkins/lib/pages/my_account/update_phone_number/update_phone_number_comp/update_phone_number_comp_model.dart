import '/backend/api_requests/api_calls.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_circular_indicator/common_circular_indicator_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/custom_outlined_phone_text_f_general_m_c/custom_outlined_phone_text_f_general_m_c_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/components/success_banner_filled/success_banner_filled_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/my_account/update_email_address/added2_f_a_sec_comp/added2_f_a_sec_comp_widget.dart';
import 'update_phone_number_comp_widget.dart' show UpdatePhoneNumberCompWidget;
import 'package:flutter/material.dart';

class UpdatePhoneNumberCompModel
    extends FlutterFlowModel<UpdatePhoneNumberCompWidget> {
  ///  Local state fields for this component.

  bool? hasErrorMobileNumber = false;

  String? errorMobileNumber;

  bool? hasErrorHomeNumber = false;

  String? errorHomeNumber;

  bool? isEnabled = false;

  String? errorPassoword;

  bool? hasPasswordError = false;

  String? passwordText = '';

  String? errorPhoneNumber;

  bool hasErrorPhoneNumber = false;

  bool isEnrollExpanded = false;

  List<String> timeList = ['00:00', '01:00', '02:00', '03:00'];
  void addToTimeList(String item) => timeList.add(item);
  void removeFromTimeList(String item) => timeList.remove(item);
  void removeAtIndexFromTimeList(int index) => timeList.removeAt(index);
  void insertAtIndexInTimeList(int index, String item) =>
      timeList.insert(index, item);
  void updateTimeListAtIndex(int index, Function(String) updateFn) =>
      timeList[index] = updateFn(timeList[index]);

  List<String> timeZoneList = [
    '(UTC-09:00) Alaska',
    '(UTC-09:00) Atlantic Time (Canada)',
    '(UTC-09:00) Central Time (US & Canada)',
    '(UTC-09:00) Eastern Time (US & Canada)'
  ];
  void addToTimeZoneList(String item) => timeZoneList.add(item);
  void removeFromTimeZoneList(String item) => timeZoneList.remove(item);
  void removeAtIndexFromTimeZoneList(int index) => timeZoneList.removeAt(index);
  void insertAtIndexInTimeZoneList(int index, String item) =>
      timeZoneList.insert(index, item);
  void updateTimeZoneListAtIndex(int index, Function(String) updateFn) =>
      timeZoneList[index] = updateFn(timeZoneList[index]);

  dynamic getPhoneNumberDataRes;

  bool? isSuccess = false;

  bool? isError = false;

  bool? isTwoFactAuth = false;

  bool? isLoading = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (get phone numbers)] action in UpdatePhoneNumberComp widget.
  ApiCallResponse? getPhoneDataRes;
  // Stores action output result for [Backend Call - API (getTimes)] action in UpdatePhoneNumberComp widget.
  ApiCallResponse? getTimeApiRes;
  // Stores action output result for [Backend Call - API (GetTimezones)] action in UpdatePhoneNumberComp widget.
  ApiCallResponse? gettimeZonesAPiRes;
  // Model for SuccessBannerFilled component.
  late SuccessBannerFilledModel successBannerFilledModel1;
  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel1;
  // Model for HomeTF.
  late CustomOutlinedPhoneTextFGeneralMCModel homeTFModel;
  // Model for MobileTF.
  late CustomOutlinedPhoneTextFGeneralMCModel mobileTFModel;
  // Model for PhoneTF.
  late CustomOutlinedPhoneTextFGeneralMCModel phoneTFModel;
  // State field(s) for CheckboxM widget.
  bool? checkboxMValue;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for FromDropDown widget.
  String? fromDropDownValue;
  FormFieldController<String>? fromDropDownValueController;
  // State field(s) for ToDropDown widget.
  String? toDropDownValue;
  FormFieldController<String>? toDropDownValueController;
  // State field(s) for timeZoneDropDown widget.
  String? timeZoneDropDownValue;
  FormFieldController<String>? timeZoneDropDownValueController;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel1;
  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel1;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel2;
  // Stores action output result for [Backend Call - API (update phone numbers )] action in CommonCustomButton widget.
  ApiCallResponse? updatePhoneNumberMobileApiRes;
  // Stores action output result for [Backend Call - API (get phone numbers)] action in CommonCustomButton widget.
  ApiCallResponse? getPhoneNumberUpdateMApiRes;
  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel2;
  // Model for SuccessBannerFilled component.
  late SuccessBannerFilledModel successBannerFilledModel2;
  // Model for DesktopHomeTF.
  late CustomOutlinedPhoneTextFGeneralMCModel desktopHomeTFModel;
  // Model for DesktopMobileTF.
  late CustomOutlinedPhoneTextFGeneralMCModel desktopMobileTFModel;
  // Model for DesktopPhoneTF.
  late CustomOutlinedPhoneTextFGeneralMCModel desktopPhoneTFModel;
  // State field(s) for CheckboxDesktop widget.
  bool? checkboxDesktopValue;
  // State field(s) for DesktopSendRadioButton widget.
  FormFieldController<String>? desktopSendRadioButtonValueController;
  // State field(s) for FromDesktopDD widget.
  String? fromDesktopDDValue;
  FormFieldController<String>? fromDesktopDDValueController;
  // State field(s) for ToDesktopDD widget.
  String? toDesktopDDValue;
  FormFieldController<String>? toDesktopDDValueController;
  // State field(s) for timeZoneDesktopDD widget.
  String? timeZoneDesktopDDValue;
  FormFieldController<String>? timeZoneDesktopDDValueController;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel3;
  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel2;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel4;
  // Stores action output result for [Backend Call - API (update phone numbers )] action in CommonCustomButton widget.
  ApiCallResponse? updatePhoneNumberDesktopApiRes;
  // Stores action output result for [Backend Call - API (get phone numbers)] action in CommonCustomButton widget.
  ApiCallResponse? getPhoneNumberApiDESKTOPRes;
  // Model for CommonCircularIndicator component.
  late CommonCircularIndicatorModel commonCircularIndicatorModel;
  // Model for Added2FASecComp component.
  late Added2FASecCompModel added2FASecCompModel;

  @override
  void initState(BuildContext context) {
    successBannerFilledModel1 =
        createModel(context, () => SuccessBannerFilledModel());
    errorBannerOutlinedModel1 =
        createModel(context, () => ErrorBannerOutlinedModel());
    homeTFModel =
        createModel(context, () => CustomOutlinedPhoneTextFGeneralMCModel());
    mobileTFModel =
        createModel(context, () => CustomOutlinedPhoneTextFGeneralMCModel());
    phoneTFModel =
        createModel(context, () => CustomOutlinedPhoneTextFGeneralMCModel());
    commonCustomButtonModel1 =
        createModel(context, () => CommonCustomButtonModel());
    commonCancelButtonModel1 =
        createModel(context, () => CommonCancelButtonModel());
    commonCustomButtonModel2 =
        createModel(context, () => CommonCustomButtonModel());
    errorBannerOutlinedModel2 =
        createModel(context, () => ErrorBannerOutlinedModel());
    successBannerFilledModel2 =
        createModel(context, () => SuccessBannerFilledModel());
    desktopHomeTFModel =
        createModel(context, () => CustomOutlinedPhoneTextFGeneralMCModel());
    desktopMobileTFModel =
        createModel(context, () => CustomOutlinedPhoneTextFGeneralMCModel());
    desktopPhoneTFModel =
        createModel(context, () => CustomOutlinedPhoneTextFGeneralMCModel());
    commonCustomButtonModel3 =
        createModel(context, () => CommonCustomButtonModel());
    commonCancelButtonModel2 =
        createModel(context, () => CommonCancelButtonModel());
    commonCustomButtonModel4 =
        createModel(context, () => CommonCustomButtonModel());
    commonCircularIndicatorModel =
        createModel(context, () => CommonCircularIndicatorModel());
    added2FASecCompModel = createModel(context, () => Added2FASecCompModel());
  }

  @override
  void dispose() {
    successBannerFilledModel1.dispose();
    errorBannerOutlinedModel1.dispose();
    homeTFModel.dispose();
    mobileTFModel.dispose();
    phoneTFModel.dispose();
    commonCustomButtonModel1.dispose();
    commonCancelButtonModel1.dispose();
    commonCustomButtonModel2.dispose();
    errorBannerOutlinedModel2.dispose();
    successBannerFilledModel2.dispose();
    desktopHomeTFModel.dispose();
    desktopMobileTFModel.dispose();
    desktopPhoneTFModel.dispose();
    commonCustomButtonModel3.dispose();
    commonCancelButtonModel2.dispose();
    commonCustomButtonModel4.dispose();
    commonCircularIndicatorModel.dispose();
    added2FASecCompModel.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
  String? get desktopSendRadioButtonValue =>
      desktopSendRadioButtonValueController?.value;
}
