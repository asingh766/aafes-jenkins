import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/components/common_circular_indicator/common_circular_indicator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

Future showLoadingDialog(BuildContext context) async {
  showDialog(
    barrierColor: const Color(0x33042757),
    barrierDismissible: false,
    context: context,
    builder: (dialogContext) {
      return Dialog(
        elevation: 0,
        insetPadding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        alignment:
            const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
        child: const WebViewAware(
          child: CommonCircularIndicatorWidget(),
        ),
      );
    },
  );
}

Future<List<dynamic>?> recentActivityAPICall(
  BuildContext context, {
  required String? userId,
  required String? accountNumber,
}) async {
  ApiCallResponse? recentActivityAPIRes;

  unawaited(
    () async {
      await action_blocks.showLoadingDialog(context);
    }(),
  );
  recentActivityAPIRes = await HomeDashboardAPIGroup.recentactivityCall.call(
    userId: userId,
    accountNumber: accountNumber,
    dynamicBaseURL: FFAppState().dynamicBaseURL,
  );
  if ((recentActivityAPIRes.succeeded ?? true)) {
    Navigator.pop(context);
    return HomeDashboardAPIGroup.recentactivityCall.recentActivityList(
      (recentActivityAPIRes.jsonBody ?? ''),
    );
  }
  Navigator.pop(context);

  return null;
}

Future<List<dynamic>?> paymentHistoryList(
  BuildContext context, {
  required String? userId,
  required String? accountNumber,
}) async {
  ApiCallResponse? paymentHistoryListRes;

  await action_blocks.showLoadingDialog(context);
  paymentHistoryListRes = await HomeDashboardAPIGroup.paymenthistoryCall.call(
    userId: userId,
    accountNumber: accountNumber,
    dynamicBaseURL: FFAppState().dynamicBaseURL,
  );
  if ((paymentHistoryListRes.succeeded ?? true)) {
    Navigator.pop(context);
    return HomeDashboardAPIGroup.paymenthistoryCall.paymentHistoryList(
      (paymentHistoryListRes.jsonBody ?? ''),
    );
  }
  Navigator.pop(context);

  return null;
}

Future<List<dynamic>?> rewardPointsAPI(
  BuildContext context, {
  required String? userId,
  required String? accountNumber,
}) async {
  ApiCallResponse? rewardPointsAPI;

  await action_blocks.showLoadingDialog(context);
  rewardPointsAPI = await HomeDashboardAPIGroup.rewardpointsCall.call(
    userId: userId,
    accountNumber: accountNumber,
    dynamicBaseURL: FFAppState().dynamicBaseURL,
  );
  if ((rewardPointsAPI.succeeded ?? true)) {
    Navigator.pop(context);
    return HomeDashboardAPIGroup.rewardpointsCall.rewardPointsList(
      (rewardPointsAPI.jsonBody ?? ''),
    );
  }
  Navigator.pop(context);

  return null;
}

Future<List<dynamic>?> statementAPICall(
  BuildContext context, {
  required String? userId,
  required String? accountNumber,
}) async {
  ApiCallResponse? statementAPiRes;

  await action_blocks.showLoadingDialog(context);
  statementAPiRes = await HomeDashboardAPIGroup.statementsCall.call(
    userId: userId,
    accountNumber: accountNumber,
    dynamicBaseURL: FFAppState().dynamicBaseURL,
  );
  if ((statementAPiRes.succeeded ?? true)) {
    Navigator.pop(context);
    return HomeDashboardAPIGroup.statementsCall.statementList(
      (statementAPiRes.jsonBody ?? ''),
    );
  }
  Navigator.pop(context);

  return null;
}

Future<dynamic> updateAddressABAPI(
  BuildContext context, {
  required String? userId,
  required String? city,
  required String? state,
  required String? zip,
  required String? zipPlus,
  required String? currentPass,
  required String? address1,
  required String? address2,
}) async {
  ApiCallResponse? updateUserAddressRes;

  unawaited(
    () async {
      await action_blocks.showLoadingDialog(context);
    }(),
  );
  updateUserAddressRes =
      await ManageContactDetailsGroup.updateUserAddressCall.call(
    userId: userId,
    city: city,
    zip: zip,
    zipPlus: zipPlus,
    currentPassword: currentPass,
    state: state,
    address1: address1,
    address2: address2,
    dynamicBaseURL: FFAppState().dynamicBaseURL,
  );
  if ((updateUserAddressRes.succeeded ?? true)) {
    Navigator.pop(context);
    return (updateUserAddressRes.jsonBody ?? '');
  } else {
    Navigator.pop(context);
  }

  return (updateUserAddressRes.jsonBody ?? '');
}

Future<dynamic> codeSent(
  BuildContext context, {
  required bool? isPhoneSelected,
}) async {
  ApiCallResponse? sendOTPApiRes;

  unawaited(
    () async {
      await action_blocks.showLoadingDialog(context);
    }(),
  );
  sendOTPApiRes = await AuthenticationGroup.sendOtpCall.call(
    userId: FFAppState().selectedUserId.toString(),
    otpOption:
        isPhoneSelected! ? Auth2Factor.Phone.name : Auth2Factor.Email.name,
    dynamicBaseURL: FFAppState().dynamicBaseURL,
  );
  if ((sendOTPApiRes.succeeded ?? true)) {
    return (sendOTPApiRes.jsonBody ?? '');
  }

  return (sendOTPApiRes.jsonBody ?? '');
}
