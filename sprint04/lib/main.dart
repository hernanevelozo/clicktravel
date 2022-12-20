import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_database/firebase_database.dart';
import 'firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ClicktravelApp();
  }
}

class ClicktravelApp extends StatefulWidget {
  const ClicktravelApp({Key key}) : super(key: key);

  @override
  ClickTravelAppState createState() => ClickTravelAppState();
}

class ClickTravelAppState extends State<ClicktravelApp> {
  final _prefs = SharedPreferences.getInstance();
  
  void _setUserId() async {
    Future<bool> contains = _prefs.then((SharedPreferences prefs) {
      return prefs.containsKey('userId');
    });

    if (! await contains) {
      await _prefs.then((SharedPreferences prefs) {prefs.setInt('userId', -1);});
    }
  }

  Future<bool> isLogged() async {
    Future<int> userId = _prefs.then((SharedPreferences prefs) {
      return prefs.getInt('userId');
    });

    print("userId: ${userId}");

    if (await userId == -1) {
      return false;
    }
    else {
      return true;
    }
  }

  @override
  void initState() {
    super.initState();

    _setUserId();
  }

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
      home: FutureBuilder<bool>(
              future: isLogged(),
              builder: (context, snapshot) {
                if (!snapshot.hasError) {
                  if (snapshot.data) {
                    return Home();
                  }
                  else {
                    return Login();
                  }
                }
                else {return Login();}
              }
            ));
  }
}

    //final SharedPreferences prefs = await _prefs;
    //final int userId = await prefs.getInt('userId');
    //setState(() {
    //setState(() {
      //_userId = prefs.setInt('userId', userId).then((bool success) {
        //return userId;
      //});
    //});

          //? ClickTravelAppState(
             //create: (context) => Home(),
             //child: Home(),
            //) 
          //: Login()),
    //);

  
  //Future<int> _userId;
  //Future<int> _userId;

  //Future<bool> _checkUserId() async {
    //final SharedPreferences prefs = await _prefs;
    //final int userRef = (prefs.getInt('userId') ?? 0);

    ////_userId = prefs.setInt('counter', counter).then((bool success) {});
  //}
  //Future<void> _setId() async {
    //final SharedPreferences prefs = await _prefs;
    //final int counter = (prefs.getInt('counter') ?? 0);

    //_userId = prefs.setInt('counter', counter).then((bool success) {});
    //}
