import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:clicktravel/details/presentation/pages/details_page.dart';
import 'package:clicktravel/home/models/place_element.dart';
import 'package:clicktravel/home/database/home_operations.dart';

class SwiperComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Swiper(
      //onTap: (index) {
        //Navigator.push(
          //context,
          //MaterialPageRoute(
            //builder: (context) => PlacePage(
              //index: index,
            //),
            //fullscreenDialog: true,
          //),
        //);
      //},
      itemCount: 6,
      itemHeight: _size.height / 2.6,
      itemWidth: double.infinity,
      containerWidth: double.infinity,
      layout: SwiperLayout.CUSTOM,
      controller: new SwiperController(),
      customLayoutOption: CustomLayoutOption(
        startIndex: 0,
        stateCount: 3,
      ),
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.network(
                "https://picsum.photos/500/500?random=$index",
                height: _size.height / 1.8,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Procurando localização...",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Searching...",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

//class SwiperComponent extends StatefulWidget {
  //SwiperComponent({
    //Key key,
  //}) : super(
          //key: key,
        //);

  ////Future<List<PlaceElement>> getPlaces() async {return await HomeOperations().getAllPlaces();}

  //@override
  //_SwiperComponentState createState() => _SwiperComponentState();

//}

//class _SwiperComponentState extends State<SwiperComponent> {
  ////final HomeOperations placesOperations = HomeOperations();

  ////List<PlaceElement> placeElements = await SwiperComponent().getPlaces();

  ////SwiperComponent(List<PlaceElement> this.placeElements, {Key key})
      ////: super(key: key);
  
  //@override

  //Widget build(BuildContext context) {
    //Size _size = MediaQuery.of(context).size;
    //return Swiper(
      //onTap: (index) {
        //Navigator.push(
          //context,
          //MaterialPageRoute(
            //builder: (context) => PlacePage(
              ////index: index,
            //),
            //fullscreenDialog: true,
          //),
        //);
      //},
      //itemCount: 6,
      //itemHeight: _size.height / 2.6,
      //itemWidth: double.infinity,
      //containerWidth: double.infinity,
      //layout: SwiperLayout.CUSTOM,
      //controller: new SwiperController(),
      //customLayoutOption: CustomLayoutOption(
        //startIndex: 0,
        //stateCount: 3,
      //),
    ////return Container( child:
      //itemBuilder: (context, index) {
        //return 
        //ClipRRect(
          //borderRadius: BorderRadius.only(
            //bottomLeft: Radius.circular(12),
            //bottomRight: Radius.circular(12),
          //),
          //child: Stack(
            //alignment: Alignment.bottomLeft,
            //children: [
              //Image.network(
                //"https://firebasestorage.googleapis.com/v0/b/clicktravel-f2302.appspot.com/o/assets%2Ffront-page.png?alt=media&token=aef5cbd5-e027-44c4-9a25-d1bab1981c0c",
                //height: _size.height / 1.8,
                //fit: BoxFit.cover,
                //width: double.infinity,
              //),
              //Padding(
                //padding: EdgeInsets.only(bottom: 15, left: 30),
                //child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.end,
                  //children: [
                    //Text(
                      //"Explorar",
                      //style: TextStyle(
                        //fontSize: 24,
                        //color: Colors.white,
                        //fontWeight: FontWeight.bold,
                      //),
                    //),
                    //SizedBox(height: 5),
                    //Text(
                      //"Encontre o lugar exótico perfeito para você",
                      //style: TextStyle(
                        //fontSize: 15,
                        //color: Colors.white,
                      //),
                    //),
                  //],
                //),
              //),
            //],
          //),
        //);
            ////,
        ////);
      //},
    //);
  //}
//}

  //@override
  //Widget build(BuildContext context) {
    //return Container(
      //child: SizedBox(
      //height: 490,
      //child: ListView.separated(
        //scrollDirection: Axis.vertical,
        //shrinkWrap: true,
        //itemCount: placeElements.length,
        //padding: const EdgeInsets.all(6.0),
        //separatorBuilder: (BuildContext context, int index) => const Divider(),
        ////padding: EdgeInsets.symmetric(vertical: 30),
        //itemBuilder: (BuildContext context, int index) {
          //return Material (
              //elevation: 2,
              //borderRadius: BorderRadius.circular(10),
              //color: Colors.white,
            //child: Padding (
             //padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            //child: InkWell (
              //borderRadius: BorderRadius.circular(10),
              //splashColor: Colors.black26,
              //onTap: () {


