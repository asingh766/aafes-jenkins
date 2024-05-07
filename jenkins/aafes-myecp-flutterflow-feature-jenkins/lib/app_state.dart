import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _username = await secureStorage.getString('ff_username') ?? _username;
    });
    await _safeInitAsync(() async {
      _remUserID = await secureStorage.getString('ff_remUserID') ?? _remUserID;
    });
    await _safeInitAsync(() async {
      _selelctedHeaderIndex =
          await secureStorage.getInt('ff_selelctedHeaderIndex') ??
              _selelctedHeaderIndex;
    });
    await _safeInitAsync(() async {
      _selectedSubHeaderItem =
          await secureStorage.getString('ff_selectedSubHeaderItem') ??
              _selectedSubHeaderItem;
    });
    await _safeInitAsync(() async {
      _selectedUserId =
          await secureStorage.getInt('ff_selectedUserId') ?? _selectedUserId;
    });
    await _safeInitAsync(() async {
      _accountNumber =
          await secureStorage.getString('ff_accountNumber') ?? _accountNumber;
    });
    await _safeInitAsync(() async {
      _LastLoginDate =
          await secureStorage.getString('ff_LastLoginDate') ?? _LastLoginDate;
    });
    await _safeInitAsync(() async {
      _selectedFirstName =
          await secureStorage.getString('ff_selectedFirstName') ??
              _selectedFirstName;
    });
    await _safeInitAsync(() async {
      _rememberUsersOnDevice =
          await secureStorage.getStringList('ff_rememberUsersOnDevice') ??
              _rememberUsersOnDevice;
    });
    await _safeInitAsync(() async {
      _promotionsSubItemList =
          (await secureStorage.getStringList('ff_promotionsSubItemList'))
                  ?.map((x) {
                    try {
                      return OptionStruct.fromSerializableMap(jsonDecode(x));
                    } catch (e) {
                      print("Can't decode persisted data type. Error: $e.");
                      return null;
                    }
                  })
                  .withoutNulls
                  .toList() ??
              _promotionsSubItemList;
    });
    await _safeInitAsync(() async {
      _paymentSubitemList =
          (await secureStorage.getStringList('ff_paymentSubitemList'))
                  ?.map((x) {
                    try {
                      return OptionStruct.fromSerializableMap(jsonDecode(x));
                    } catch (e) {
                      print("Can't decode persisted data type. Error: $e.");
                      return null;
                    }
                  })
                  .withoutNulls
                  .toList() ??
              _paymentSubitemList;
    });
    await _safeInitAsync(() async {
      _productsSubItemList =
          (await secureStorage.getStringList('ff_productsSubItemList'))
                  ?.map((x) {
                    try {
                      return OptionStruct.fromSerializableMap(jsonDecode(x));
                    } catch (e) {
                      print("Can't decode persisted data type. Error: $e.");
                      return null;
                    }
                  })
                  .withoutNulls
                  .toList() ??
              _productsSubItemList;
    });
    await _safeInitAsync(() async {
      _myAccountSubitemList =
          (await secureStorage.getStringList('ff_myAccountSubitemList'))
                  ?.map((x) {
                    try {
                      return OptionStruct.fromSerializableMap(jsonDecode(x));
                    } catch (e) {
                      print("Can't decode persisted data type. Error: $e.");
                      return null;
                    }
                  })
                  .withoutNulls
                  .toList() ??
              _myAccountSubitemList;
    });
    await _safeInitAsync(() async {
      _contactUsSubItemList =
          (await secureStorage.getStringList('ff_contactUsSubItemList'))
                  ?.map((x) {
                    try {
                      return OptionStruct.fromSerializableMap(jsonDecode(x));
                    } catch (e) {
                      print("Can't decode persisted data type. Error: $e.");
                      return null;
                    }
                  })
                  .withoutNulls
                  .toList() ??
              _contactUsSubItemList;
    });
    await _safeInitAsync(() async {
      _aboutMyEcpSubItemList =
          (await secureStorage.getStringList('ff_aboutMyEcpSubItemList'))
                  ?.map((x) {
                    try {
                      return OptionStruct.fromSerializableMap(jsonDecode(x));
                    } catch (e) {
                      print("Can't decode persisted data type. Error: $e.");
                      return null;
                    }
                  })
                  .withoutNulls
                  .toList() ??
              _aboutMyEcpSubItemList;
    });
    await _safeInitAsync(() async {
      _emptyOptionList =
          (await secureStorage.getStringList('ff_emptyOptionList'))
                  ?.map((x) {
                    try {
                      return OptionStruct.fromSerializableMap(jsonDecode(x));
                    } catch (e) {
                      print("Can't decode persisted data type. Error: $e.");
                      return null;
                    }
                  })
                  .withoutNulls
                  .toList() ??
              _emptyOptionList;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_login2FARes') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_login2FARes') ?? '{}';
          _login2FARes =
              Login2FAResStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _faqOptions = (await secureStorage.getStringList('ff_faqOptions'))
              ?.map((x) {
                try {
                  return OptionStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _faqOptions;
    });
    await _safeInitAsync(() async {
      _selectedUserName =
          await secureStorage.getString('ff_selectedUserName') ??
              _selectedUserName;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _username = '';
  String get username => _username;
  set username(String value) {
    _username = value;
    secureStorage.setString('ff_username', value);
  }

  void deleteUsername() {
    secureStorage.delete(key: 'ff_username');
  }

  String _remUserID = '';
  String get remUserID => _remUserID;
  set remUserID(String value) {
    _remUserID = value;
    secureStorage.setString('ff_remUserID', value);
  }

  void deleteRemUserID() {
    secureStorage.delete(key: 'ff_remUserID');
  }

  String _password = '';
  String get password => _password;
  set password(String value) {
    _password = value;
  }

  String _confirmPassword = '';
  String get confirmPassword => _confirmPassword;
  set confirmPassword(String value) {
    _confirmPassword = value;
  }

  bool _isPasswordValid = false;
  bool get isPasswordValid => _isPasswordValid;
  set isPasswordValid(bool value) {
    _isPasswordValid = value;
  }

  bool _isConfirmPasswordValid = false;
  bool get isConfirmPasswordValid => _isConfirmPasswordValid;
  set isConfirmPasswordValid(bool value) {
    _isConfirmPasswordValid = value;
  }

  int _successStatusCode = 200;
  int get successStatusCode => _successStatusCode;
  set successStatusCode(int value) {
    _successStatusCode = value;
  }

  String _validatedEmailRegistration = '';
  String get validatedEmailRegistration => _validatedEmailRegistration;
  set validatedEmailRegistration(String value) {
    _validatedEmailRegistration = value;
  }

  int _selectedMCDrawerIndex = -1;
  int get selectedMCDrawerIndex => _selectedMCDrawerIndex;
  set selectedMCDrawerIndex(int value) {
    _selectedMCDrawerIndex = value;
  }

  bool _isMacDrawerOpen = false;
  bool get isMacDrawerOpen => _isMacDrawerOpen;
  set isMacDrawerOpen(bool value) {
    _isMacDrawerOpen = value;
  }

  int _selelctedHeaderIndex = 0;
  int get selelctedHeaderIndex => _selelctedHeaderIndex;
  set selelctedHeaderIndex(int value) {
    _selelctedHeaderIndex = value;
    secureStorage.setInt('ff_selelctedHeaderIndex', value);
  }

  void deleteSelelctedHeaderIndex() {
    secureStorage.delete(key: 'ff_selelctedHeaderIndex');
  }

  String _accountNumberLast4Digits = '';
  String get accountNumberLast4Digits => _accountNumberLast4Digits;
  set accountNumberLast4Digits(String value) {
    _accountNumberLast4Digits = value;
  }

  String _selectedSubHeaderItem = '';
  String get selectedSubHeaderItem => _selectedSubHeaderItem;
  set selectedSubHeaderItem(String value) {
    _selectedSubHeaderItem = value;
    secureStorage.setString('ff_selectedSubHeaderItem', value);
  }

  void deleteSelectedSubHeaderItem() {
    secureStorage.delete(key: 'ff_selectedSubHeaderItem');
  }

  int _selectedUserId = 0;
  int get selectedUserId => _selectedUserId;
  set selectedUserId(int value) {
    _selectedUserId = value;
    secureStorage.setInt('ff_selectedUserId', value);
  }

  void deleteSelectedUserId() {
    secureStorage.delete(key: 'ff_selectedUserId');
  }

  List<String> _addressList = [];
  List<String> get addressList => _addressList;
  set addressList(List<String> value) {
    _addressList = value;
  }

  void addToAddressList(String value) {
    _addressList.add(value);
  }

  void removeFromAddressList(String value) {
    _addressList.remove(value);
  }

  void removeAtIndexFromAddressList(int index) {
    _addressList.removeAt(index);
  }

  void updateAddressListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _addressList[index] = updateFn(_addressList[index]);
  }

  void insertAtIndexInAddressList(int index, String value) {
    _addressList.insert(index, value);
  }

  dynamic _addressJson;
  dynamic get addressJson => _addressJson;
  set addressJson(dynamic value) {
    _addressJson = value;
  }

  String _accountNumber = '';
  String get accountNumber => _accountNumber;
  set accountNumber(String value) {
    _accountNumber = value;
    secureStorage.setString('ff_accountNumber', value);
  }

  void deleteAccountNumber() {
    secureStorage.delete(key: 'ff_accountNumber');
  }

  String _LastLoginDate = '';
  String get LastLoginDate => _LastLoginDate;
  set LastLoginDate(String value) {
    _LastLoginDate = value;
    secureStorage.setString('ff_LastLoginDate', value);
  }

  void deleteLastLoginDate() {
    secureStorage.delete(key: 'ff_LastLoginDate');
  }

  bool _userLoggedOut = false;
  bool get userLoggedOut => _userLoggedOut;
  set userLoggedOut(bool value) {
    _userLoggedOut = value;
  }

  String _selectedFirstName = '';
  String get selectedFirstName => _selectedFirstName;
  set selectedFirstName(String value) {
    _selectedFirstName = value;
    secureStorage.setString('ff_selectedFirstName', value);
  }

  void deleteSelectedFirstName() {
    secureStorage.delete(key: 'ff_selectedFirstName');
  }

  List<String> _rememberUsersOnDevice = [];
  List<String> get rememberUsersOnDevice => _rememberUsersOnDevice;
  set rememberUsersOnDevice(List<String> value) {
    _rememberUsersOnDevice = value;
    secureStorage.setStringList('ff_rememberUsersOnDevice', value);
  }

  void deleteRememberUsersOnDevice() {
    secureStorage.delete(key: 'ff_rememberUsersOnDevice');
  }

  void addToRememberUsersOnDevice(String value) {
    _rememberUsersOnDevice.add(value);
    secureStorage.setStringList(
        'ff_rememberUsersOnDevice', _rememberUsersOnDevice);
  }

  void removeFromRememberUsersOnDevice(String value) {
    _rememberUsersOnDevice.remove(value);
    secureStorage.setStringList(
        'ff_rememberUsersOnDevice', _rememberUsersOnDevice);
  }

  void removeAtIndexFromRememberUsersOnDevice(int index) {
    _rememberUsersOnDevice.removeAt(index);
    secureStorage.setStringList(
        'ff_rememberUsersOnDevice', _rememberUsersOnDevice);
  }

  void updateRememberUsersOnDeviceAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _rememberUsersOnDevice[index] = updateFn(_rememberUsersOnDevice[index]);
    secureStorage.setStringList(
        'ff_rememberUsersOnDevice', _rememberUsersOnDevice);
  }

  void insertAtIndexInRememberUsersOnDevice(int index, String value) {
    _rememberUsersOnDevice.insert(index, value);
    secureStorage.setStringList(
        'ff_rememberUsersOnDevice', _rememberUsersOnDevice);
  }

  String _securityQuestionAns = '';
  String get securityQuestionAns => _securityQuestionAns;
  set securityQuestionAns(String value) {
    _securityQuestionAns = value;
  }

  double _screenBodyHeightDesktop = 0.0;
  double get screenBodyHeightDesktop => _screenBodyHeightDesktop;
  set screenBodyHeightDesktop(double value) {
    _screenBodyHeightDesktop = value;
  }

  double _screenBodyHeightMobile = 0.0;
  double get screenBodyHeightMobile => _screenBodyHeightMobile;
  set screenBodyHeightMobile(double value) {
    _screenBodyHeightMobile = value;
  }

  bool _isFroYourSecurity = false;
  bool get isFroYourSecurity => _isFroYourSecurity;
  set isFroYourSecurity(bool value) {
    _isFroYourSecurity = value;
  }

  List<OptionStruct> _promotionsSubItemList = [
    OptionStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"Exchange®\",\"value\":\"exchange\"}')),
    OptionStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"Navy Exchange\",\"value\":\"navy\"}')),
    OptionStruct.fromSerializableMap(jsonDecode(
        '{\"label\":\"Marine Corps Exchange\",\"value\":\"marinecorps \"}')),
    OptionStruct.fromSerializableMap(jsonDecode(
        '{\"label\":\"Coast Guard Exchange\",\"value\":\"coastguard\"}'))
  ];
  List<OptionStruct> get promotionsSubItemList => _promotionsSubItemList;
  set promotionsSubItemList(List<OptionStruct> value) {
    _promotionsSubItemList = value;
    secureStorage.setStringList(
        'ff_promotionsSubItemList', value.map((x) => x.serialize()).toList());
  }

  void deletePromotionsSubItemList() {
    secureStorage.delete(key: 'ff_promotionsSubItemList');
  }

  void addToPromotionsSubItemList(OptionStruct value) {
    _promotionsSubItemList.add(value);
    secureStorage.setStringList('ff_promotionsSubItemList',
        _promotionsSubItemList.map((x) => x.serialize()).toList());
  }

  void removeFromPromotionsSubItemList(OptionStruct value) {
    _promotionsSubItemList.remove(value);
    secureStorage.setStringList('ff_promotionsSubItemList',
        _promotionsSubItemList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPromotionsSubItemList(int index) {
    _promotionsSubItemList.removeAt(index);
    secureStorage.setStringList('ff_promotionsSubItemList',
        _promotionsSubItemList.map((x) => x.serialize()).toList());
  }

  void updatePromotionsSubItemListAtIndex(
    int index,
    OptionStruct Function(OptionStruct) updateFn,
  ) {
    _promotionsSubItemList[index] = updateFn(_promotionsSubItemList[index]);
    secureStorage.setStringList('ff_promotionsSubItemList',
        _promotionsSubItemList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPromotionsSubItemList(int index, OptionStruct value) {
    _promotionsSubItemList.insert(index, value);
    secureStorage.setStringList('ff_promotionsSubItemList',
        _promotionsSubItemList.map((x) => x.serialize()).toList());
  }

  List<OptionStruct> _paymentSubitemList = [
    OptionStruct.fromSerializableMap(jsonDecode(
        '{\"label\":\"One Time Payment\",\"value\":\"One Time Payment\"}')),
    OptionStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"Auto Payment\",\"value\":\"Auto Payment\"}'))
  ];
  List<OptionStruct> get paymentSubitemList => _paymentSubitemList;
  set paymentSubitemList(List<OptionStruct> value) {
    _paymentSubitemList = value;
    secureStorage.setStringList(
        'ff_paymentSubitemList', value.map((x) => x.serialize()).toList());
  }

  void deletePaymentSubitemList() {
    secureStorage.delete(key: 'ff_paymentSubitemList');
  }

  void addToPaymentSubitemList(OptionStruct value) {
    _paymentSubitemList.add(value);
    secureStorage.setStringList('ff_paymentSubitemList',
        _paymentSubitemList.map((x) => x.serialize()).toList());
  }

  void removeFromPaymentSubitemList(OptionStruct value) {
    _paymentSubitemList.remove(value);
    secureStorage.setStringList('ff_paymentSubitemList',
        _paymentSubitemList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPaymentSubitemList(int index) {
    _paymentSubitemList.removeAt(index);
    secureStorage.setStringList('ff_paymentSubitemList',
        _paymentSubitemList.map((x) => x.serialize()).toList());
  }

  void updatePaymentSubitemListAtIndex(
    int index,
    OptionStruct Function(OptionStruct) updateFn,
  ) {
    _paymentSubitemList[index] = updateFn(_paymentSubitemList[index]);
    secureStorage.setStringList('ff_paymentSubitemList',
        _paymentSubitemList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPaymentSubitemList(int index, OptionStruct value) {
    _paymentSubitemList.insert(index, value);
    secureStorage.setStringList('ff_paymentSubitemList',
        _paymentSubitemList.map((x) => x.serialize()).toList());
  }

  List<OptionStruct> _productsSubItemList = [
    OptionStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"Apply Now\",\"value\":\"Apply Now\"}')),
    OptionStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"MILITARY STAR\",\"value\":\"militaryStar\"}'))
  ];
  List<OptionStruct> get productsSubItemList => _productsSubItemList;
  set productsSubItemList(List<OptionStruct> value) {
    _productsSubItemList = value;
    secureStorage.setStringList(
        'ff_productsSubItemList', value.map((x) => x.serialize()).toList());
  }

  void deleteProductsSubItemList() {
    secureStorage.delete(key: 'ff_productsSubItemList');
  }

  void addToProductsSubItemList(OptionStruct value) {
    _productsSubItemList.add(value);
    secureStorage.setStringList('ff_productsSubItemList',
        _productsSubItemList.map((x) => x.serialize()).toList());
  }

  void removeFromProductsSubItemList(OptionStruct value) {
    _productsSubItemList.remove(value);
    secureStorage.setStringList('ff_productsSubItemList',
        _productsSubItemList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromProductsSubItemList(int index) {
    _productsSubItemList.removeAt(index);
    secureStorage.setStringList('ff_productsSubItemList',
        _productsSubItemList.map((x) => x.serialize()).toList());
  }

  void updateProductsSubItemListAtIndex(
    int index,
    OptionStruct Function(OptionStruct) updateFn,
  ) {
    _productsSubItemList[index] = updateFn(_productsSubItemList[index]);
    secureStorage.setStringList('ff_productsSubItemList',
        _productsSubItemList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInProductsSubItemList(int index, OptionStruct value) {
    _productsSubItemList.insert(index, value);
    secureStorage.setStringList('ff_productsSubItemList',
        _productsSubItemList.map((x) => x.serialize()).toList());
  }

  List<OptionStruct> _myAccountSubitemList = [
    OptionStruct.fromSerializableMap(jsonDecode(
        '{\"label\":\"Account Summary\",\"value\":\"Account Summary\"}')),
    OptionStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"My Profile\",\"value\":\"My Profile\"}'))
  ];
  List<OptionStruct> get myAccountSubitemList => _myAccountSubitemList;
  set myAccountSubitemList(List<OptionStruct> value) {
    _myAccountSubitemList = value;
    secureStorage.setStringList(
        'ff_myAccountSubitemList', value.map((x) => x.serialize()).toList());
  }

  void deleteMyAccountSubitemList() {
    secureStorage.delete(key: 'ff_myAccountSubitemList');
  }

  void addToMyAccountSubitemList(OptionStruct value) {
    _myAccountSubitemList.add(value);
    secureStorage.setStringList('ff_myAccountSubitemList',
        _myAccountSubitemList.map((x) => x.serialize()).toList());
  }

  void removeFromMyAccountSubitemList(OptionStruct value) {
    _myAccountSubitemList.remove(value);
    secureStorage.setStringList('ff_myAccountSubitemList',
        _myAccountSubitemList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromMyAccountSubitemList(int index) {
    _myAccountSubitemList.removeAt(index);
    secureStorage.setStringList('ff_myAccountSubitemList',
        _myAccountSubitemList.map((x) => x.serialize()).toList());
  }

  void updateMyAccountSubitemListAtIndex(
    int index,
    OptionStruct Function(OptionStruct) updateFn,
  ) {
    _myAccountSubitemList[index] = updateFn(_myAccountSubitemList[index]);
    secureStorage.setStringList('ff_myAccountSubitemList',
        _myAccountSubitemList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInMyAccountSubitemList(int index, OptionStruct value) {
    _myAccountSubitemList.insert(index, value);
    secureStorage.setStringList('ff_myAccountSubitemList',
        _myAccountSubitemList.map((x) => x.serialize()).toList());
  }

  List<OptionStruct> _contactUsSubItemList = [
    OptionStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"FAQs\",\"value\":\"FAQs\"}')),
    OptionStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"Contact Us\",\"value\":\"Contact Us\"}')),
    OptionStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"Live Chat\",\"value\":\"Live Chat\"}'))
  ];
  List<OptionStruct> get contactUsSubItemList => _contactUsSubItemList;
  set contactUsSubItemList(List<OptionStruct> value) {
    _contactUsSubItemList = value;
    secureStorage.setStringList(
        'ff_contactUsSubItemList', value.map((x) => x.serialize()).toList());
  }

  void deleteContactUsSubItemList() {
    secureStorage.delete(key: 'ff_contactUsSubItemList');
  }

  void addToContactUsSubItemList(OptionStruct value) {
    _contactUsSubItemList.add(value);
    secureStorage.setStringList('ff_contactUsSubItemList',
        _contactUsSubItemList.map((x) => x.serialize()).toList());
  }

  void removeFromContactUsSubItemList(OptionStruct value) {
    _contactUsSubItemList.remove(value);
    secureStorage.setStringList('ff_contactUsSubItemList',
        _contactUsSubItemList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromContactUsSubItemList(int index) {
    _contactUsSubItemList.removeAt(index);
    secureStorage.setStringList('ff_contactUsSubItemList',
        _contactUsSubItemList.map((x) => x.serialize()).toList());
  }

  void updateContactUsSubItemListAtIndex(
    int index,
    OptionStruct Function(OptionStruct) updateFn,
  ) {
    _contactUsSubItemList[index] = updateFn(_contactUsSubItemList[index]);
    secureStorage.setStringList('ff_contactUsSubItemList',
        _contactUsSubItemList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInContactUsSubItemList(int index, OptionStruct value) {
    _contactUsSubItemList.insert(index, value);
    secureStorage.setStringList('ff_contactUsSubItemList',
        _contactUsSubItemList.map((x) => x.serialize()).toList());
  }

  List<OptionStruct> _aboutMyEcpSubItemList = [
    OptionStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"About ECP\",\"value\":\"about\"}')),
    OptionStruct.fromSerializableMap(jsonDecode(
        '{\"label\":\"Deployment Policy\",\"value\":\"deployment\"}')),
    OptionStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"Credit Building Tips\",\"value\":\"credit\"}'))
  ];
  List<OptionStruct> get aboutMyEcpSubItemList => _aboutMyEcpSubItemList;
  set aboutMyEcpSubItemList(List<OptionStruct> value) {
    _aboutMyEcpSubItemList = value;
    secureStorage.setStringList(
        'ff_aboutMyEcpSubItemList', value.map((x) => x.serialize()).toList());
  }

  void deleteAboutMyEcpSubItemList() {
    secureStorage.delete(key: 'ff_aboutMyEcpSubItemList');
  }

  void addToAboutMyEcpSubItemList(OptionStruct value) {
    _aboutMyEcpSubItemList.add(value);
    secureStorage.setStringList('ff_aboutMyEcpSubItemList',
        _aboutMyEcpSubItemList.map((x) => x.serialize()).toList());
  }

  void removeFromAboutMyEcpSubItemList(OptionStruct value) {
    _aboutMyEcpSubItemList.remove(value);
    secureStorage.setStringList('ff_aboutMyEcpSubItemList',
        _aboutMyEcpSubItemList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAboutMyEcpSubItemList(int index) {
    _aboutMyEcpSubItemList.removeAt(index);
    secureStorage.setStringList('ff_aboutMyEcpSubItemList',
        _aboutMyEcpSubItemList.map((x) => x.serialize()).toList());
  }

  void updateAboutMyEcpSubItemListAtIndex(
    int index,
    OptionStruct Function(OptionStruct) updateFn,
  ) {
    _aboutMyEcpSubItemList[index] = updateFn(_aboutMyEcpSubItemList[index]);
    secureStorage.setStringList('ff_aboutMyEcpSubItemList',
        _aboutMyEcpSubItemList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAboutMyEcpSubItemList(int index, OptionStruct value) {
    _aboutMyEcpSubItemList.insert(index, value);
    secureStorage.setStringList('ff_aboutMyEcpSubItemList',
        _aboutMyEcpSubItemList.map((x) => x.serialize()).toList());
  }

  List<OptionStruct> _emptyOptionList = [];
  List<OptionStruct> get emptyOptionList => _emptyOptionList;
  set emptyOptionList(List<OptionStruct> value) {
    _emptyOptionList = value;
    secureStorage.setStringList(
        'ff_emptyOptionList', value.map((x) => x.serialize()).toList());
  }

  void deleteEmptyOptionList() {
    secureStorage.delete(key: 'ff_emptyOptionList');
  }

  void addToEmptyOptionList(OptionStruct value) {
    _emptyOptionList.add(value);
    secureStorage.setStringList('ff_emptyOptionList',
        _emptyOptionList.map((x) => x.serialize()).toList());
  }

  void removeFromEmptyOptionList(OptionStruct value) {
    _emptyOptionList.remove(value);
    secureStorage.setStringList('ff_emptyOptionList',
        _emptyOptionList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromEmptyOptionList(int index) {
    _emptyOptionList.removeAt(index);
    secureStorage.setStringList('ff_emptyOptionList',
        _emptyOptionList.map((x) => x.serialize()).toList());
  }

  void updateEmptyOptionListAtIndex(
    int index,
    OptionStruct Function(OptionStruct) updateFn,
  ) {
    _emptyOptionList[index] = updateFn(_emptyOptionList[index]);
    secureStorage.setStringList('ff_emptyOptionList',
        _emptyOptionList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInEmptyOptionList(int index, OptionStruct value) {
    _emptyOptionList.insert(index, value);
    secureStorage.setStringList('ff_emptyOptionList',
        _emptyOptionList.map((x) => x.serialize()).toList());
  }

  Login2FAResStruct _login2FARes = Login2FAResStruct.fromSerializableMap(jsonDecode(
      '{\"UserId\":\"5414\",\"IsSecurityQuestionsNeeded\":\"false\",\"Is2FANeeded\":\"false\",\"IsTwoFAOtpIn\":\"false\"}'));
  Login2FAResStruct get login2FARes => _login2FARes;
  set login2FARes(Login2FAResStruct value) {
    _login2FARes = value;
    secureStorage.setString('ff_login2FARes', value.serialize());
  }

  void deleteLogin2FARes() {
    secureStorage.delete(key: 'ff_login2FARes');
  }

  void updateLogin2FAResStruct(Function(Login2FAResStruct) updateFn) {
    updateFn(_login2FARes);
    secureStorage.setString('ff_login2FARes', _login2FARes.serialize());
  }

  bool _isFromTwoFacotrAuth = false;
  bool get isFromTwoFacotrAuth => _isFromTwoFacotrAuth;
  set isFromTwoFacotrAuth(bool value) {
    _isFromTwoFacotrAuth = value;
  }

  List<OptionStruct> _faqOptions = [
    OptionStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"General Help\",\"value\":\"help\"}')),
    OptionStruct.fromSerializableMap(jsonDecode(
        '{\"label\":\"Payment Questions\",\"value\":\"paymentQuestions\"}')),
    OptionStruct.fromSerializableMap(jsonDecode(
        '{\"label\":\"Online Payments\",\"value\":\"onlinePayments\"}')),
    OptionStruct.fromSerializableMap(jsonDecode(
        '{\"label\":\"Statement Questions\",\"value\":\"statementQuestions\"}')),
    OptionStruct.fromSerializableMap(jsonDecode(
        '{\"label\":\"Rewards Program\",\"value\":\"rewardPrograms\"}')),
    OptionStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"Text Alerts\",\"value\":\"textAlerts\"}')),
    OptionStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"PayYourWay\",\"value\":\"payYourWay\"}'))
  ];
  List<OptionStruct> get faqOptions => _faqOptions;
  set faqOptions(List<OptionStruct> value) {
    _faqOptions = value;
    secureStorage.setStringList(
        'ff_faqOptions', value.map((x) => x.serialize()).toList());
  }

  void deleteFaqOptions() {
    secureStorage.delete(key: 'ff_faqOptions');
  }

  void addToFaqOptions(OptionStruct value) {
    _faqOptions.add(value);
    secureStorage.setStringList(
        'ff_faqOptions', _faqOptions.map((x) => x.serialize()).toList());
  }

  void removeFromFaqOptions(OptionStruct value) {
    _faqOptions.remove(value);
    secureStorage.setStringList(
        'ff_faqOptions', _faqOptions.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromFaqOptions(int index) {
    _faqOptions.removeAt(index);
    secureStorage.setStringList(
        'ff_faqOptions', _faqOptions.map((x) => x.serialize()).toList());
  }

  void updateFaqOptionsAtIndex(
    int index,
    OptionStruct Function(OptionStruct) updateFn,
  ) {
    _faqOptions[index] = updateFn(_faqOptions[index]);
    secureStorage.setStringList(
        'ff_faqOptions', _faqOptions.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInFaqOptions(int index, OptionStruct value) {
    _faqOptions.insert(index, value);
    secureStorage.setStringList(
        'ff_faqOptions', _faqOptions.map((x) => x.serialize()).toList());
  }

  String _testBaseUrl = 'http://www.google.com';
  String get testBaseUrl => _testBaseUrl;
  set testBaseUrl(String value) {
    _testBaseUrl = value;
  }

  String _dynamicBaseURL = 'https://myecp-dev-dpavtgrx.uc.gateway.dev';
  String get dynamicBaseURL => _dynamicBaseURL;
  set dynamicBaseURL(String value) {
    _dynamicBaseURL = value;
  }

  dynamic _selectedPaymentAccount;
  dynamic get selectedPaymentAccount => _selectedPaymentAccount;
  set selectedPaymentAccount(dynamic value) {
    _selectedPaymentAccount = value;
  }

  dynamic _selectedPaymentSummary;
  dynamic get selectedPaymentSummary => _selectedPaymentSummary;
  set selectedPaymentSummary(dynamic value) {
    _selectedPaymentSummary = value;
  }

  String _selectedUserName = '';
  String get selectedUserName => _selectedUserName;
  set selectedUserName(String value) {
    _selectedUserName = value;
    secureStorage.setString('ff_selectedUserName', value);
  }

  void deleteSelectedUserName() {
    secureStorage.delete(key: 'ff_selectedUserName');
  }

  ResponseApplyNowStruct _responseApplyNow = ResponseApplyNowStruct();
  ResponseApplyNowStruct get responseApplyNow => _responseApplyNow;
  set responseApplyNow(ResponseApplyNowStruct value) {
    _responseApplyNow = value;
  }

  void updateResponseApplyNowStruct(Function(ResponseApplyNowStruct) updateFn) {
    updateFn(_responseApplyNow);
  }

  PaymentAccountStruct _selectedAccountForPayment = PaymentAccountStruct();
  PaymentAccountStruct get selectedAccountForPayment =>
      _selectedAccountForPayment;
  set selectedAccountForPayment(PaymentAccountStruct value) {
    _selectedAccountForPayment = value;
  }

  void updateSelectedAccountForPaymentStruct(
      Function(PaymentAccountStruct) updateFn) {
    updateFn(_selectedAccountForPayment);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
