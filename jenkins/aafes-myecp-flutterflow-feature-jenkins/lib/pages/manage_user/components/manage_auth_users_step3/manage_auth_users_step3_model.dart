import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/login/custom_state_selector/custom_state_selector_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_general/custom_outlined_text_field_general_widget.dart';
import '/pages/user_registration/customised_fields/custom_outlined_text_field_s_s_n/custom_outlined_text_field_s_s_n_widget.dart';
import 'manage_auth_users_step3_widget.dart' show ManageAuthUsersStep3Widget;
import 'package:flutter/material.dart';

class ManageAuthUsersStep3Model
    extends FlutterFlowModel<ManageAuthUsersStep3Widget> {
  ///  Local state fields for this component.

  List<StateStruct> states = [];
  void addToStates(StateStruct item) => states.add(item);
  void removeFromStates(StateStruct item) => states.remove(item);
  void removeAtIndexFromStates(int index) => states.removeAt(index);
  void insertAtIndexInStates(int index, StateStruct item) =>
      states.insert(index, item);
  void updateStatesAtIndex(int index, Function(StateStruct) updateFn) =>
      states[index] = updateFn(states[index]);

  bool enableNames = false;

  bool enableSSN = false;

  String errorSSN = ' ';

  bool hasErrorSSN = false;

  bool enableTempAddress = false;

  String errorAPI = ' ';

  bool hasErrorAPI = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (States)] action in ManageAuthUsersStep3 widget.
  ApiCallResponse? apiResultStates;
  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel1;
  // Model for FirstNameTextField2D.
  late CustomOutlinedTextFieldGeneralModel firstNameTextField2DModel;
  // Model for MiddleNameTextField2D.
  late CustomOutlinedTextFieldGeneralModel middleNameTextField2DModel;
  // Model for LastNameTextField2D.
  late CustomOutlinedTextFieldGeneralModel lastNameTextField2DModel;
  // Model for SSNTextField2D.
  late CustomOutlinedTextFieldSSNModel sSNTextField2DModel;
  // State field(s) for AddressSelectionDCBD widget.
  FormFieldController<String>? addressSelectionDCBDValueController;
  // Model for StreetNameTextFieldD.
  late CustomOutlinedTextFieldGeneralModel streetNameTextFieldDModel;
  // Model for APTTextFieldD.
  late CustomOutlinedTextFieldGeneralModel aPTTextFieldDModel;
  // Model for CityTextFieldD.
  late CustomOutlinedTextFieldGeneralModel cityTextFieldDModel;
  // Model for CustomStateSelectorD.
  late CustomStateSelectorModel customStateSelectorDModel;
  // Model for ZipTextFieldD.
  late CustomOutlinedTextFieldGeneralModel zipTextFieldDModel;
  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel1;
  // Model for CommonCustomButtonD.
  late CommonCustomButtonModel commonCustomButtonDModel;
  // Stores action output result for [Backend Call - API (Add Authorised Users)] action in CommonCustomButtonD widget.
  ApiCallResponse? apiResultAddUserD;
  // Model for ErrorBannerOutlined component.
  late ErrorBannerOutlinedModel errorBannerOutlinedModel2;
  // Model for FirstNameTextField2M.
  late CustomOutlinedTextFieldGeneralModel firstNameTextField2MModel;
  // Model for MiddleNameTextField2M.
  late CustomOutlinedTextFieldGeneralModel middleNameTextField2MModel;
  // Model for LastNameTextField2M.
  late CustomOutlinedTextFieldGeneralModel lastNameTextField2MModel;
  // Model for SSNTextField2M.
  late CustomOutlinedTextFieldSSNModel sSNTextField2MModel;
  // State field(s) for AddressSelectionDCBM widget.
  FormFieldController<String>? addressSelectionDCBMValueController;
  // Model for StreetNameTextFieldM.
  late CustomOutlinedTextFieldGeneralModel streetNameTextFieldMModel;
  // Model for APTTextFieldM.
  late CustomOutlinedTextFieldGeneralModel aPTTextFieldMModel;
  // Model for CityTextFieldM.
  late CustomOutlinedTextFieldGeneralModel cityTextFieldMModel;
  // Model for CustomStateSelectorM.
  late CustomStateSelectorModel customStateSelectorMModel;
  // Model for ZipTextFieldM.
  late CustomOutlinedTextFieldGeneralModel zipTextFieldMModel;
  // Model for CommonCancelButton component.
  late CommonCancelButtonModel commonCancelButtonModel2;
  // Model for CommonCustomButtonM.
  late CommonCustomButtonModel commonCustomButtonMModel;
  // Stores action output result for [Backend Call - API (Add Authorised Users)] action in CommonCustomButtonM widget.
  ApiCallResponse? apiResultAddUserM;

  @override
  void initState(BuildContext context) {
    errorBannerOutlinedModel1 =
        createModel(context, () => ErrorBannerOutlinedModel());
    firstNameTextField2DModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    middleNameTextField2DModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    lastNameTextField2DModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    sSNTextField2DModel =
        createModel(context, () => CustomOutlinedTextFieldSSNModel());
    streetNameTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    aPTTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    cityTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    customStateSelectorDModel =
        createModel(context, () => CustomStateSelectorModel());
    zipTextFieldDModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    commonCancelButtonModel1 =
        createModel(context, () => CommonCancelButtonModel());
    commonCustomButtonDModel =
        createModel(context, () => CommonCustomButtonModel());
    errorBannerOutlinedModel2 =
        createModel(context, () => ErrorBannerOutlinedModel());
    firstNameTextField2MModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    middleNameTextField2MModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    lastNameTextField2MModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    sSNTextField2MModel =
        createModel(context, () => CustomOutlinedTextFieldSSNModel());
    streetNameTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    aPTTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    cityTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    customStateSelectorMModel =
        createModel(context, () => CustomStateSelectorModel());
    zipTextFieldMModel =
        createModel(context, () => CustomOutlinedTextFieldGeneralModel());
    commonCancelButtonModel2 =
        createModel(context, () => CommonCancelButtonModel());
    commonCustomButtonMModel =
        createModel(context, () => CommonCustomButtonModel());
  }

  @override
  void dispose() {
    errorBannerOutlinedModel1.dispose();
    firstNameTextField2DModel.dispose();
    middleNameTextField2DModel.dispose();
    lastNameTextField2DModel.dispose();
    sSNTextField2DModel.dispose();
    streetNameTextFieldDModel.dispose();
    aPTTextFieldDModel.dispose();
    cityTextFieldDModel.dispose();
    customStateSelectorDModel.dispose();
    zipTextFieldDModel.dispose();
    commonCancelButtonModel1.dispose();
    commonCustomButtonDModel.dispose();
    errorBannerOutlinedModel2.dispose();
    firstNameTextField2MModel.dispose();
    middleNameTextField2MModel.dispose();
    lastNameTextField2MModel.dispose();
    sSNTextField2MModel.dispose();
    streetNameTextFieldMModel.dispose();
    aPTTextFieldMModel.dispose();
    cityTextFieldMModel.dispose();
    customStateSelectorMModel.dispose();
    zipTextFieldMModel.dispose();
    commonCancelButtonModel2.dispose();
    commonCustomButtonMModel.dispose();
  }

  /// Additional helper methods.
  String? get addressSelectionDCBDValue =>
      addressSelectionDCBDValueController?.value;
  String? get addressSelectionDCBMValue =>
      addressSelectionDCBMValueController?.value;
}
