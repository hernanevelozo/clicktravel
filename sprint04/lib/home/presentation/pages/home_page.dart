import 'package:flutter/material.dart';

import 'package:clicktravel/home/presentation/widgets/categories.dart';
import 'package:clicktravel/home/presentation/widgets/subPlaces.dart';
import 'package:clicktravel/share/navBar.dart';
import '../widgets/HomeScreen.dart';

//class MyHomePage extends StatefulWidget {
  //MyHomePage({
    //Key key,
  //}) : super(
          //key: key,
        //);

  ////Future<List<PlaceElement>> getPlaces() async {return await HomeOperations().getAllPlaces();}

  //@override
  //_MyHomePageState createState() => _MyHomePageState();

//}

//class _MyHomePageState extends State<MyHomePage> {
  //@override
  //Widget build(BuildContext context) {
    //return Scaffold(
      //extendBody: true,
      //body: SingleChildScrollView(
        //child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          //children: [
            //SwiperComponent(),
            //TabbarComponent(),
            //SizedBox(height: 25),
            //FoodListComponent(),
          //],
        //),
      //),
      //bottomNavigationBar: BottomNavBar(index: 0),
    //);
  //}
//}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SwiperComponent(),
            TabbarComponent(),
            SizedBox(height: 25),
            FoodListComponent(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(index: 0),
    );
  }
}
