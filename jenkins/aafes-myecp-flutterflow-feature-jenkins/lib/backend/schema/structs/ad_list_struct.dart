// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdListStruct extends BaseStruct {
  AdListStruct({
    int? customerAdID,
    String? adID,
    int? locationID,
    String? startDate,
    String? endDate,
    int? adOrder,
    String? title,
    String? message,
    int? statusID,
    bool? isActive,
    String? creationDate,
    String? owner,
  })  : _customerAdID = customerAdID,
        _adID = adID,
        _locationID = locationID,
        _startDate = startDate,
        _endDate = endDate,
        _adOrder = adOrder,
        _title = title,
        _message = message,
        _statusID = statusID,
        _isActive = isActive,
        _creationDate = creationDate,
        _owner = owner;

  // "CustomerAdID" field.
  int? _customerAdID;
  int get customerAdID => _customerAdID ?? 0;
  set customerAdID(int? val) => _customerAdID = val;
  void incrementCustomerAdID(int amount) =>
      _customerAdID = customerAdID + amount;
  bool hasCustomerAdID() => _customerAdID != null;

  // "AdID" field.
  String? _adID;
  String get adID => _adID ?? '';
  set adID(String? val) => _adID = val;
  bool hasAdID() => _adID != null;

  // "LocationID" field.
  int? _locationID;
  int get locationID => _locationID ?? 0;
  set locationID(int? val) => _locationID = val;
  void incrementLocationID(int amount) => _locationID = locationID + amount;
  bool hasLocationID() => _locationID != null;

  // "StartDate" field.
  String? _startDate;
  String get startDate => _startDate ?? '';
  set startDate(String? val) => _startDate = val;
  bool hasStartDate() => _startDate != null;

  // "EndDate" field.
  String? _endDate;
  String get endDate => _endDate ?? '';
  set endDate(String? val) => _endDate = val;
  bool hasEndDate() => _endDate != null;

  // "AdOrder" field.
  int? _adOrder;
  int get adOrder => _adOrder ?? 0;
  set adOrder(int? val) => _adOrder = val;
  void incrementAdOrder(int amount) => _adOrder = adOrder + amount;
  bool hasAdOrder() => _adOrder != null;

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "Message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;
  bool hasMessage() => _message != null;

  // "StatusID" field.
  int? _statusID;
  int get statusID => _statusID ?? 0;
  set statusID(int? val) => _statusID = val;
  void incrementStatusID(int amount) => _statusID = statusID + amount;
  bool hasStatusID() => _statusID != null;

  // "IsActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  set isActive(bool? val) => _isActive = val;
  bool hasIsActive() => _isActive != null;

  // "CreationDate" field.
  String? _creationDate;
  String get creationDate => _creationDate ?? '';
  set creationDate(String? val) => _creationDate = val;
  bool hasCreationDate() => _creationDate != null;

  // "Owner" field.
  String? _owner;
  String get owner => _owner ?? '';
  set owner(String? val) => _owner = val;
  bool hasOwner() => _owner != null;

  static AdListStruct fromMap(Map<String, dynamic> data) => AdListStruct(
        customerAdID: castToType<int>(data['CustomerAdID']),
        adID: data['AdID'] as String?,
        locationID: castToType<int>(data['LocationID']),
        startDate: data['StartDate'] as String?,
        endDate: data['EndDate'] as String?,
        adOrder: castToType<int>(data['AdOrder']),
        title: data['Title'] as String?,
        message: data['Message'] as String?,
        statusID: castToType<int>(data['StatusID']),
        isActive: data['IsActive'] as bool?,
        creationDate: data['CreationDate'] as String?,
        owner: data['Owner'] as String?,
      );

  static AdListStruct? maybeFromMap(dynamic data) =>
      data is Map ? AdListStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'CustomerAdID': _customerAdID,
        'AdID': _adID,
        'LocationID': _locationID,
        'StartDate': _startDate,
        'EndDate': _endDate,
        'AdOrder': _adOrder,
        'Title': _title,
        'Message': _message,
        'StatusID': _statusID,
        'IsActive': _isActive,
        'CreationDate': _creationDate,
        'Owner': _owner,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CustomerAdID': serializeParam(
          _customerAdID,
          ParamType.int,
        ),
        'AdID': serializeParam(
          _adID,
          ParamType.String,
        ),
        'LocationID': serializeParam(
          _locationID,
          ParamType.int,
        ),
        'StartDate': serializeParam(
          _startDate,
          ParamType.String,
        ),
        'EndDate': serializeParam(
          _endDate,
          ParamType.String,
        ),
        'AdOrder': serializeParam(
          _adOrder,
          ParamType.int,
        ),
        'Title': serializeParam(
          _title,
          ParamType.String,
        ),
        'Message': serializeParam(
          _message,
          ParamType.String,
        ),
        'StatusID': serializeParam(
          _statusID,
          ParamType.int,
        ),
        'IsActive': serializeParam(
          _isActive,
          ParamType.bool,
        ),
        'CreationDate': serializeParam(
          _creationDate,
          ParamType.String,
        ),
        'Owner': serializeParam(
          _owner,
          ParamType.String,
        ),
      }.withoutNulls;

  static AdListStruct fromSerializableMap(Map<String, dynamic> data) =>
      AdListStruct(
        customerAdID: deserializeParam(
          data['CustomerAdID'],
          ParamType.int,
          false,
        ),
        adID: deserializeParam(
          data['AdID'],
          ParamType.String,
          false,
        ),
        locationID: deserializeParam(
          data['LocationID'],
          ParamType.int,
          false,
        ),
        startDate: deserializeParam(
          data['StartDate'],
          ParamType.String,
          false,
        ),
        endDate: deserializeParam(
          data['EndDate'],
          ParamType.String,
          false,
        ),
        adOrder: deserializeParam(
          data['AdOrder'],
          ParamType.int,
          false,
        ),
        title: deserializeParam(
          data['Title'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['Message'],
          ParamType.String,
          false,
        ),
        statusID: deserializeParam(
          data['StatusID'],
          ParamType.int,
          false,
        ),
        isActive: deserializeParam(
          data['IsActive'],
          ParamType.bool,
          false,
        ),
        creationDate: deserializeParam(
          data['CreationDate'],
          ParamType.String,
          false,
        ),
        owner: deserializeParam(
          data['Owner'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AdListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AdListStruct &&
        customerAdID == other.customerAdID &&
        adID == other.adID &&
        locationID == other.locationID &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        adOrder == other.adOrder &&
        title == other.title &&
        message == other.message &&
        statusID == other.statusID &&
        isActive == other.isActive &&
        creationDate == other.creationDate &&
        owner == other.owner;
  }

  @override
  int get hashCode => const ListEquality().hash([
        customerAdID,
        adID,
        locationID,
        startDate,
        endDate,
        adOrder,
        title,
        message,
        statusID,
        isActive,
        creationDate,
        owner
      ]);
}

AdListStruct createAdListStruct({
  int? customerAdID,
  String? adID,
  int? locationID,
  String? startDate,
  String? endDate,
  int? adOrder,
  String? title,
  String? message,
  int? statusID,
  bool? isActive,
  String? creationDate,
  String? owner,
}) =>
    AdListStruct(
      customerAdID: customerAdID,
      adID: adID,
      locationID: locationID,
      startDate: startDate,
      endDate: endDate,
      adOrder: adOrder,
      title: title,
      message: message,
      statusID: statusID,
      isActive: isActive,
      creationDate: creationDate,
      owner: owner,
    );
