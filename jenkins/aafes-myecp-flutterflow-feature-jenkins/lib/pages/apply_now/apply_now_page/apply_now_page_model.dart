import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/apply_now/customised_fields/custom_date_selector_apply/custom_date_selector_apply_widget.dart';
import '/pages/apply_now/customised_fields/custom_radio_button/custom_radio_button_widget.dart';
import '/pages/login/custom_state_selector/custom_state_selector_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_captchax/custom_outlined_text_field_captchax_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_d_o_b/custom_outlined_text_field_d_o_b_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_general/custom_outlined_text_field_general_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_phone/custom_outlined_text_field_phone_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_s_s_n/custom_outlined_text_field_s_s_n_widget.dart';
import 'apply_now_page_widget.dart' show ApplyNowPageWidget;
import 'package:flutter/material.dart';

class ApplyNowPageModel extends FlutterFlowModel<ApplyNowPageWidget> {
  ///  Local state fields for this page.

  String errorFirstName = ' ';

  bool hasErrorFirstName = false;

  String errorMI = ' ';

  bool hasErrorMI = false;

  String errorLastName = ' ';

  bool hasErrorLastName = false;

  String errorSSN = ' ';

  bool hasErrorSSN = false;

  String errorDOB = ' ';

  bool hasErrorDOB = false;

  String errorAddress1 = ' ';

  bool hasErrorAddress1 = false;

  String errorAddress2 = ' ';

  bool hasErrorAddress2 = false;

  String errorCity = ' ';

  bool hasErrorCity = false;

  String errorState = ' ';

  bool hasErrorState = false;

  String errorZip = ' ';

  bool hasErrorZip = false;

  String errorMonthlyIcome = ' ';

  bool hasErrorMonthlyIncome = false;

  String errorEmail = ' ';

  bool hasErrorEmail = false;

  String errorMobile = ' ';

  bool hasErrorMobile = false;

  List<StateStruct> states = [];
  void addToStates(StateStruct item) => states.add(item);
  void removeFromStates(StateStruct item) => states.remove(item);
  void removeAtIndexFromStates(int index) => states.removeAt(index);
  void insertAtIndexInStates(int index, StateStruct item) =>
      states.insert(index, item);
  void updateStatesAtIndex(int index, Function(StateStruct) updateFn) =>
      states[index] = updateFn(states[index]);

  bool errorCaptcha = false;

  String totalMonthlyIncome = ' ';

  String monthlyMortgage = ' ';

  String captchaValue = ' ';

  String? errorAPI;

  bool hasErrorAPI = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel1;
  // Model for ApplyForRadioButtonD.
  late CustomRadioButtonModel applyForRadioButtonDModel;
  // Model for FirstNameTextFieldD.
  late CustomOutlinedTextFieldGeneralModel firstNameTextFieldDModel;
  // Model for MITextFieldD.
  late CustomOutlinedTextFieldGeneralModel mITextFieldDModel;
  // Model for LastNameTextFieldD.
  late CustomOutlinedTextFieldGeneralModel lastNameTextFieldDModel;
  // Model for SuffixTextFieldD.
  late CustomOutlinedTextFieldGeneralModel suffixTextFieldDModel;
  // Model for SSNTextFieldD.
  late CustomOutlinedTextFieldSSNModel sSNTextFieldDModel;
  // Model for DOBTextFieldD.
  late CustomOutlinedTextFieldDOBModel dOBTextFieldDModel;
  // Model for Address1TextFieldD.
  late CustomOutlinedTextFieldGeneralModel address1TextFieldDModel;
  // Model for Address2TextFieldD.
  late CustomOutlinedTextFieldGeneralModel address2TextFieldDModel;
  // Model for CityTextFieldD.
  late CustomOutlinedTextFieldGeneralModel cityTextFieldDModel;
  // Model for CustomStateSelector component.
  late CustomStateSelectorModel customStateSelectorModel;
  // Model for ZipTextFieldD.
  late CustomOutlinedTextFieldGeneralModel zipTextFieldDModel;
  // Model for CustomDateSelectorPresentApply.
  late CustomDateSelectorApplyModel customDateSelectorPresentApplyModel;
  // Model for CurrentEmployerTextFieldD.
  late CustomOutlinedTextFieldGeneralModel currentEmployerTextFieldDModel;
  // Model for CustomDateSelectorCurrentApply.
  late CustomDateSelectorApplyModel customDateSelectorCurrentApplyModel;
  // Model for MothersMaidenTextFieldD.
  late CustomOutlinedTextFieldGeneralModel mothersMaidenTextFieldDModel;
  // Model for EmailAddressTextFieldD.
  late CustomOutlinedTextFieldGeneralModel emailAddressTextFieldDModel;
  // State field(s) for InformationCheckBoxD widget.
  bool? informationCheckBoxDValue;
  // Model for MobileNumberTextFieldD.
  late CustomOutlinedTextFieldPhoneModel mobileNumberTextFieldDModel;
  // State field(s) for NoticeCheckBoxD widget.
  bool? noticeCheckBoxDValue;
  // Model for CaptchaTextFieldD.
  late CustomOutlinedTextFieldCaptchaxModel captchaTextFieldDModel;
  // State field(s) for AgreeCheckbox widget.
  bool? agreeCheckboxValue;
  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel1;
  // Model for CommonCustomButton component.
  late CommonCustomButtonModel commonCustomButtonModel;
  // Stores action output result for [Backend Call - API (Apply)] action in CommonCustomButton widget.
  ApiCallResponse? apiResultApply;
  // Model for Footer component.
  late FooterModel footerModel1;
  // Model for Header component.
  late HeaderModel headerModel1;
  // Model for Header component.
  late HeaderModel headerModel2;
  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel2;
  // Model for CustomRadioButtonM.
  late CustomRadioButtonModel customRadioButtonMModel;
  // Model for CustomRadioButtonT.
  late CustomRadioButtonModel customRadioButtonTModel;
  // Model for FirstNameTextFieldM.
  late CustomOutlinedTextFieldGeneralModel firstNameTextFieldMModel;
  // Model for MITextFieldM.
  late CustomOutlinedTextFieldGeneralModel mITextFieldMModel;
  // Model for LastNameTextFieldM.
  late CustomOutlinedTextFieldGeneralModel lastNameTextFieldMModel;
  // Model for SuffixTextFieldM.
  late CustomOutlinedTextFieldGeneralModel suffixTextFieldMModel;
  // Model for SSNTextFieldM.
  late CustomOutlinedTextFieldSSNModel sSNTextFieldMModel;
  // Model for DOBTextFieldM.
  late CustomOutlinedTextFieldDOBModel dOBTextFieldMModel;
  // Model for Address1TextFieldM.
  late CustomOutlinedTextFieldGeneralModel address1TextFieldMModel;
  // Model for Address2TextFieldM.
  late CustomOutlinedTextFieldGeneralModel address2TextFieldMModel;
  // Model for CityTextFieldM.
  late CustomOutlinedTextFieldGeneralModel cityTextFieldMModel;
  // Model for CustomStateSelectorM.
  late CustomStateSelectorModel customStateSelectorMModel;
  // Model for ZipTextFieldM.
  late CustomOutlinedTextFieldGeneralModel zipTextFieldMModel;
  // Model for CustomDateSelectorPresentApplyM.
  late CustomDateSelectorApplyModel customDateSelectorPresentApplyMModel;
  // Model for CurrentEmployerTextFieldM.
  late CustomOutlinedTextFieldGeneralModel currentEmployerTextFieldMModel;
  // Model for CustomDateSelectorCurrentApplyM.
  late CustomDateSelectorApplyModel customDateSelectorCurrentApplyMModel;
  // Model for MothersMaidenTextFieldM.
  late CustomOutlinedTextFieldGeneralModel mothersMaidenTextFieldMModel;
  // Model for EmailAddressTextFieldM.
  late CustomOutlinedTextFieldGeneralModel emailAddressTextFieldMModel;
  // State field(s) for InformationCheckBoxM widget.
  bool? informationCheckBoxMValue;
  // Model for MobileNumberTextFieldM.
  late CustomOutlinedTextFieldPhoneModel mobileNumberTextFieldMModel;
  // State field(s) for NoticeCheckBoxM widget.
  bool? noticeCheckBoxMValue;
  // Model for CaptchaTextFieldM.
  late CustomOutlinedTextFieldCaptchaxModel captchaTextFieldMModel;
  // State field(s) for AgreeCheckboxM widget.
  bool? agreeCheckboxMValue;
  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel2;
  // Model for CommonCustomButtonM.
  late CommonCustomButtonModel commonCustomButtonMModel;
  // Stores action output result for [Backend Call - API (Apply)] action in CommonCustomButtonM widget.
  ApiCallResponse? apiResultApplyM;
  // Model for Footer component.
  late FooterModel footerModel2;

  @override
  void initState(BuildContext context) {
    errorBannerOutlinedModel1 =
        createModel(context, () => ErrorBannerOutlinedModel());
    applyForRadioButtonDModel =
        createModel(context, () => CustomRadioButtonModel());
    firstNameTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    mITextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    lastNameTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    suffixTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    sSNTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldSSNModel());
    dOBTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldDOBModel());
    address1TextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    address2TextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    cityTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    customStateSelectorModel =
        createModel(context, () => CustomStateSelectorModel());
    zipTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    customDateSelectorPresentApplyModel =
        createModel(context, () => CustomDateSelectorApplyModel());
    currentEmployerTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    customDateSelectorCurrentApplyModel =
        createModel(context, () => CustomDateSelectorApplyModel());
    mothersMaidenTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    emailAddressTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    mobileNumberTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldPhoneModel());
    captchaTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldCaptchaxModel());
    commonCancelButtonModel1 =
        createModel(context, () => CommonCancelButtonModel());
    commonCustomButtonModel =
        createModel(context, () => CommonCustomButtonModel());
    footerModel1 = createModel(context, () => FooterModel());
    headerModel1 = createModel(context, () => HeaderModel());
    headerModel2 = createModel(context, () => HeaderModel());
    errorBannerOutlinedModel2 =
        createModel(context, () => ErrorBannerOutlinedModel());
    customRadioButtonMModel =
        createModel(context, () => CustomRadioButtonModel());
    customRadioButtonTModel =
        createModel(context, () => CustomRadioButtonModel());
    firstNameTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    mITextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    lastNameTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    suffixTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    sSNTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldSSNModel());
    dOBTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldDOBModel());
    address1TextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    address2TextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    cityTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    customStateSelectorMModel =
        createModel(context, () => CustomStateSelectorModel());
    zipTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    customDateSelectorPresentApplyMModel =
        createModel(context, () => CustomDateSelectorApplyModel());
    currentEmployerTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    customDateSelectorCurrentApplyMModel =
        createModel(context, () => CustomDateSelectorApplyModel());
    mothersMaidenTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    emailAddressTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    mobileNumberTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldPhoneModel());
    captchaTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldCaptchaxModel());
    commonCancelButtonModel2 =
        createModel(context, () => CommonCancelButtonModel());
    commonCustomButtonMModel =
        createModel(context, () => CommonCustomButtonModel());
    footerModel2 = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    errorBannerOutlinedModel1.dispose();
    applyForRadioButtonDModel.dispose();
    firstNameTextFieldDModel.dispose();
    mITextFieldDModel.dispose();
    lastNameTextFieldDModel.dispose();
    suffixTextFieldDModel.dispose();
    sSNTextFieldDModel.dispose();
    dOBTextFieldDModel.dispose();
    address1TextFieldDModel.dispose();
    address2TextFieldDModel.dispose();
    cityTextFieldDModel.dispose();
    customStateSelectorModel.dispose();
    zipTextFieldDModel.dispose();
    customDateSelectorPresentApplyModel.dispose();
    currentEmployerTextFieldDModel.dispose();
    customDateSelectorCurrentApplyModel.dispose();
    mothersMaidenTextFieldDModel.dispose();
    emailAddressTextFieldDModel.dispose();
    mobileNumberTextFieldDModel.dispose();
    captchaTextFieldDModel.dispose();
    commonCancelButtonModel1.dispose();
    commonCustomButtonModel.dispose();
    footerModel1.dispose();
    headerModel1.dispose();
    headerModel2.dispose();
    errorBannerOutlinedModel2.dispose();
    customRadioButtonMModel.dispose();
    customRadioButtonTModel.dispose();
    firstNameTextFieldMModel.dispose();
    mITextFieldMModel.dispose();
    lastNameTextFieldMModel.dispose();
    suffixTextFieldMModel.dispose();
    sSNTextFieldMModel.dispose();
    dOBTextFieldMModel.dispose();
    address1TextFieldMModel.dispose();
    address2TextFieldMModel.dispose();
    cityTextFieldMModel.dispose();
    customStateSelectorMModel.dispose();
    zipTextFieldMModel.dispose();
    customDateSelectorPresentApplyMModel.dispose();
    currentEmployerTextFieldMModel.dispose();
    customDateSelectorCurrentApplyMModel.dispose();
    mothersMaidenTextFieldMModel.dispose();
    emailAddressTextFieldMModel.dispose();
    mobileNumberTextFieldMModel.dispose();
    captchaTextFieldMModel.dispose();
    commonCancelButtonModel2.dispose();
    commonCustomButtonMModel.dispose();
    footerModel2.dispose();
  }

  /// Action blocks.
  Future actionAPI(BuildContext context) async {
    ApiCallResponse? apiResultCaptcha;

    apiResultCaptcha = await AuthenticationGroup.captchaCall.call(
      dynamicBaseURL: FFAppState().dynamicBaseURL,
    );
    if ((apiResultCaptcha.succeeded ?? true)) {
      captchaValue = (apiResultCaptcha.getHeader('captcha') ?? '');
      return;
    } else {
      return;
    }
  }

  Future actionStateAPI(BuildContext context) async {
    ApiCallResponse? apiResultStates;

    apiResultStates = await StatesCall.call(
      dynamicBaseURL: FFAppState().dynamicBaseURL,
    );
    if ((apiResultStates.succeeded ?? true)) {
      states = ((apiResultStates.jsonBody ?? '')
              .toList()
              .map<StateStruct?>(StateStruct.maybeFromMap)
              .toList() as Iterable<StateStruct?>)
          .withoutNulls
          .toList()
          .cast<StateStruct>();
      return;
    } else {
      return;
    }
  }
}
