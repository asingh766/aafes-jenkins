import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/common_circular_indicator/common_circular_indicator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/my_account/account_menu_options/update_banking_profile/banking_profile_form/banking_profile_form_widget.dart';
import 'dart:async';
import 'update_banking_profile_widget.dart' show UpdateBankingProfileWidget;
import 'package:flutter/material.dart';

class UpdateBankingProfileModel
    extends FlutterFlowModel<UpdateBankingProfileWidget> {
  ///  Local state fields for this component.

  bool isEditing = false;

  List<BankingProfilesStruct> bankingProfiles = [];
  void addToBankingProfiles(BankingProfilesStruct item) =>
      bankingProfiles.add(item);
  void removeFromBankingProfiles(BankingProfilesStruct item) =>
      bankingProfiles.remove(item);
  void removeAtIndexFromBankingProfiles(int index) =>
      bankingProfiles.removeAt(index);
  void insertAtIndexInBankingProfiles(int index, BankingProfilesStruct item) =>
      bankingProfiles.insert(index, item);
  void updateBankingProfilesAtIndex(
          int index, Function(BankingProfilesStruct) updateFn) =>
      bankingProfiles[index] = updateFn(bankingProfiles[index]);

  String isEditingTitle = '';

  bool loading = false;

  bool isError = false;

  BankingProfileStruct? selectedBankProfile;
  void updateSelectedBankProfileStruct(
          Function(BankingProfileStruct) updateFn) =>
      updateFn(selectedBankProfile ??= BankingProfileStruct());

  String? isOtherBank;

  BankingProfilesStruct? selectedAccount;
  void updateSelectedAccountStruct(Function(BankingProfilesStruct) updateFn) =>
      updateFn(selectedAccount ??= BankingProfilesStruct());

  String? successOption;

  ///  State fields for stateful widgets in this component.

  // Model for CommonCircularIndicator component.
  late CommonCircularIndicatorModel commonCircularIndicatorModel;
  // Model for bankingProfileForm component.
  late BankingProfileFormModel bankingProfileFormModel;
  // Stores action output result for [Backend Call - API (Delete Banking Profile)] action in Text widget.
  ApiCallResponse? deleteBankingProfile;

  @override
  void initState(BuildContext context) {
    commonCircularIndicatorModel =
        createModel(context, () => CommonCircularIndicatorModel());
    bankingProfileFormModel =
        createModel(context, () => BankingProfileFormModel());
  }

  @override
  void dispose() {
    commonCircularIndicatorModel.dispose();
    bankingProfileFormModel.dispose();
  }

  /// Action blocks.
  Future reloadData(BuildContext context) async {
    ApiCallResponse? getBankingProfiles;

    loading = true;
    getBankingProfiles = await BankingProfileGroup.getBankingProfilesCall.call(
      userId: FFAppState().selectedUserId.toString(),
      dynamicBaseURL: FFAppState().dynamicBaseURL,
    );
    if ((getBankingProfiles.succeeded ?? true)) {
      bankingProfiles = ((getBankingProfiles.jsonBody ?? '')
              .toList()
              .map<BankingProfilesStruct?>(BankingProfilesStruct.maybeFromMap)
              .toList() as Iterable<BankingProfilesStruct?>)
          .withoutNulls
          .toList()
          .cast<BankingProfilesStruct>();
    } else {
      isError = true;
    }

    loading = false;
  }
}
