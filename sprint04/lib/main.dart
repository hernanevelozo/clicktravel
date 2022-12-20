import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_database/firebase_database.dart';
import 'firebase_options.dart';

import 'package:clicktravel/home/presentation/pages/home_page-.dart';
//import 'package:clicktravel/home/presentation/pages/home_page.dart';
import 'package:clicktravel/search/presentation/pages/search_page.dart';
import 'package:clicktravel/settings/presentation/pages/settings_page.dart';
import 'package:clicktravel/login/presentation/pages/login_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clicktravel',
      theme: ThemeData(
        textTheme: TextTheme(
          headline5:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          button: TextStyle(color: Colors.blue),
          headline1:
            TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      routes: {
        "/search": (context) => Search(),
        "/settings": (context) => Settings(),
        "/login": (context) => Login(),
      },
      home: Home(),
    );
  }
}
