// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponseApplyNowStruct extends BaseStruct {
  ResponseApplyNowStruct({
    String? id,
    int? appType,
    String? productType,
    String? appNo,
    String? acctNo,
    String? cvv2,
    String? cardExpiration,
    int? cobFlag,
    String? appDate,
    String? appReason,
    int? creditLimit,
    int? clothingLimit,
    int? retailLimit,
    bool? clothingFlag,
    bool? upgradeflag,
    bool? isNewApplication,
    String? customerNo,
    String? coBrandStatusCode,
    ApplyNowStatus? appStatus,
  })  : _id = id,
        _appType = appType,
        _productType = productType,
        _appNo = appNo,
        _acctNo = acctNo,
        _cvv2 = cvv2,
        _cardExpiration = cardExpiration,
        _cobFlag = cobFlag,
        _appDate = appDate,
        _appReason = appReason,
        _creditLimit = creditLimit,
        _clothingLimit = clothingLimit,
        _retailLimit = retailLimit,
        _clothingFlag = clothingFlag,
        _upgradeflag = upgradeflag,
        _isNewApplication = isNewApplication,
        _customerNo = customerNo,
        _coBrandStatusCode = coBrandStatusCode,
        _appStatus = appStatus;

  // "Id" field.
  String? _id;
  String get id => _id ?? ' ';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "AppType" field.
  int? _appType;
  int get appType => _appType ?? 0;
  set appType(int? val) => _appType = val;
  void incrementAppType(int amount) => _appType = appType + amount;
  bool hasAppType() => _appType != null;

  // "ProductType" field.
  String? _productType;
  String get productType => _productType ?? ' ';
  set productType(String? val) => _productType = val;
  bool hasProductType() => _productType != null;

  // "AppNo" field.
  String? _appNo;
  String get appNo => _appNo ?? ' ';
  set appNo(String? val) => _appNo = val;
  bool hasAppNo() => _appNo != null;

  // "AcctNo" field.
  String? _acctNo;
  String get acctNo => _acctNo ?? ' ';
  set acctNo(String? val) => _acctNo = val;
  bool hasAcctNo() => _acctNo != null;

  // "CVV2" field.
  String? _cvv2;
  String get cvv2 => _cvv2 ?? ' ';
  set cvv2(String? val) => _cvv2 = val;
  bool hasCvv2() => _cvv2 != null;

  // "CardExpiration" field.
  String? _cardExpiration;
  String get cardExpiration => _cardExpiration ?? ' ';
  set cardExpiration(String? val) => _cardExpiration = val;
  bool hasCardExpiration() => _cardExpiration != null;

  // "CobFlag" field.
  int? _cobFlag;
  int get cobFlag => _cobFlag ?? 0;
  set cobFlag(int? val) => _cobFlag = val;
  void incrementCobFlag(int amount) => _cobFlag = cobFlag + amount;
  bool hasCobFlag() => _cobFlag != null;

  // "AppDate" field.
  String? _appDate;
  String get appDate => _appDate ?? ' ';
  set appDate(String? val) => _appDate = val;
  bool hasAppDate() => _appDate != null;

  // "AppReason" field.
  String? _appReason;
  String get appReason => _appReason ?? ' ';
  set appReason(String? val) => _appReason = val;
  bool hasAppReason() => _appReason != null;

  // "CreditLimit" field.
  int? _creditLimit;
  int get creditLimit => _creditLimit ?? 0;
  set creditLimit(int? val) => _creditLimit = val;
  void incrementCreditLimit(int amount) => _creditLimit = creditLimit + amount;
  bool hasCreditLimit() => _creditLimit != null;

  // "ClothingLimit" field.
  int? _clothingLimit;
  int get clothingLimit => _clothingLimit ?? 0;
  set clothingLimit(int? val) => _clothingLimit = val;
  void incrementClothingLimit(int amount) =>
      _clothingLimit = clothingLimit + amount;
  bool hasClothingLimit() => _clothingLimit != null;

  // "RetailLimit" field.
  int? _retailLimit;
  int get retailLimit => _retailLimit ?? 0;
  set retailLimit(int? val) => _retailLimit = val;
  void incrementRetailLimit(int amount) => _retailLimit = retailLimit + amount;
  bool hasRetailLimit() => _retailLimit != null;

  // "ClothingFlag" field.
  bool? _clothingFlag;
  bool get clothingFlag => _clothingFlag ?? false;
  set clothingFlag(bool? val) => _clothingFlag = val;
  bool hasClothingFlag() => _clothingFlag != null;

  // "Upgradeflag" field.
  bool? _upgradeflag;
  bool get upgradeflag => _upgradeflag ?? false;
  set upgradeflag(bool? val) => _upgradeflag = val;
  bool hasUpgradeflag() => _upgradeflag != null;

  // "IsNewApplication" field.
  bool? _isNewApplication;
  bool get isNewApplication => _isNewApplication ?? false;
  set isNewApplication(bool? val) => _isNewApplication = val;
  bool hasIsNewApplication() => _isNewApplication != null;

  // "CustomerNo" field.
  String? _customerNo;
  String get customerNo => _customerNo ?? ' ';
  set customerNo(String? val) => _customerNo = val;
  bool hasCustomerNo() => _customerNo != null;

  // "CoBrandStatusCode" field.
  String? _coBrandStatusCode;
  String get coBrandStatusCode => _coBrandStatusCode ?? ' ';
  set coBrandStatusCode(String? val) => _coBrandStatusCode = val;
  bool hasCoBrandStatusCode() => _coBrandStatusCode != null;

  // "AppStatus" field.
  ApplyNowStatus? _appStatus;
  ApplyNowStatus get appStatus => _appStatus ?? ApplyNowStatus.Declined;
  set appStatus(ApplyNowStatus? val) => _appStatus = val;
  bool hasAppStatus() => _appStatus != null;

  static ResponseApplyNowStruct fromMap(Map<String, dynamic> data) =>
      ResponseApplyNowStruct(
        id: data['Id'] as String?,
        appType: castToType<int>(data['AppType']),
        productType: data['ProductType'] as String?,
        appNo: data['AppNo'] as String?,
        acctNo: data['AcctNo'] as String?,
        cvv2: data['CVV2'] as String?,
        cardExpiration: data['CardExpiration'] as String?,
        cobFlag: castToType<int>(data['CobFlag']),
        appDate: data['AppDate'] as String?,
        appReason: data['AppReason'] as String?,
        creditLimit: castToType<int>(data['CreditLimit']),
        clothingLimit: castToType<int>(data['ClothingLimit']),
        retailLimit: castToType<int>(data['RetailLimit']),
        clothingFlag: data['ClothingFlag'] as bool?,
        upgradeflag: data['Upgradeflag'] as bool?,
        isNewApplication: data['IsNewApplication'] as bool?,
        customerNo: data['CustomerNo'] as String?,
        coBrandStatusCode: data['CoBrandStatusCode'] as String?,
        appStatus: deserializeEnum<ApplyNowStatus>(data['AppStatus']),
      );

  static ResponseApplyNowStruct? maybeFromMap(dynamic data) => data is Map
      ? ResponseApplyNowStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Id': _id,
        'AppType': _appType,
        'ProductType': _productType,
        'AppNo': _appNo,
        'AcctNo': _acctNo,
        'CVV2': _cvv2,
        'CardExpiration': _cardExpiration,
        'CobFlag': _cobFlag,
        'AppDate': _appDate,
        'AppReason': _appReason,
        'CreditLimit': _creditLimit,
        'ClothingLimit': _clothingLimit,
        'RetailLimit': _retailLimit,
        'ClothingFlag': _clothingFlag,
        'Upgradeflag': _upgradeflag,
        'IsNewApplication': _isNewApplication,
        'CustomerNo': _customerNo,
        'CoBrandStatusCode': _coBrandStatusCode,
        'AppStatus': _appStatus?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Id': serializeParam(
          _id,
          ParamType.String,
        ),
        'AppType': serializeParam(
          _appType,
          ParamType.int,
        ),
        'ProductType': serializeParam(
          _productType,
          ParamType.String,
        ),
        'AppNo': serializeParam(
          _appNo,
          ParamType.String,
        ),
        'AcctNo': serializeParam(
          _acctNo,
          ParamType.String,
        ),
        'CVV2': serializeParam(
          _cvv2,
          ParamType.String,
        ),
        'CardExpiration': serializeParam(
          _cardExpiration,
          ParamType.String,
        ),
        'CobFlag': serializeParam(
          _cobFlag,
          ParamType.int,
        ),
        'AppDate': serializeParam(
          _appDate,
          ParamType.String,
        ),
        'AppReason': serializeParam(
          _appReason,
          ParamType.String,
        ),
        'CreditLimit': serializeParam(
          _creditLimit,
          ParamType.int,
        ),
        'ClothingLimit': serializeParam(
          _clothingLimit,
          ParamType.int,
        ),
        'RetailLimit': serializeParam(
          _retailLimit,
          ParamType.int,
        ),
        'ClothingFlag': serializeParam(
          _clothingFlag,
          ParamType.bool,
        ),
        'Upgradeflag': serializeParam(
          _upgradeflag,
          ParamType.bool,
        ),
        'IsNewApplication': serializeParam(
          _isNewApplication,
          ParamType.bool,
        ),
        'CustomerNo': serializeParam(
          _customerNo,
          ParamType.String,
        ),
        'CoBrandStatusCode': serializeParam(
          _coBrandStatusCode,
          ParamType.String,
        ),
        'AppStatus': serializeParam(
          _appStatus,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static ResponseApplyNowStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ResponseApplyNowStruct(
        id: deserializeParam(
          data['Id'],
          ParamType.String,
          false,
        ),
        appType: deserializeParam(
          data['AppType'],
          ParamType.int,
          false,
        ),
        productType: deserializeParam(
          data['ProductType'],
          ParamType.String,
          false,
        ),
        appNo: deserializeParam(
          data['AppNo'],
          ParamType.String,
          false,
        ),
        acctNo: deserializeParam(
          data['AcctNo'],
          ParamType.String,
          false,
        ),
        cvv2: deserializeParam(
          data['CVV2'],
          ParamType.String,
          false,
        ),
        cardExpiration: deserializeParam(
          data['CardExpiration'],
          ParamType.String,
          false,
        ),
        cobFlag: deserializeParam(
          data['CobFlag'],
          ParamType.int,
          false,
        ),
        appDate: deserializeParam(
          data['AppDate'],
          ParamType.String,
          false,
        ),
        appReason: deserializeParam(
          data['AppReason'],
          ParamType.String,
          false,
        ),
        creditLimit: deserializeParam(
          data['CreditLimit'],
          ParamType.int,
          false,
        ),
        clothingLimit: deserializeParam(
          data['ClothingLimit'],
          ParamType.int,
          false,
        ),
        retailLimit: deserializeParam(
          data['RetailLimit'],
          ParamType.int,
          false,
        ),
        clothingFlag: deserializeParam(
          data['ClothingFlag'],
          ParamType.bool,
          false,
        ),
        upgradeflag: deserializeParam(
          data['Upgradeflag'],
          ParamType.bool,
          false,
        ),
        isNewApplication: deserializeParam(
          data['IsNewApplication'],
          ParamType.bool,
          false,
        ),
        customerNo: deserializeParam(
          data['CustomerNo'],
          ParamType.String,
          false,
        ),
        coBrandStatusCode: deserializeParam(
          data['CoBrandStatusCode'],
          ParamType.String,
          false,
        ),
        appStatus: deserializeParam<ApplyNowStatus>(
          data['AppStatus'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'ResponseApplyNowStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponseApplyNowStruct &&
        id == other.id &&
        appType == other.appType &&
        productType == other.productType &&
        appNo == other.appNo &&
        acctNo == other.acctNo &&
        cvv2 == other.cvv2 &&
        cardExpiration == other.cardExpiration &&
        cobFlag == other.cobFlag &&
        appDate == other.appDate &&
        appReason == other.appReason &&
        creditLimit == other.creditLimit &&
        clothingLimit == other.clothingLimit &&
        retailLimit == other.retailLimit &&
        clothingFlag == other.clothingFlag &&
        upgradeflag == other.upgradeflag &&
        isNewApplication == other.isNewApplication &&
        customerNo == other.customerNo &&
        coBrandStatusCode == other.coBrandStatusCode &&
        appStatus == other.appStatus;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        appType,
        productType,
        appNo,
        acctNo,
        cvv2,
        cardExpiration,
        cobFlag,
        appDate,
        appReason,
        creditLimit,
        clothingLimit,
        retailLimit,
        clothingFlag,
        upgradeflag,
        isNewApplication,
        customerNo,
        coBrandStatusCode,
        appStatus
      ]);
}

ResponseApplyNowStruct createResponseApplyNowStruct({
  String? id,
  int? appType,
  String? productType,
  String? appNo,
  String? acctNo,
  String? cvv2,
  String? cardExpiration,
  int? cobFlag,
  String? appDate,
  String? appReason,
  int? creditLimit,
  int? clothingLimit,
  int? retailLimit,
  bool? clothingFlag,
  bool? upgradeflag,
  bool? isNewApplication,
  String? customerNo,
  String? coBrandStatusCode,
  ApplyNowStatus? appStatus,
}) =>
    ResponseApplyNowStruct(
      id: id,
      appType: appType,
      productType: productType,
      appNo: appNo,
      acctNo: acctNo,
      cvv2: cvv2,
      cardExpiration: cardExpiration,
      cobFlag: cobFlag,
      appDate: appDate,
      appReason: appReason,
      creditLimit: creditLimit,
      clothingLimit: clothingLimit,
      retailLimit: retailLimit,
      clothingFlag: clothingFlag,
      upgradeflag: upgradeflag,
      isNewApplication: isNewApplication,
      customerNo: customerNo,
      coBrandStatusCode: coBrandStatusCode,
      appStatus: appStatus,
    );
