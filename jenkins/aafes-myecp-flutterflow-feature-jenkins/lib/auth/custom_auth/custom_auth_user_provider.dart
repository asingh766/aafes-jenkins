import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class MyECPAuthUser {
  MyECPAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<MyECPAuthUser> myECPAuthUserSubject =
    BehaviorSubject.seeded(MyECPAuthUser(loggedIn: false));
Stream<MyECPAuthUser> myECPAuthUserStream() =>
    myECPAuthUserSubject.asBroadcastStream().map((user) => currentUser = user);
