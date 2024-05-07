// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '../../components/session_timeout_warning/session_timeout_warning_widget.dart';

import '../../auth/custom_auth/auth_util.dart';

import 'dart:async';

class CountdownTimer {
  static final CountdownTimer _instance = CountdownTimer._internal();
  Timer? timer;
  late BuildContext context;
  int _secondsRemaining = FFAppConstants.idleTime;

  factory CountdownTimer() {
    return _instance;
  }

  CountdownTimer._internal();

  Future<void> _timerCallback(Timer timer) async {
    if (_secondsRemaining > 0) {
      _secondsRemaining--;
    } else {
      timer.cancel();
      if (currentAuthenticationToken != null &&
          currentAuthenticationToken != '') {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (dialogContext) {
            return Dialog(
              elevation: 0,
              insetPadding: EdgeInsets.zero,
              backgroundColor: Colors.transparent,
              alignment: AlignmentDirectional(0, 0)
                  .resolve(Directionality.of(context)),
              child: GestureDetector(
                child: Container(
                  width: MediaQuery.sizeOf(context).width < kBreakpointSmall
                      ? (MediaQuery.sizeOf(context).width * 0.9)
                      : MediaQuery.sizeOf(context).width < kBreakpointMedium
                          ? 500
                          : 600.0,
                  height: MediaQuery.sizeOf(context).width < kBreakpointSmall
                      ? 290.0
                      : 240.0,
                  child: SessionTimeoutWarningWidget(),
                ),
              ),
            );
          },
        ).then((value) => _startTimer());
      }
    }
  }

  void startOrResetTimer(bool start, BuildContext contextvalue) {
    _resetTimer(contextvalue);
    print("Timer reseted");
  }

  void _startTimer() {
    _secondsRemaining = FFAppConstants.idleTime;
    timer = Timer.periodic(Duration(seconds: 60), _timerCallback);
  }

  void _resetTimer(BuildContext contextvalue) {
    if (timer != null) {
      timer?.cancel();
    }
    context = contextvalue;
    _startTimer();
    print("Timer Restarted");
  }
}

Future sessionTimerAction(BuildContext context, bool isReset) async {
  // Add your function code here!
  CountdownTimer().startOrResetTimer(isReset, context);
}
