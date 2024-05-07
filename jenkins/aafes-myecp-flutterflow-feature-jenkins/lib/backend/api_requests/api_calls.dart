import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Authentication Group Code

class AuthenticationGroup {
  static String baseUrl = 'https://';
  static Map<String, String> headers = {};
  static ForgotUserNameCall forgotUserNameCall = ForgotUserNameCall();
  static ForgotPasswordQuesCall forgotPasswordQuesCall =
      ForgotPasswordQuesCall();
  static ForgotPasswordCall forgotPasswordCall = ForgotPasswordCall();
  static ResetPasswordCall resetPasswordCall = ResetPasswordCall();
  static LoginCall loginCall = LoginCall();
  static LogoutCall logoutCall = LogoutCall();
  static VerifysecurityquestionsCall verifysecurityquestionsCall =
      VerifysecurityquestionsCall();
  static SendOtpCall sendOtpCall = SendOtpCall();
  static VerifyOtpCall verifyOtpCall = VerifyOtpCall();
  static CaptchaCall captchaCall = CaptchaCall();
}

class ForgotUserNameCall {
  Future<ApiCallResponse> call({
    String? lastName = '',
    String? sSNLast5 = '',
    String? dOBDay = '',
    String? dOBMonth = '',
    String? dOBYear = '',
    String? dynamicBaseURL = '',
  }) async {
    final ffApiRequestBody = '''
{
  "LastName": "$lastName",
  "SSNLast5": "$sSNLast5",
  "DOB_Day": "$dOBDay",
  "DOB_Month": "$dOBMonth",
  "DOB_Year": "$dOBYear"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'forgotUserName',
      apiUrl:
          '${AuthenticationGroup.baseUrl}$dynamicBaseURL/api/forgotUserName',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Message''',
      ));
}

class ForgotPasswordQuesCall {
  Future<ApiCallResponse> call({
    String? question1Text = '',
    String? question2Text = '',
    String? answer2 = '',
    String? answer1 = '',
    String? userName = '',
    String? question1Id = '',
    String? question2Id = '',
    String? dynamicBaseURL = '',
  }) async {
    final ffApiRequestBody = '''
{
  "Question1Id": "$question1Id",
  "Question1Text": "$question1Text",
  "Answer1": "$answer1",
  "Question2Id": "$question2Id",
  "Question2Text": "$question2Text",
  "Answer2": "$answer2",
  "UserName": "$userName"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'forgotPasswordQues',
      apiUrl:
          '${AuthenticationGroup.baseUrl}$dynamicBaseURL/api/forgotPasswordSQ',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ForgotPasswordCall {
  Future<ApiCallResponse> call({
    String? userName = '',
    String? sSNLast5 = '',
    String? dOBDay = '',
    String? dOBMonth = '',
    String? dOBYear = '',
    String? dynamicBaseURL = '',
  }) async {
    final ffApiRequestBody = '''
{
  "UserName": "$userName",
  "SSNLast5": "$sSNLast5",
  "DOB_Day": "$dOBDay",
  "DOB_Month": "$dOBMonth",
  "DOB_Year": "$dOBYear"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'forgotPassword',
      apiUrl:
          '${AuthenticationGroup.baseUrl}$dynamicBaseURL/api/forgotPassword',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ResetPasswordCall {
  Future<ApiCallResponse> call({
    String? userName = '',
    String? newPassword = '',
    String? confirmPassword = '',
    String? dynamicBaseURL = '',
  }) async {
    final ffApiRequestBody = '''
{
    "UserName": "$userName",
    "NewPassword":"$newPassword" ,
    "ConfirmPassword":"$confirmPassword" 
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'resetPassword',
      apiUrl:
          '${AuthenticationGroup.baseUrl}$dynamicBaseURL/api/resetPassword',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? userName = '',
    String? password = '',
    bool? isSecurityQuestionNeeded,
    String? dynamicBaseURL = '',
  }) async {
    final ffApiRequestBody = '''
{
  "UserName": "$userName",
  "Password": "$password",
  "IsSecurityQuestionNeeded": $isSecurityQuestionNeeded
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '${AuthenticationGroup.baseUrl}$dynamicBaseURL/api/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? messageDesc(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.messageDesc''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Token''',
      ));
  int? selelctedUserId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.UserId''',
      ));
  String? lastLoginDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.LastLoginDate''',
      ));
  String? expirationTime(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Expiration''',
      ));
  String? userName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.UserName''',
      ));
  String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.FirstName''',
      ));
  String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.LastName''',
      ));
  String? middleName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.MiddleName''',
      ));
  bool? isSecurityQuestionsNeeded(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.IsSecurityQuestionsNeeded''',
      ));
  bool? is2FANeeded(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.Is2FANeeded''',
      ));
  bool? isTwoFAOtpIn(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.IsTwoFAOtpIn''',
      ));
  bool? isTwoFAEmailOptIn(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.IsTwoFAEmailOptIn''',
      ));
  bool? isSMSOptIn(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.IsSMSOptIn''',
      ));
  String? emailAddress(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.EmailAddress''',
      ));
  String? mobileNo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.MobileNo''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Message''',
      ));
}

class LogoutCall {
  Future<ApiCallResponse> call({
    String? authorization = '',
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'logout',
      apiUrl: '${AuthenticationGroup.baseUrl}$dynamicBaseURL/api/logout',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '$authorization',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class VerifysecurityquestionsCall {
  Future<ApiCallResponse> call({
    int? userId,
    int? questionID,
    String? answer = '',
    String? dynamicBaseURL = '',
  }) async {
    final ffApiRequestBody = '''
{
  "UserId": "$userId",
  "QuestionID": $questionID,
  "Answer": "$answer"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'verifysecurityquestions',
      apiUrl:
          '${AuthenticationGroup.baseUrl}$dynamicBaseURL/api/verify-security-questions',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.UserId''',
      ));
  String? userName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.UserName''',
      ));
  String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.FirstName''',
      ));
  String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.LastName''',
      ));
  String? middleName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.MiddleName''',
      ));
  String? lastLoginDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.LastLoginDate''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Token''',
      ));
  String? expiration(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Expiration''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Message''',
      ));
}

class SendOtpCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? otpOption = '',
    String? dynamicBaseURL = '',
  }) async {
    final ffApiRequestBody = '''
{
  "UserId": "$userId",
  "OtpOption": "$otpOption"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send Otp',
      apiUrl: '${AuthenticationGroup.baseUrl}$dynamicBaseURL/api/send-otp',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? otp(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Otp''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Message''',
      ));
}

class VerifyOtpCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? otp = '',
    String? enteredOtp = '',
    String? dynamicBaseURL = '',
  }) async {
    final ffApiRequestBody = '''
{
  "UserId": "$userId",
  "Otp": "$otp",
  "EnteredOtp": "$enteredOtp"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Verify Otp',
      apiUrl: '${AuthenticationGroup.baseUrl}$dynamicBaseURL/api/verify-otp',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.UserId''',
      ));
  String? userName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.UserName''',
      ));
  String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.FirstName''',
      ));
  String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.LastName''',
      ));
  String? middleName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.MiddleName''',
      ));
  String? lastLoginDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.LastLoginDate''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Token''',
      ));
  String? expiration(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Expiration''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Message''',
      ));
}

class CaptchaCall {
  Future<ApiCallResponse> call({
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'captcha',
      apiUrl: '${AuthenticationGroup.baseUrl}$dynamicBaseURL/api/captcha',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Authentication Group Code

/// Start Registration Group Code

class RegistrationGroup {
  static String baseUrl = 'https://';
  static Map<String, String> headers = {};
  static CreateProfileCall createProfileCall = CreateProfileCall();
  static CardInfoCall cardInfoCall = CardInfoCall();
  static ResendEmailCall resendEmailCall = ResendEmailCall();
  static SecurityQuestionCall securityQuestionCall = SecurityQuestionCall();
}

class CreateProfileCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? password = '',
    String? confirmPassword = '',
    String? homePhoneNumber = '',
    String? mobilePhoneNumber = '',
    String? workPhoneNumber = '',
    String? securityQuestion1 = '',
    String? answer1 = '',
    String? securityQuestion2 = '',
    String? answer2 = '',
    String? securityQuestion3 = '',
    String? answer3 = '',
    String? dynamicBaseURL = '',
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "UserName": "$userId",
  "Password": "$password",
  "ConfirmPassword": "$confirmPassword",
  "HomePhone": "$homePhoneNumber",
  "MobilePhone": "$mobilePhoneNumber",
  "WorkPhone": "$workPhoneNumber",
  "QuestionID1": "$securityQuestion1",
  "Answer1": "$answer1",
  "QuestionID2": "$securityQuestion2",
  "Answer2": "$answer2",
  "QuestionID3": "$securityQuestion3",
  "Answer3": "$answer3",
"EmailAddress": "$email"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createProfile',
      apiUrl:
          '${RegistrationGroup.baseUrl}$dynamicBaseURL/api/registration/create-profile',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CardInfoCall {
  Future<ApiCallResponse> call({
    String? cardNumber = '',
    int? expirationMonth,
    int? expiratonYear,
    int? socialSecurityNumber,
    String? dateOfBirth = '',
    String? emailAddress = '',
    String? confirmEmailAddress = '',
    String? dynamicBaseURL = '',
    bool? acceptRegistrationMarketing,
    String? dOBDay = '',
    String? dOBMonth = '',
    String? dOBYear = '',
  }) async {
    final ffApiRequestBody = '''
{
  "CardNumber": "$cardNumber",
  "CardExpiryMonth": $expirationMonth,
  "CardExpiryYear": $expiratonYear,
  "SSN": $socialSecurityNumber,
  "DateOfBirth": "$dateOfBirth",
  "EmailAddress": "$emailAddress",
  "ConfirmEmailAddress": "$confirmEmailAddress",
  "AcceptRegistrationMarketing": $acceptRegistrationMarketing,
  "DOB_Day": "$dOBDay",
  "DOB_Month": "$dOBMonth",
  "DOB_Year": "$dOBYear"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'cardInfo',
      apiUrl:
          '${RegistrationGroup.baseUrl}$dynamicBaseURL/api/registration/cardinfo',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ResendEmailCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? dynamicBaseURL = '',
  }) async {
    final ffApiRequestBody = '''
{
  "EmailAddress": "$email"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'resendEmail',
      apiUrl:
          '${RegistrationGroup.baseUrl}$dynamicBaseURL/api/registration/send-email',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SecurityQuestionCall {
  Future<ApiCallResponse> call({
    int? type = 1,
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'securityQuestion',
      apiUrl:
          '${RegistrationGroup.baseUrl}$dynamicBaseURL/api/security-questions',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'type': type,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Registration Group Code

/// Start Home Dashboard API Group Code

class HomeDashboardAPIGroup {
  static String baseUrl = 'https://';
  static Map<String, String> headers = {};
  static AccountSummaryCall accountSummaryCall = AccountSummaryCall();
  static RecentactivityCall recentactivityCall = RecentactivityCall();
  static PaymenthistoryCall paymenthistoryCall = PaymenthistoryCall();
  static RewardpointsCall rewardpointsCall = RewardpointsCall();
  static StatementsCall statementsCall = StatementsCall();
  static ViewStatementsCall viewStatementsCall = ViewStatementsCall();
  static DownloadStatementsCall downloadStatementsCall =
      DownloadStatementsCall();
  static CalculatorsettingsCall calculatorsettingsCall =
      CalculatorsettingsCall();
  static ViewPlanCall viewPlanCall = ViewPlanCall();
  static IsPrimaryUserCall isPrimaryUserCall = IsPrimaryUserCall();
}

class AccountSummaryCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Account Summary',
      apiUrl:
          '${HomeDashboardAPIGroup.baseUrl}$dynamicBaseURL/api/users/$userId/accounts',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? dataResponse(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class RecentactivityCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? accountNumber = '',
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'recentactivity',
      apiUrl:
          '${HomeDashboardAPIGroup.baseUrl}$dynamicBaseURL/api/users/$userId/accounts/$accountNumber/recent-activity',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? recentActivityList(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class PaymenthistoryCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? accountNumber = '',
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'paymenthistory',
      apiUrl:
          '${HomeDashboardAPIGroup.baseUrl}$dynamicBaseURL/api/users/$userId/accounts/$accountNumber/payment-history',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? paymentHistoryList(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class RewardpointsCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? accountNumber = '',
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'rewardpoints',
      apiUrl:
          '${HomeDashboardAPIGroup.baseUrl}$dynamicBaseURL/api/users/$userId/accounts/$accountNumber/reward-points',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? rewardPointsList(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  String? statementDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].StatementDate''',
      ));
}

class StatementsCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? accountNumber = '',
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'statements',
      apiUrl:
          '${HomeDashboardAPIGroup.baseUrl}$dynamicBaseURL/api/users/$userId/accounts/$accountNumber/statements',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? statementList(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  List<int>? indexList(dynamic response) => (getJsonField(
        response,
        r'''$[:].Index''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? dateList(dynamic response) => (getJsonField(
        response,
        r'''$[:].Description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ViewStatementsCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    int? docIndex,
    String? accountNumber = '',
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'View Statements',
      apiUrl:
          '${HomeDashboardAPIGroup.baseUrl}$dynamicBaseURL/api/users/$userId/accounts/$accountNumber/statements/$docIndex',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DownloadStatementsCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    int? docIndex,
    String? accountNumber = '',
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Download Statements',
      apiUrl:
          '${HomeDashboardAPIGroup.baseUrl}$dynamicBaseURL/api/users/$userId/accounts/$accountNumber/statements/$docIndex?download=true',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CalculatorsettingsCall {
  Future<ApiCallResponse> call({
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'calculatorsettings',
      apiUrl:
          '${HomeDashboardAPIGroup.baseUrl}$dynamicBaseURL/api/calculator-settings',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? interestRatePerYear(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.InterestRatePerYear''',
      ));
  dynamic calculatorRes(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class ViewPlanCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? accountNumber = '',
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'View Plan',
      apiUrl:
          '${HomeDashboardAPIGroup.baseUrl}$dynamicBaseURL/api/users/$userId/accounts/$accountNumber/plans',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? planList(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class IsPrimaryUserCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'isPrimary User',
      apiUrl:
          '${HomeDashboardAPIGroup.baseUrl}$dynamicBaseURL/api/users/$userId/user-info',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Home Dashboard API Group Code

/// Start Authorised Users Group Code

class AuthorisedUsersGroup {
  static String baseUrl = 'https://';
  static Map<String, String> headers = {};
  static AuthorisedUsersCall authorisedUsersCall = AuthorisedUsersCall();
  static AddAuthorisedUsersCall addAuthorisedUsersCall =
      AddAuthorisedUsersCall();
  static UserAddressCall userAddressCall = UserAddressCall();
}

class AuthorisedUsersCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? userId = '',
    String? accountNumber = '',
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Authorised Users',
      apiUrl:
          '${AuthorisedUsersGroup.baseUrl}$dynamicBaseURL/api/users/$userId/accounts/$accountNumber/authorized-users',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AddAuthorisedUsersCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? userId = '',
    String? accountNumber = '',
    String? firstName = '',
    String? middleName = '',
    String? lastName = '',
    int? ssn,
    String? billingStreetName = '',
    String? billingAptRoomNumber = '',
    String? billingCity = '',
    String? billingStateAbv = '',
    String? billingZip = '',
    String? billingZipPlus = '',
    String? tempAddStreetName = '',
    String? tempAddAptRoomNumber = '',
    String? tempAddCity = '',
    String? tempAddStateAbv = '',
    String? tempAddZip = '',
    String? tempAddZipPlus = '',
    String? dynamicBaseURL = '',
  }) async {
    final ffApiRequestBody = '''
{
  "FirstName": "$firstName",
  "MiddleName": "$middleName",
  "LastName": "$lastName",
  "SocialSecurityNumber": $ssn,
  "BillingAddress": {
    "StreetName": "$billingStreetName",
    "AptOrSuitOrRoomNumber": "$billingAptRoomNumber",
    "City": "$billingCity",
    "StateAbv": "$billingStateAbv",
    "Zip": "$billingZip",
    "ZipPlus": "$billingZipPlus"
  },
  "TempAddress": {
    "StreetName": "$tempAddStreetName",
    "AptOrSuitOrRoomNumber": "$tempAddAptRoomNumber",
    "City": "$tempAddCity",
    "StateAbv": "$tempAddStateAbv",
    "Zip": "$tempAddZip",
    "ZipPlus": "$tempAddZipPlus"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add Authorised Users',
      apiUrl:
          '${AuthorisedUsersGroup.baseUrl}$dynamicBaseURL/api/users/$userId/accounts/$accountNumber/authorized-users',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UserAddressCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? userId = '',
    String? accountNumber = '',
    String? firstName = '',
    String? middleName = '',
    String? lastName = '',
    String? ssn = '',
    String? dynamicBaseURL = '',
  }) async {
    final ffApiRequestBody = '''
{
  "FirstName": "$firstName",
  "MiddleName": "$middleName",
  "LastName": "$lastName",
  "SSN": "$ssn"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'User Address',
      apiUrl:
          '${AuthorisedUsersGroup.baseUrl}$dynamicBaseURL/api/users/$userId/accounts/$accountNumber/authorized-users-address',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Authorised Users Group Code

/// Start Security Alerts Group Code

class SecurityAlertsGroup {
  static String baseUrl = 'https://';
  static Map<String, String> headers = {};
  static SecurityAlertsCall securityAlertsCall = SecurityAlertsCall();
  static UpdatePasswordCall updatePasswordCall = UpdatePasswordCall();
  static UpdateSecurityAlertsCall updateSecurityAlertsCall =
      UpdateSecurityAlertsCall();
  static SecurityQuestionsCall securityQuestionsCall = SecurityQuestionsCall();
  static UserSecurityAnswersCall userSecurityAnswersCall =
      UserSecurityAnswersCall();
  static UpdateSecurityQuestionsCall updateSecurityQuestionsCall =
      UpdateSecurityQuestionsCall();
}

class SecurityAlertsCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Security Alerts',
      apiUrl:
          '${SecurityAlertsGroup.baseUrl}$dynamicBaseURL/api/users/$userId/alerts',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  bool? isTwoFactorAuthenticationEmail(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.IsTwoFactorAuthenticationEmail''',
      ));
  bool? isTwoFactorAuthenticationText(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.IsTwoFactorAuthenticationText''',
      ));
}

class UpdatePasswordCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? currentPassword = '',
    String? password = '',
    String? confirmPassword = '',
    String? dynamicBaseURL = '',
  }) async {
    final ffApiRequestBody = '''
{
  "CurrentPassword": "$currentPassword",
  "NewPassword": "$password",
  "ConfirmPassword": "$confirmPassword"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updatePassword',
      apiUrl:
          '${SecurityAlertsGroup.baseUrl}$dynamicBaseURL/api/users/$userId/password',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateSecurityAlertsCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    dynamic dataJson,
    String? dynamicBaseURL = '',
  }) async {
    final data = _serializeJson(dataJson);
    final ffApiRequestBody = data;
    return ApiManager.instance.makeApiCall(
      callName: 'Update Security Alerts',
      apiUrl:
          '${SecurityAlertsGroup.baseUrl}$dynamicBaseURL/api/users/$userId/alerts',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SecurityQuestionsCall {
  Future<ApiCallResponse> call({
    String? type = '',
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Security Questions',
      apiUrl:
          '${SecurityAlertsGroup.baseUrl}$dynamicBaseURL/api/security-questions?type=$type',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UserSecurityAnswersCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'User Security Answers',
      apiUrl:
          '${SecurityAlertsGroup.baseUrl}$dynamicBaseURL/api/users/$userId/security-questions',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateSecurityQuestionsCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    dynamic dataJson,
    String? dynamicBaseURL = '',
  }) async {
    final data = _serializeJson(dataJson);
    final ffApiRequestBody = data;
    return ApiManager.instance.makeApiCall(
      callName: 'Update Security Questions',
      apiUrl:
          '${SecurityAlertsGroup.baseUrl}$dynamicBaseURL/api/users/$userId/security-questions',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Security Alerts Group Code

/// Start ManageContactDetails Group Code

class ManageContactDetailsGroup {
  static String baseUrl = 'https://';
  static Map<String, String> headers = {};
  static PreferencesCall preferencesCall = PreferencesCall();
  static UpdatePreferencesCall updatePreferencesCall = UpdatePreferencesCall();
  static GetUserAddressCall getUserAddressCall = GetUserAddressCall();
  static UpdateUserAddressCall updateUserAddressCall = UpdateUserAddressCall();
  static GetEmailAddressCall getEmailAddressCall = GetEmailAddressCall();
  static UpdateEmailAddressCall updateEmailAddressCall =
      UpdateEmailAddressCall();
  static GetPhoneNumbersCall getPhoneNumbersCall = GetPhoneNumbersCall();
  static UpdatePhoneNumbersCall updatePhoneNumbersCall =
      UpdatePhoneNumbersCall();
  static GetTimesCall getTimesCall = GetTimesCall();
  static GetTimezonesCall getTimezonesCall = GetTimezonesCall();
  static AskTwoFactorCall askTwoFactorCall = AskTwoFactorCall();
}

class PreferencesCall {
  Future<ApiCallResponse> call({
    String? userId = 'testuser',
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'preferences',
      apiUrl:
          '${ManageContactDetailsGroup.baseUrl}$dynamicBaseURL/api/users/$userId/preferences',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  bool? isStatementEmail(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.IsStatementEmail''',
      ));
  bool? isLegalNoticeEmail(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.IsLegalNoticeEmail''',
      ));
  bool? isExchangeCreditPromotion(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.IsExchangeCreditPromotion''',
      ));
  bool? isFreezeAccount(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.IsFreezeAccount''',
      ));
}

class UpdatePreferencesCall {
  Future<ApiCallResponse> call({
    String? userId = 'testuser',
    bool? isStatementEmail,
    bool? isLegalNoticeEmail,
    bool? isExchangeCreditPromotion,
    String? dynamicBaseURL = '',
  }) async {
    final ffApiRequestBody = '''
{
  "IsStatementEmail": $isStatementEmail,
  "IsLegalNoticeEmail": $isLegalNoticeEmail,
  "IsExchangeCreditPromotion": $isExchangeCreditPromotion
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'update preferences',
      apiUrl:
          '${ManageContactDetailsGroup.baseUrl}$dynamicBaseURL/api/users/$userId/preferences',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? response(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$''',
      ));
}

class GetUserAddressCall {
  Future<ApiCallResponse> call({
    String? userId = 'testuser',
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get user address',
      apiUrl:
          '${ManageContactDetailsGroup.baseUrl}$dynamicBaseURL/api/users/$userId/address',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? errorMess(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? city(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.City''',
      ));
  String? state(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.State''',
      ));
  String? zip(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Zip''',
      ));
  String? zipPlus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ZipPlus''',
      ));
  String? address1(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Address1''',
      ));
  String? address2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Address2''',
      ));
}

class UpdateUserAddressCall {
  Future<ApiCallResponse> call({
    String? userId = 'testuser',
    String? state = '',
    String? address1 = '',
    String? city = '',
    String? address2 = '',
    String? zip = '',
    String? zipPlus = '',
    String? currentPassword = '',
    String? dynamicBaseURL = '',
  }) async {
    final ffApiRequestBody = '''
{
  "Address1": "$address1",
  "Address2": "$address2",
  "City": "$city",
  "State": "$state",
  "Zip": "$zip",
  "ZipPlus": "$zipPlus",
  "CurrentPassword": "$currentPassword"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'update user address ',
      apiUrl:
          '${ManageContactDetailsGroup.baseUrl}$dynamicBaseURL/api/users/$userId/address',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? errorMess(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Message''',
      ));
}

class GetEmailAddressCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get email address',
      apiUrl:
          '${ManageContactDetailsGroup.baseUrl}$dynamicBaseURL/api/users/$userId/email-address',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateEmailAddressCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? emailAddress = '',
    String? confirmEmailAddress = '',
    String? currentPassword = '',
    String? dynamicBaseURL = '',
  }) async {
    final ffApiRequestBody = '''
{
  "EmailAddress": "$emailAddress",
  "ConfirmEmailAddress": "$confirmEmailAddress",
  "CurrentPassword": "$currentPassword"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'update email address',
      apiUrl:
          '${ManageContactDetailsGroup.baseUrl}$dynamicBaseURL/api/users/$userId/email-address',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? apiError(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class GetPhoneNumbersCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get phone numbers',
      apiUrl:
          '${ManageContactDetailsGroup.baseUrl}$dynamicBaseURL/api/users/$userId/phone-numbers',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? contactNo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ContactNo''',
      ));
  String? mobileNo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.MobileNo''',
      ));
  String? workNo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.WorkNo''',
      ));
  int? smsTimePrefrence(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.SmsTimePrefrence''',
      ));
  bool? smsoptin(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.SMS_OPT_IN''',
      ));
  String? smsoptincode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.SMS_OPT_IN_CODE''',
      ));
  bool? sMSEnrollmentConfirmationPending(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.SMSEnrollmentConfirmationPending''',
      ));
  String? sMSEnrollmentmobileNo(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.SMSEnrollmentmobileNo''',
      ));
  dynamic fromHour(dynamic response) => getJsonField(
        response,
        r'''$.FromHour''',
      );
  dynamic timeZoneID(dynamic response) => getJsonField(
        response,
        r'''$.TimeZoneID''',
      );
  dynamic toHour(dynamic response) => getJsonField(
        response,
        r'''$.ToHour''',
      );
}

class UpdatePhoneNumbersCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? homePhoneNumber = '\"\"',
    String? mobilePhoneNumber = '\"\"',
    String? workPhoneNumber = '\"\"',
    bool? smsOptIn,
    String? smsOptInCode = '',
    int? smsTimePrefrence,
    String? timeZoneID = '\"\"',
    String? fromHour = '\"\"',
    String? toHour = '\"\"',
    String? currentPassword = '',
    String? dynamicBaseURL = '',
    bool? sMSEnrollmentConfirmationPending,
    String? sMSEnrollmentmobileNo = '',
  }) async {
    final ffApiRequestBody = '''
{
  "ContactNo": "$homePhoneNumber",
  "MobileNo": "$mobilePhoneNumber",
  "WorkNo": "$workPhoneNumber",
  "SMS_OPT_IN": $smsOptIn,
  "SMS_OPT_IN_CODE": "$smsOptInCode",
  "SmsTimePrefrence": $smsTimePrefrence,
  "TimeZoneID": "$timeZoneID",
  "FromHour": "$fromHour",
  "ToHour": "$toHour",
  "SMSEnrollmentConfirmationPending": $sMSEnrollmentConfirmationPending,
  "SMSEnrollmentmobileNo": "$sMSEnrollmentmobileNo",
  "CurrentPassword": "$currentPassword"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'update phone numbers ',
      apiUrl:
          '${ManageContactDetailsGroup.baseUrl}$dynamicBaseURL/api/users/$userId/phone-numbers',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? homePhoneNumber(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.HomePhoneNumber''',
      ));
  int? mobilePhoneNumber(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.MobilePhoneNumber''',
      ));
  int? workPhoneNumber(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.WorkPhoneNumber''',
      ));
  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Message''',
      ));
}

class GetTimesCall {
  Future<ApiCallResponse> call({
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getTimes',
      apiUrl: '${ManageContactDetailsGroup.baseUrl}$dynamicBaseURL/api/times',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? timeList(dynamic response) => (getJsonField(
        response,
        r'''$[:].Text''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? valueList(dynamic response) => (getJsonField(
        response,
        r'''$[:].Value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? timeAllList(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GetTimezonesCall {
  Future<ApiCallResponse> call({
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetTimezones',
      apiUrl:
          '${ManageContactDetailsGroup.baseUrl}$dynamicBaseURL/api/timezones',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? abbreviationList(dynamic response) => (getJsonField(
        response,
        r'''$[:].Abbreviation''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? displayNameList(dynamic response) => (getJsonField(
        response,
        r'''$[:].DisplayName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? timeZoneIDList(dynamic response) => getJsonField(
        response,
        r'''$[:].TimeZoneID''',
        true,
      ) as List?;
  List? timeZonesList(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class AskTwoFactorCall {
  Future<ApiCallResponse> call({
    String? userName = '',
    String? dynamicBaseURL = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userName": "$userName"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AskTwoFactor',
      apiUrl:
          '${ManageContactDetailsGroup.baseUrl}$dynamicBaseURL/api/ask-two-fa',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.UserId''',
      ));
  bool? isSecurityQuestionsNeeded(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.IsSecurityQuestionsNeeded''',
      ));
  bool? is2FANeeded(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.Is2FANeeded''',
      ));
  bool? isTwoFAOtpIn(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.IsTwoFAOtpIn''',
      ));
  bool? isTwoFAEmailOptIn(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.IsTwoFAEmailOptIn''',
      ));
  bool? isSMSOptIn(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.IsSMSOptIn''',
      ));
  String? emailAddress(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.EmailAddress''',
      ));
  String? mobileNo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.MobileNo''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.code''',
      ));
}

/// End ManageContactDetails Group Code

/// Start Banking Profile Group Code

class BankingProfileGroup {
  static String baseUrl = 'https://';
  static Map<String, String> headers = {};
  static GetBankingProfilesCall getBankingProfilesCall =
      GetBankingProfilesCall();
  static DeleteBankingProfileCall deleteBankingProfileCall =
      DeleteBankingProfileCall();
  static CreateBankingProfileCall createBankingProfileCall =
      CreateBankingProfileCall();
}

class GetBankingProfilesCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Banking Profiles',
      apiUrl:
          '${BankingProfileGroup.baseUrl}$dynamicBaseURL/api/users/$userId/bank-profiles',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteBankingProfileCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? accountNo = '',
    int? profileNo,
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete Banking Profile',
      apiUrl:
          '${BankingProfileGroup.baseUrl}$dynamicBaseURL/api/users/$userId/accounts/$accountNo/bank-profiles/$profileNo',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateBankingProfileCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? accountNo = '',
    dynamic dataJson,
    String? dynamicBaseURL = '',
  }) async {
    final data = _serializeJson(dataJson);
    final ffApiRequestBody = data;
    return ApiManager.instance.makeApiCall(
      callName: 'Create Banking Profile',
      apiUrl:
          '${BankingProfileGroup.baseUrl}$dynamicBaseURL/api/users/$userId/accounts/$accountNo/bank-profiles',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Banking Profile Group Code

/// Start Static Content Group Code

class StaticContentGroup {
  static String baseUrl = 'https://';
  static Map<String, String> headers = {};
  static PromotionsCall promotionsCall = PromotionsCall();
  static StaticPagesCall staticPagesCall = StaticPagesCall();
  static PromotionsubitemsCall promotionsubitemsCall = PromotionsubitemsCall();
}

class PromotionsCall {
  Future<ApiCallResponse> call({
    String? page = 'https://apigateway-dev-ccoox6j1.uc.gateway.dev/api',
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Promotions',
      apiUrl:
          '${StaticContentGroup.baseUrl}$dynamicBaseURL/api/customerads?pageName=$page',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class StaticPagesCall {
  Future<ApiCallResponse> call({
    String? pageName = '',
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Static Pages',
      apiUrl:
          '${StaticContentGroup.baseUrl}$dynamicBaseURL/api/static-pages?pageName=$pageName',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PromotionsubitemsCall {
  Future<ApiCallResponse> call({
    String? pageName = '',
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Promotionsubitems',
      apiUrl:
          '${StaticContentGroup.baseUrl}$dynamicBaseURL/api/customerads?pageName=$pageName',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Static Content Group Code

/// Start Payments Group Code

class PaymentsGroup {
  static String baseUrl = 'https://';
  static Map<String, String> headers = {
    'apipsk':
        'HQrdBCj8nQLqLe733dDny3yHz83CwtsggjBeJU7x8qu5TcbM5hdPCL2rZTc8gDJA2YZrysDWnEMMVqdnQonvKTpT4JBDvxJqqsfsGvYukvxAbsyPKPQXTpNf6Ei8EJxn',
  };
  static GetPaymentsCall getPaymentsCall = GetPaymentsCall();
  static AddPayamentCall addPayamentCall = AddPayamentCall();
  static UpdatePaymentCall updatePaymentCall = UpdatePaymentCall();
  static DeletePaymentCall deletePaymentCall = DeletePaymentCall();
  static GetBankProfilesBasedOnAccountNumberCall
      getBankProfilesBasedOnAccountNumberCall =
      GetBankProfilesBasedOnAccountNumberCall();
  static AccountSummaryByAccountNumberCall accountSummaryByAccountNumberCall =
      AccountSummaryByAccountNumberCall();
  static GetBankAccountsAndBankProfilesByUserIDCall
      getBankAccountsAndBankProfilesByUserIDCall =
      GetBankAccountsAndBankProfilesByUserIDCall();
}

class GetPaymentsCall {
  Future<ApiCallResponse> call({
    String? accountNo = '',
    String? userId = '',
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Payments',
      apiUrl:
          '${PaymentsGroup.baseUrl}$dynamicBaseURL/api/users/$userId/accounts/$accountNo/payments',
      callType: ApiCallType.GET,
      headers: {
        'apipsk':
            'HQrdBCj8nQLqLe733dDny3yHz83CwtsggjBeJU7x8qu5TcbM5hdPCL2rZTc8gDJA2YZrysDWnEMMVqdnQonvKTpT4JBDvxJqqsfsGvYukvxAbsyPKPQXTpNf6Ei8EJxn',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AddPayamentCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? accountNo = '',
    int? profileNo,
    String? paymentType = '',
    String? paymentOption = '',
    String? paymentDate = '',
    String? otherAmountValue = '',
    String? dynamicBaseURL = '',
  }) async {
    final ffApiRequestBody = '''
{
  "ProfileNo": "$profileNo",
  "PaymentType": "$paymentType",
  "PaymentOption": "$paymentOption",
  "PaymentDate": "$paymentDate",
  "OtherAmountValue": "$otherAmountValue"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add Payament',
      apiUrl:
          '${PaymentsGroup.baseUrl}$dynamicBaseURL/api/users/$userId/accounts/$accountNo/payments',
      callType: ApiCallType.POST,
      headers: {
        'apipsk':
            'HQrdBCj8nQLqLe733dDny3yHz83CwtsggjBeJU7x8qu5TcbM5hdPCL2rZTc8gDJA2YZrysDWnEMMVqdnQonvKTpT4JBDvxJqqsfsGvYukvxAbsyPKPQXTpNf6Ei8EJxn',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdatePaymentCall {
  Future<ApiCallResponse> call({
    int? userId,
    int? accountNo,
    String? profileNo = '',
    String? paymentNo = '',
    String? paymentType = '',
    String? paymentOption = '',
    String? paymentDate = '',
    String? otherAmountValue = '',
    String? dynamicBaseURL = '',
  }) async {
    final ffApiRequestBody = '''
{
  "ProfileNo": "$profileNo",
  "PaymentNo": 2, 
  "PaymentType": "OneTime",
  "PaymentOption": "O",
  "PaymentDate":"04-15-2024",
  "OtherAmountValue":"30"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Payment',
      apiUrl:
          '${PaymentsGroup.baseUrl}$dynamicBaseURL/api/users/$userId/accounts/$accountNo/payments',
      callType: ApiCallType.POST,
      headers: {
        'apipsk':
            'HQrdBCj8nQLqLe733dDny3yHz83CwtsggjBeJU7x8qu5TcbM5hdPCL2rZTc8gDJA2YZrysDWnEMMVqdnQonvKTpT4JBDvxJqqsfsGvYukvxAbsyPKPQXTpNf6Ei8EJxn',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletePaymentCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? accountNo = '',
    String? paymentNo = '',
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete Payment',
      apiUrl:
          '${PaymentsGroup.baseUrl}$dynamicBaseURL/api/users/$userId/accounts/$accountNo/payments/$paymentNo',
      callType: ApiCallType.DELETE,
      headers: {
        'apipsk':
            'HQrdBCj8nQLqLe733dDny3yHz83CwtsggjBeJU7x8qu5TcbM5hdPCL2rZTc8gDJA2YZrysDWnEMMVqdnQonvKTpT4JBDvxJqqsfsGvYukvxAbsyPKPQXTpNf6Ei8EJxn',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetBankProfilesBasedOnAccountNumberCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? accountNo = '',
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Bank Profiles Based On Account Number',
      apiUrl:
          '${PaymentsGroup.baseUrl}$dynamicBaseURL/api/users/$userId/accounts/$accountNo/payments',
      callType: ApiCallType.GET,
      headers: {
        'apipsk':
            'HQrdBCj8nQLqLe733dDny3yHz83CwtsggjBeJU7x8qu5TcbM5hdPCL2rZTc8gDJA2YZrysDWnEMMVqdnQonvKTpT4JBDvxJqqsfsGvYukvxAbsyPKPQXTpNf6Ei8EJxn',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AccountSummaryByAccountNumberCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? accountNo = '',
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Account Summary By Account Number',
      apiUrl:
          '${PaymentsGroup.baseUrl}$dynamicBaseURL/api/users/$userId/accounts/$accountNo',
      callType: ApiCallType.GET,
      headers: {
        'apipsk':
            'HQrdBCj8nQLqLe733dDny3yHz83CwtsggjBeJU7x8qu5TcbM5hdPCL2rZTc8gDJA2YZrysDWnEMMVqdnQonvKTpT4JBDvxJqqsfsGvYukvxAbsyPKPQXTpNf6Ei8EJxn',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetBankAccountsAndBankProfilesByUserIDCall {
  Future<ApiCallResponse> call({
    String? dynamicBaseURL = '',
    String? userId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Bank Accounts and Bank Profiles by User ID',
      apiUrl:
          '${PaymentsGroup.baseUrl}$dynamicBaseURL/api/users/$userId/bank-profiles',
      callType: ApiCallType.GET,
      headers: {
        'apipsk':
            'HQrdBCj8nQLqLe733dDny3yHz83CwtsggjBeJU7x8qu5TcbM5hdPCL2rZTc8gDJA2YZrysDWnEMMVqdnQonvKTpT4JBDvxJqqsfsGvYukvxAbsyPKPQXTpNf6Ei8EJxn',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Payments Group Code

/// Start schoolapis Group Code

class SchoolapisGroup {
  static String baseUrl = 'https://';
  static Map<String, String> headers = {};
}

/// End schoolapis Group Code

/// Start Apply Now Group Code

class ApplyNowGroup {
  static String baseUrl = 'https://';
  static Map<String, String> headers = {};
  static ApplyCall applyCall = ApplyCall();
}

class ApplyCall {
  Future<ApiCallResponse> call({
    String? dynamicBaseURL = '',
    String? cardApplyingFor = '',
    String? firstName = '',
    String? middleInitial = '',
    String? lastName = '',
    String? suffix = '',
    String? dob = '',
    int? ssn,
    String? address1 = '',
    String? address2 = '',
    String? city = '',
    String? state = '',
    int? zipCode,
    int? yearsAtAddress,
    int? monthsAtAddress,
    int? monthlyIncome,
    String? employer = '',
    int? yearsAtEmployer,
    int? monthsAtEmployer,
    String? motherMaiden = '',
    String? email = '',
    int? monthlyRent,
    int? mobileNo,
    String? acceptTerms1 = '',
    String? acceptTerms2 = '',
    String? userId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "CardApplyingFor": "$cardApplyingFor",
  "FirstName": "$firstName",
  "MiddleInitial": "$middleInitial",
  "LastName": "$lastName",
  "Suffix": "$suffix",
  "DOB": "$dob",
  "SSN": $ssn,
  "Address1": "$address1",
  "Address2": "$address2",
  "City": "$city",
  "State": "$state",
  "ZipCode": $zipCode,
  "YearsAtAddress": $yearsAtAddress,
  "MonthsAtAddress": $monthsAtAddress,
  "MonthlyIncome": $monthlyIncome,
  "Employer": "$employer",
  "YearsAtEmployer": $yearsAtEmployer,
  "MonthsAtEmployer": $monthsAtEmployer,
  "MotherMaiden": "$motherMaiden",
  "Email": "$email",
  "MonthlyRent": $monthlyRent,
  "MobileNo": $mobileNo,
  "AcceptTerms1": "$acceptTerms1",
  "AcceptTerms2": "$acceptTerms2",
  "UserId":"$userId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Apply',
      apiUrl: '${ApplyNowGroup.baseUrl}$dynamicBaseURL/api/cards/apply',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Apply Now Group Code

class StatesCall {
  static Future<ApiCallResponse> call({
    String? dynamicBaseURL = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'States',
      apiUrl: '$dynamicBaseURL/api/states',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? statesList(dynamic response) => (getJsonField(
        response,
        r'''$[:].State''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? idList(dynamic response) => (getJsonField(
        response,
        r'''$[:].Id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? abbreviationList(dynamic response) => (getJsonField(
        response,
        r'''$[:].Abbreviation''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? stateRes(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class TestEnvironmentCall {
  static Future<ApiCallResponse> call({
    String? baseUrl = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Test Environment',
      apiUrl: '$baseUrl',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
