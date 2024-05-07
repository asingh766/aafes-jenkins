import '/backend/api_requests/api_calls.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_circular_indicator/common_circular_indicator_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/custom_outlined_text_f_general_m_c/custom_outlined_text_f_general_m_c_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/components/success_banner_filled/success_banner_filled_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/my_account/update_address_screen/info_message/info_message_widget.dart';
import '/pages/my_account/update_email_address/added2_f_a_sec_comp/added2_f_a_sec_comp_widget.dart';
import 'update_address_comp_widget.dart' show UpdateAddressCompWidget;
import 'package:flutter/material.dart';

class UpdateAddressCompModel extends FlutterFlowModel<UpdateAddressCompWidget> {
  ///  Local state fields for this component.

  bool? hasErrorStreetName = false;

  String? errorStreetName;

  bool? hasErrorSuite = false;

  String? errorSuite;

  bool? hasErrorCity = false;

  String? errorCity;

  bool? hasErrorZipCode = false;

  String? errorZipCode;

  bool? isEditable = false;

  bool? hasErrorPassoword = false;

  String? errorPassword;

  String? passwordValue = '';

  List<String> stateList = [
    'Alberta',
    'British Columbia',
    'Manitoba',
    'New Brunswick'
  ];
  void addToStateList(String item) => stateList.add(item);
  void removeFromStateList(String item) => stateList.remove(item);
  void removeAtIndexFromStateList(int index) => stateList.removeAt(index);
  void insertAtIndexInStateList(int index, String item) =>
      stateList.insert(index, item);
  void updateStateListAtIndex(int index, Function(String) updateFn) =>
      stateList[index] = updateFn(stateList[index]);

  dynamic addressData;

  bool? isSuccess = false;

  bool? isError = false;

  String? apiErrorMes;

  bool? isTwoFactAuth = false;

  bool? isLoading = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (get user address)] action in UpdateAddressComp widget.
  ApiCallResponse? getUserAddresssApiRes;
  // Stores action output result for [Backend Call - API (States)] action in UpdateAddressComp widget.
  ApiCallResponse? statesApiRes;
  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel1;
  // Model for SuccessBannerFilled component.
  late SuccessBannerFilledModel successBannerFilledModel1;
  // Model for StreetNameDesktop.
  late CustomOutlinedTextFGeneralMCModel streetNameDesktopModel;
  // Model for SuiteDesktop.
  late CustomOutlinedTextFGeneralMCModel suiteDesktopModel;
  // Model for CityDesktop.
  late CustomOutlinedTextFGeneralMCModel cityDesktopModel;
  // State field(s) for StateDesktopToDropDown widget.
  String? stateDesktopToDropDownValue;
  FormFieldController<String>? stateDesktopToDropDownValueController;
  // Model for ZipCodeDesktop.
  late CustomOutlinedTextFGeneralMCModel zipCodeDesktopModel;
  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel1;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel1;
  // Stores action output result for [Action Block - updateAddressABAPI] action in CommonCustomButton widget.
  dynamic updateAddressAPiRes;
  // Stores action output result for [Backend Call - API (get user address)] action in CommonCustomButton widget.
  ApiCallResponse? getUserAddressUpdateRes;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel2;
  // Model for InfoMessage component.
  late InfoMessageModel infoMessageModel1;
  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel2;
  // Model for SuccessBannerFilled component.
  late SuccessBannerFilledModel successBannerFilledModel2;
  // Model for StreetName.
  late CustomOutlinedTextFGeneralMCModel streetNameModel;
  // Model for Suite.
  late CustomOutlinedTextFGeneralMCModel suiteModel;
  // Model for City.
  late CustomOutlinedTextFGeneralMCModel cityModel;
  // State field(s) for StateMobileDropDown widget.
  String? stateMobileDropDownValue;
  FormFieldController<String>? stateMobileDropDownValueController;
  // Model for Zipcode.
  late CustomOutlinedTextFGeneralMCModel zipcodeModel;
  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel2;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel3;
  // Stores action output result for [Action Block - updateAddressABAPI] action in CommonCustomButton widget.
  dynamic updateAddressAPiMobileRes;
  // Stores action output result for [Backend Call - API (get user address)] action in CommonCustomButton widget.
  ApiCallResponse? getUserAddressUpdateMOBILERes;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel4;
  // Model for InfoMessage component.
  late InfoMessageModel infoMessageModel2;
  // Model for CommonCircularIndicator component.
  late CommonCircularIndicatorModel commonCircularIndicatorModel;
  // Model for Added2FASecComp component.
  late Added2FASecCompModel added2FASecCompModel;

  @override
  void initState(BuildContext context) {
    errorBannerOutlinedModel1 =
        createModel(context, () => ErrorBannerOutlinedModel());
    successBannerFilledModel1 =
        createModel(context, () => SuccessBannerFilledModel());
    streetNameDesktopModel =
        createModel(context, () => CustomOutlinedTextFGeneralMCModel());
    suiteDesktopModel =
        createModel(context, () => CustomOutlinedTextFGeneralMCModel());
    cityDesktopModel =
        createModel(context, () => CustomOutlinedTextFGeneralMCModel());
    zipCodeDesktopModel =
        createModel(context, () => CustomOutlinedTextFGeneralMCModel());
    commonCancelButtonModel1 =
        createModel(context, () => CommonCancelButtonModel());
    commonCustomButtonModel1 =
        createModel(context, () => CommonCustomButtonModel());
    commonCustomButtonModel2 =
        createModel(context, () => CommonCustomButtonModel());
    infoMessageModel1 = createModel(context, () => InfoMessageModel());
    errorBannerOutlinedModel2 =
        createModel(context, () => ErrorBannerOutlinedModel());
    successBannerFilledModel2 =
        createModel(context, () => SuccessBannerFilledModel());
    streetNameModel =
        createModel(context, () => CustomOutlinedTextFGeneralMCModel());
    suiteModel =
        createModel(context, () => CustomOutlinedTextFGeneralMCModel());
    cityModel = createModel(context, () => CustomOutlinedTextFGeneralMCModel());
    zipcodeModel =
        createModel(context, () => CustomOutlinedTextFGeneralMCModel());
    commonCancelButtonModel2 =
        createModel(context, () => CommonCancelButtonModel());
    commonCustomButtonModel3 =
        createModel(context, () => CommonCustomButtonModel());
    commonCustomButtonModel4 =
        createModel(context, () => CommonCustomButtonModel());
    infoMessageModel2 = createModel(context, () => InfoMessageModel());
    commonCircularIndicatorModel =
        createModel(context, () => CommonCircularIndicatorModel());
    added2FASecCompModel = createModel(context, () => Added2FASecCompModel());
  }

  @override
  void dispose() {
    errorBannerOutlinedModel1.dispose();
    successBannerFilledModel1.dispose();
    streetNameDesktopModel.dispose();
    suiteDesktopModel.dispose();
    cityDesktopModel.dispose();
    zipCodeDesktopModel.dispose();
    commonCancelButtonModel1.dispose();
    commonCustomButtonModel1.dispose();
    commonCustomButtonModel2.dispose();
    infoMessageModel1.dispose();
    errorBannerOutlinedModel2.dispose();
    successBannerFilledModel2.dispose();
    streetNameModel.dispose();
    suiteModel.dispose();
    cityModel.dispose();
    zipcodeModel.dispose();
    commonCancelButtonModel2.dispose();
    commonCustomButtonModel3.dispose();
    commonCustomButtonModel4.dispose();
    infoMessageModel2.dispose();
    commonCircularIndicatorModel.dispose();
    added2FASecCompModel.dispose();
  }
}
