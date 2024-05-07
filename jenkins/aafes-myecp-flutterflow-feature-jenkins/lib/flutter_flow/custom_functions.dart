import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/custom_auth/auth_util.dart';

bool dateValidator(String dateString) {
  final int MAX_VALID_YR = DateTime.now().year - 18;
  final int MIN_VALID_YR = 1800;

  // Check if the input date has the correct format (MM/DD/YYYY)
  RegExp dateRegex = RegExp(r'^\d{2}/\d{2}/\d{4}$');
  if (!dateRegex.hasMatch(dateString)) {
    return false;
  }

  // Extract month, day, and year from the input date
  List<int> dateParts = dateString.split('/').map(int.parse).toList();
  int month = dateParts[0];
  int day = dateParts[1];
  int year = dateParts[2];

  // If year, month, and day are not in the given range
  if (year > MAX_VALID_YR || year < MIN_VALID_YR) return false;
  if (month < 1 || month > 12) return false;
  if (day < 1 || day > 31) return false;

  // Handle February month with a leap year
  if (month == 2) {
    if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
      return (day <= 29);
    } else {
      return (day <= 28);
    }
  }

  // Months of April, June, Sept, and Nov must have the number of days less than or equal to 30.
  if (month == 4 || month == 6 || month == 9 || month == 11) {
    return (day <= 30);
  }

  // All checks passed, the date is valid
  return true;
}

double calculateDesktopBodyHeight(double height) {
  return height - 70 - 55;
}

bool isValidEmail(String email) {
// Regular expression pattern for validating email addresses
  final emailRegex = RegExp(
    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
    caseSensitive: false,
    multiLine: false,
  );

  // Check if the email matches the regular expression pattern
  return emailRegex.hasMatch(email);
}

double calculateMobileBodyHeight(double height) {
  print("height: ${height}");
  print("calculcated height: ${height - 55 - 60}");

  return height - 55 - 60;
}

bool containsSpecialCharacters(String data) {
  // Define a regular expression pattern to match special characters, including space
  RegExp specialChars = RegExp(r'[!@#%^&*(),.?":{}|<> ]');

  // Use the RegExp's 'hasMatch' method to check if the input string contains any special characters
  return specialChars.hasMatch(data);
}

List<String> getYearsListFromCurrentYear() {
  /// Get the current year
  int currentYear = DateTime.now().year;

  /// Generate a list of strings representing years from current year to current year + 10 (inclusive)
  List<String> yearsList = [];
  for (int i = currentYear; i <= currentYear + 10; i++) {
    yearsList.add(i.toString());
  }

  /// Return the list of years
  return yearsList;
}

int? getMonthNumber(String abbreviation) {
  Map<String, int> monthMap = {
    'Jan': 1,
    'Feb': 2,
    'Mar': 3,
    'Apr': 4,
    'May': 5,
    'Jun': 6,
    'Jul': 7,
    'Aug': 8,
    'Sep': 9,
    'Oct': 10,
    'Nov': 11,
    'Dec': 12,
  };

  return monthMap[abbreviation];
}

String toString(int data) {
  return data.toString();
}

int? toInt(
  String data,
  String? use,
) {
  try {
    // Remove all non-numeric characters using regular expression
    String numericData = data.replaceAll(RegExp(r'[^0-9]'), '');
    return int.parse(numericData);
  } catch (e) {
    //print('Error: $e $use');
    return null; // or any default value you want to return in case of an error
  }
}

String maskAndCapitalizeEmail(String email) {
  // Check if email is valid
  if (!isValidEmail(email)) {
    return "Invalid email";
  }

  // Split the email address into username and domain parts
  List<String> parts = email.split('@');

  String username = parts[0];
  String domain = parts[1];

  // Capitalize username
  String capitalizedUsername = username.toUpperCase();

  // If username length is less than 3, no need to mask
  if (capitalizedUsername.length <= 2) {
    return email.toUpperCase();
  }

  // Otherwise, mask characters except first and last
  String maskedUsername =
      '${capitalizedUsername[0]}${'*' * (capitalizedUsername.length - 2)}${capitalizedUsername[capitalizedUsername.length - 1]}';

  // Recombine username and domain, and return
  return '$maskedUsername@$domain'.toUpperCase();
}

String? toDatedMMMyyyy(String? inputDate) {
  // Parse the input date string into a DateTime object

  DateTime dateTime = DateTime.parse(inputDate!);
  // Format the DateTime object into the desired format
  String formattedDate = DateFormat("d MMM yyyy").format(dateTime);
  return formattedDate;
}

String toDateddMMMyyyy(String date) {
  String trimmedDate = date.trim();

  // Parse the trimmed input date string
  DateTime startDate = DateFormat('dd MMM yyyy').parse(trimmedDate);

  // Format the end date in the desired format
  String formattedEndDate = DateFormat('dd-MMM yyyy').format(startDate);
  return formattedEndDate;
}

String toDateDDMMYYYY(String date) {
// Define output date format
  DateFormat outputFormat = DateFormat("dd MMM yyyy");

  DateTime dateTime = DateTime.parse(date!);

  // Format the input date string directly to the desired output format
  String outputDateString = outputFormat.format(dateTime);
  return outputDateString;
}

int? isPrimaryUser(List<dynamic>? dataList) {
  dataList = dataList ?? [];
  int index =
      dataList.indexWhere((element) => element['IsPrimaryUser'] == true);
  return index == -1 ? 0 : index;
}

String? toDatedMMM(String? date) {
  DateTime dateTime = DateTime.parse(date!);

  // Format the date in 'd MMM' format
  String formattedDate = DateFormat('d MMM').format(dateTime);

  return formattedDate;
}

List<dynamic>? getThePendingActivityList(
  List<dynamic>? activityList,
  bool isPending,
) {
  List pendingList = [], postActivityList = [];
  if (activityList == null && (activityList ?? []).isEmpty) {
    return [];
  }
  if (activityList != null) {
    pendingList =
        activityList.where((element) => element["IsPending"] == true).toList();

    postActivityList =
        activityList.where((element) => element["IsPending"] == false).toList();
  }
  return isPending ? pendingList : postActivityList;
}

int getListLength(dynamic jsonResponse) {
  try {
    List<dynamic> parsedResponse = jsonDecode(jsonResponse);
    return parsedResponse.length;
  } catch (e) {
    print("Error: $e");
    return 0;
  }
}

String? createDownloadAndPViewPDFUrl(
  String? userID,
  String? docIndex,
  bool isFromView,
) {
  userID = userID ?? '12345';
  docIndex = docIndex ?? '1';
  String baseURL = "https://apigateway-dev-ccoox6j1.uc.gateway.dev/api/users";
  String viewPdfUrl = "$baseURL/$userID/accounts/$userID/statements/$docIndex";
  String downloadPdfUrl =
      "$baseURL/$userID/accounts/$userID/statements/$docIndex?download=true";

  return isFromView ? viewPdfUrl : downloadPdfUrl;
}

String? getTheStatementDateIndex(
  String? pdfName,
  List<String>? dataList,
) {
  int index = -1;
  if (dataList != null) {
    index = dataList.indexWhere((element) => element == (pdfName ?? ''));
  }

  return index == -1
      ? "1"
      : index <= dataList!.length
          ? "${index++}"
          : "$index";
}

String generateUniqueUUID() {
  return "abcdef";
}

String? toDateddMMMyy(String? inputDate) {
  // Parse the input date
  DateTime dateTime = DateTime.parse(inputDate!);

  // Format the parsed date to the desired format
  String formattedDate = DateFormat('dd MMM yy').format(dateTime);
  return formattedDate;
}

String? checkStringIsNull(dynamic text) {
  if (text != null) {
    if (text.runtimeType == int) {
      text = text.toString();
    }
    return text;
  } else {
    return "";
  }
}

String replaceDollar(String value) {
  // replace dollar and comma in string
  return value.replaceAll('\$', '').replaceAll(',', '');
}

int stringToInt(String value) {
  // convert string to int return zero if empty
  if (value.isEmpty) {
    return 0;
  } else {
    return int.parse(value);
  }
}

bool? isStringMatch(
  String? text,
  String? compareText,
) {
  if ((text ?? "") == (compareText ?? "")) {
    return true;
  } else {
    return false;
  }
}

String? formatPhoneNumber(String? phoneNumber) {
  if (phoneNumber == null || phoneNumber == "") {
    return "";
  }
  return phoneNumber.substring(0, 3) +
      '-' + // First three digits
      phoneNumber.substring(3, 6) +
      '-' + // Next three digits
      phoneNumber.substring(6);
}

String parseDateAuthUsers(String date) {
  try {
    DateTime dateTime = DateTime.parse(date);
    DateFormat formatter = DateFormat('dd MMM yyyy');
    String formattedDate = formatter.format(dateTime);
    return formattedDate;
  } catch (e) {
    print('Error parsing date: $e');
    return ''; // Return empty string in case of an exception
  }
}

String? getTimeZoneAbbreviation(
  List<dynamic>? timeZonelist,
  String? selected,
  bool? isFromGet,
) {
  String result = "";
  if (timeZonelist != null && (timeZonelist).isNotEmpty) {
    if (isFromGet ?? false) {
      result = timeZonelist.firstWhere(
              (e) => e['Abbreviation'] == (selected ?? ""),
              orElse: () => null)?['DisplayName'] ??
          '';
      print("getTimeZoneAbbreviation====>result==>DisplayName::$result");
    } else {
      result = timeZonelist.firstWhere(
              (e) => e['DisplayName'] == (selected ?? ""),
              orElse: () => null)?['Abbreviation'] ??
          '';
    }
    print("getTimeZoneAbbreviation====>result==>Abbreviation::$result");
  }
  return result;
}

String? getTimeValue(
  List<dynamic>? timeList,
  String? value,
  bool? isFromGet,
) {
  String result = "";
  if (timeList != null && (timeList ?? []).isNotEmpty) {
    if (isFromGet ?? false) {
      result = timeList.firstWhere((e) => e['Value'] == (value ?? ""),
              orElse: () => null)?['Text'] ??
          '';

      print("getTimeValue====>result==>Text::$result");
    } else {
      result = timeList.firstWhere((e) => e['Text'] == (value ?? ""),
              orElse: () => null)?['Value'] ??
          '';

      print("getTimeValue====>result==>Value::$result");
    }
  }
  return result;
}

bool validateRoutingNumber(String value) {
  List<String> array = value.split('');

  // Convert string elements to integers
  int providedChecksum = int.parse(array[8]);

  // Sum digits with appropriate multipliers
  int sum = (7 *
          (int.parse(array[0]) + int.parse(array[3]) + int.parse(array[6]))) +
      (3 * (int.parse(array[1]) + int.parse(array[4]) + int.parse(array[7]))) +
      (9 * (int.parse(array[2]) + int.parse(array[5])));

  // Calculate checksum
  int calculatedChecksum = sum % 10;

  // Compare with provided checksum
  if (calculatedChecksum != providedChecksum) {
    // Checksums don't match
    return false;
  } else {
    // Checksums match
    return true;
  }
}

String? getStateAddressValue(
  List<dynamic>? stateList,
  String? state,
) {
  String result = "";
  if (stateList != null && (stateList ?? []).isNotEmpty && state != null) {
    result = stateList!.firstWhere(
            (element) => element['Abbreviation'] == state,
            orElse: () => null)?['State'] ??
        "";
  }
  return result;
}

dynamic calculateInterest(
  String? principalAmount,
  String? interest,
  String? periods,
) {
  double p = double.parse(principalAmount ?? "0.0"); // loan amount
  double r = double.parse(interest ?? "0.0");
  int n = int.parse(periods ?? "0"); // number of loan payments
  r = (r / 1200);
  double numerator = (p * r * math.pow(1 + r, n));

  double denominator = (math.pow(1 + r, n)) - 1;

  double paymentAmount = numerator / denominator;

  int terms = n;
  double sumTotalInterest = 0;
  for (int i = 1; i <= terms; i++) {
    num step1 = math.pow((1 + r), i - 1);
    double step2 = (paymentAmount - (p * r));

    double nonRoundedPrincipal = (step1 * step2);

    double nonRoundedInterest = (paymentAmount - nonRoundedPrincipal);
    String interest = nonRoundedInterest.toStringAsFixed(2);
    sumTotalInterest += double.parse(interest);
  }

  Map result = {
    "monthlyPayment": paymentAmount.toStringAsFixed(2),
    "totalInterestPayable": sumTotalInterest.toStringAsFixed(2),
    "totalPayment": (sumTotalInterest + p).toStringAsFixed(2)
  };
  print("result calculation $result");

  return result;
}

bool? isContain(
  String? text,
  String? containText,
) {
  return text != null ? (text ?? '').contains(containText ?? "") : false;
}

String formatstring(double number) {
  if (number >= 10000000) {
    final formatter = NumberFormat("#,##,##0.00");
    return formatter.format(number);
  } else if (number >= 100000) {
    final formatter = NumberFormat("#,##,###.00");
    return formatter.format(number);
  } else if (number >= 1000) {
    final formatter = NumberFormat("#,###.00");
    return formatter.format(number);
  } else {
    final formatter = NumberFormat("0.00");
    return formatter.format(number);
  }
}

dynamic selectBankAccount(
  List<dynamic> inputJSON,
  String bankAccountNoLast4,
) {
// Iterate through the list of bank profiles
  for (var profile in inputJSON) {
    // Check if the BankAccountNoLast4 matches the provided value
    if (profile['AccountNoLast4'] == bankAccountNoLast4) {
      // Return the profile if found
      return profile;
    }
  }
  // If no matching profile is found, return an empty Map
  return {};
}

List<String> generateNumberList(int endPoint) {
  List<String> numbers = [];
  for (int i = 0; i <= endPoint; i++) {
    numbers.add(i.toString());
  }
  return numbers;
}

String boolToString(bool boolValue) {
  return boolValue.toString();
}

dynamic selectBankProfile(
  List<dynamic> inputJSON,
  String bankAccountNoLast4,
) {
// Iterate through the list of bank profiles
  for (var profile in inputJSON) {
    // Check if the BankAccountNoLast4 matches the provided value
    if (profile['BankAccountNoLast4'] == bankAccountNoLast4) {
      // Return the profile if found
      return profile;
    }
  }
  // If no matching profile is found, return an empty Map
  return {};
}

List<dynamic> returnPaymentMethodOptions(List<dynamic> options) {
  List<dynamic> results = [];
  for (var item in options) {
    String profileName = item['ProductTypeDesc'];
    String last4Digits = item['AccountNoLast4'];
    results.add({
      'label': '$profileName (...$last4Digits)',
      'value': item['AccountNumber']
    });
  }
  return results;
}

String extractLast4DigitsOfAccount(String input) {
  return input.substring(input.lastIndexOf('(') + 4, input.lastIndexOf(')'));
}

String? obscurePhoneNumber(String? phoneNumber) {
  // Check if the phone number is valid and has at least 10 digits

  if (phoneNumber == null || (phoneNumber ?? '').isEmpty) {
    return ""; // Return original if it's too short
  }

  // Get the last 4 digits
  String lastFourDigits = phoneNumber.substring(phoneNumber.length - 4);

  // Generate asterisks for masking
  String asterisks =
      List.generate(phoneNumber.length - 4, (index) => '*').join();

  // Combine masked digits with the last four digits
  return asterisks + lastFourDigits;
}

bool dateValidatorPayments(String dateString) {
  final int MAX_VALID_YR = DateTime.now().year + 100;
  final int MIN_VALID_YR = DateTime.now().year;

  // Check if the input date has the correct format (MM/DD/YYYY)
  RegExp dateRegex = RegExp(r'^\d{2}/\d{2}/\d{4}$');
  if (!dateRegex.hasMatch(dateString)) {
    return false;
  }

  // Extract month, day, and year from the input date
  List<int> dateParts = dateString.split('/').map(int.parse).toList();
  int month = dateParts[0];
  int day = dateParts[1];
  int year = dateParts[2];

  // If year, month, and day are not in the given range
  if (year > MAX_VALID_YR || year < MIN_VALID_YR) return false;
  if (month < 1 || month > 12) return false;
  if (day < 1 || day > 31) return false;

  // Handle February month with a leap year
  if (month == 2) {
    if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
      return (day <= 29);
    } else {
      return (day <= 28);
    }
  }

  // Months of April, June, Sept, and Nov must have the number of days less than or equal to 30.
  if (month == 4 || month == 6 || month == 9 || month == 11) {
    return (day <= 30);
  }

  // All checks passed, the date is valid
  return true;
}

List<String> returnAccountsDropdownItems(List<dynamic> jsonData) {
  // Initialize an empty list to store formatted strings
  List<String> formattedStrings = [];

  // Iterate through each account entry
  for (var account in jsonData) {
    // Extract relevant fields
    String productTypeDesc = account['ProductTypeDesc'];
    String accountNoLast4 = account['AccountNoLast4'];

    // Format the string
    String formattedString = '$productTypeDesc (...$accountNoLast4)';

    // Add the formatted string to the list
    formattedStrings.add(formattedString);
  }

  // Return the list of formatted strings
  return formattedStrings;
}

dynamic getPrimaryPaymentAccount(List<dynamic> jsonData) {
  {
    for (var account in jsonData) {
      if (account['IsPrimaryUser'] == true) {
        return account;
      }
    }
    // If no primary user account is found, return an empty map or null.
    return {};
  }
}

String formatcoma(String input) {
  double number = double.tryParse(input) ??
      0.0; // Parse the input string to a double, default to 0.0 if parsing fails

  if (number >= 10000000) {
    final formatter = NumberFormat("#,##,##0.00");
    return formatter.format(number);
  } else if (number >= 100000) {
    final formatter = NumberFormat("#,##,###.00");
    return formatter.format(number);
  } else if (number >= 1000) {
    final formatter = NumberFormat("#,###.00");
    return formatter.format(number);
  } else {
    final formatter = NumberFormat("0.00");
    return formatter.format(number);
  }
}

String? convertPhoneNumbertoString(String? text) {
  String result = (text ?? "").replaceAll('-', '').toString().trim();

  print("convertPhoneNumbertoString=====>result::$result");
  return result;
}

List<dynamic> paymentJsonNullRemover(List<dynamic> input) {
  // parse throungh list of json object and create a new json list
  List<dynamic> output = [];

  for (var item in input) {
    var data = {
      "AccountNo": item["AccountNo"],
      "PaymentNo": item["PaymentNo"],
      "PaymentId": item["PaymentId"] ?? "",
      "ProfileNo": item["ProfileNo"],
      "ProfileName": item["ProfileName"],
      "StartDate": item["StartDate"] ?? "",
      "Amount":
          item["Amount"] != null ? item["Amount"].toDouble() : (0).toDouble(),
      "PaymentOptionCode": item["PaymentOptionCode"] ?? "",
      // "PaymentOptionDesc": {
      //   "Code": item["PaymentOptionDesc"]["Code"] ?? "",
      //   "Description": item["PaymentOptionDesc"]["Description"] ?? "",
      // },
      "PaymentFrequencyCode": item["PaymentFrequencyCode"] ?? "",
      // "PaymentFrequencyDesc": {
      //   "Code": item["PaymentFrequencyCode"]["Code"] ?? "",
      //   "Description": item["PaymentFrequencyCode"]["Description"] ?? "",
      // },
      "PaymentDueDate": item["PaymentDueDate"] ?? "",
      "CurrentBalanceAmount": item["CurrentBalanceAmount"] != null
          ? item["CurrentBalanceAmount"].toDouble()
          : (0).toDouble(),
      "MinimumPaymentDue": item["MinimumPaymentDue"] != null
          ? item["MinimumPaymentDue"].toDouble()
          : (0).toDouble(),
      "LastStatementBalance": item["LastStatementBalance"] != null
          ? item["LastStatementBalance"].toDouble()
          : (0).toDouble(),
      "LastStatementDate": item["LastStatementDate"] ?? "",
      "LastPaymentDate": item["LastPaymentDate"] ?? "",
      "NextPaymentDate": item["NextPaymentDate"] ?? "",
    };
    output.add(data);
  }
  return output;
}

String dateFormatMMMMdyenUS(String string) {
  DateTime dateTime = DateTime.parse(string);
  return DateFormat('MMMM d, y', 'en_US').format(dateTime);
}

List<OptionIntStruct> returnBankingProfileOptions(
    List<BankingProfileStruct> options) {
  for (BankingProfileStruct item in options) {
    print(item.profileName + ' (....' + item.bankAccountNoLast4 + ')');
    print(item.profileNumber);
  }
  print(options
      .map((option) => OptionIntStruct(
          value: option.profileNumber,
          label:
              option.profileName + ' (....' + option.bankAccountNoLast4 + ')'))
      .toString());
  // get two value of bankingproifle in option list
  return options
      .map((option) => OptionIntStruct(
          value: option.profileNumber,
          label:
              option.profileName + ' (....' + option.bankAccountNoLast4 + ')'))
      .toList();
}
