import 'package:flutter/material.dart';

//import 'package:firebase_core/firebase_core.dart';
//import 'firebase_options.dart';

import 'login/login.dart';
import 'home/home_page.dart';
import 'search/presentation/pages/sp.dart';
//import 'search/presentation/pages/search_places.dart';
import 'settings/settings_page.dart';


void main() {
  //await Firebase.initializeApp(
    //options: DefaultFirebaseOptions.currentPlatform,
  //);
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
        //"/search": (context) => SearchPage(),
        "/settings": (context) => Settings(),
        "/login": (context) => Login(),
      },
      home: MyHomePage(),
    );
  }
}
