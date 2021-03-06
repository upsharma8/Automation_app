import 'package:docker_app/screens/home.dart';
import 'package:docker_app/screens/login.dart';
import 'package:docker_app/screens/register.dart';
import 'package:docker_app/screens/techlist.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'screens/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "mysplash",
      routes: {
        "home": (context) => MyHome(),
        "reg": (context) => MyReg(),
        "log": (context) => MyLog(),
        "technologies": (context) => MyTech(),
        "mysplash": (context) => MySplash(),
      },
    ),
  );
}
