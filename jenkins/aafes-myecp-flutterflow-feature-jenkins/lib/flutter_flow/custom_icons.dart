import 'package:flutter/widgets.dart';

class FFIcons {
  FFIcons._();

  static const String _icomoonFamily = 'Icomoon';
  static const String _myFlutterAppFamily = 'MyFlutterApp';
  static const String _alertsFamily = 'Alerts';

  // icomoon
  static const IconData klogOut = IconData(0xe900, fontFamily: _icomoonFamily);
  static const IconData kaccount = IconData(0xe901, fontFamily: _icomoonFamily);

  // MyFlutterApp
  static const IconData kdollarClose =
      IconData(0xe800, fontFamily: _myFlutterAppFamily);

  // Alerts
  static const IconData kwarningEmpty =
      IconData(0xe801, fontFamily: _alertsFamily);
  static const IconData kattentionAlt =
      IconData(0xe802, fontFamily: _alertsFamily);
  static const IconData kinfo = IconData(0xf3a9, fontFamily: _alertsFamily);
}
