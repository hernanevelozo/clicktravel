//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:path/path.dart';

import 'package:clicktravel/details/presentation/pages/details_page-.dart';
//import 'package:clicktravel/search/database/search_operations.dart';
import 'package:clicktravel/search/models/place_element.dart';

class PlacesList extends StatelessWidget {
  //final List<PlaceElement> placeElements;
  //PlacesList({Key key, this.placeElements}) : super(key: key);
  //final SearchOperations placesOperations = SearchOperations();
  final List<PlaceElement> placeElements;

  PlacesList(List<PlaceElement> this.placeElements, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
      height: 425,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: placeElements.length,
        padding: const EdgeInsets.all(10),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        //padding: EdgeInsets.symmetric(vertical: 30),
        itemBuilder: (BuildContext context, int index) {
          return Material (
              elevation: 0,
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            child: Container (
             //padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
              InkWell (
                borderRadius: BorderRadius.circular(10),
                splashColor: Colors.black26,
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Details(placeElement: placeElements[index])));
                },
              
                child: Ink(
              height: 200,
                  //width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                          image: NetworkImage(
                                    //"https://firebasestorage.googleapis.com/v0/b/clicktravel-f2302.appspot.com/o/assets%2Ffront-page.png?alt=media&token=aef5cbd5-e027-44c4-9a25-d1bab1981c0c",
                                    placeElements[index].placeImageUrl
                                  ),
                      fit: BoxFit.cover,
                    ),
                  ),
                     )
              //],
              ),
              SizedBox(
                height: 45,

                child: Center(
                child: Card(
                   shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                  ),
                  color: Color.fromRGBO(60, 60, 60, 0.3),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                        size: 16,
                      ),
                      //Container(
                        //child: Column (
                            //children: [
                              //ListTile(title: Text('${placeElements[index].placeName}', style: TextStyle(fontWeight: FontWeight.bold),), subtitle: Text('${placeElements[index].placeCountry}')),
                            //],)
                      //)

                        //Column (
                            //children: [
                              //ListTile(title: Text('${placeElements[index].placeName}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),), subtitle: Text('${placeElements[index].placeCountry}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)),
                            //],)

                      Text('${placeElements[index].placeName}',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              //fontWeight: FontWeight.w300,
                              ),
                         textAlign: TextAlign.center, 
                          ),
                      Text(' | ${placeElements[index].placeCountry}',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              //fontWeight: FontWeight.w300,
                              ),
                         textAlign: TextAlign.center, 
                          ),

                    ]),
                  ),
                ),
              )),
              //Text('boo'),
              ]

              //child: Row (
                //mainAxisSize: MainAxisSize.max,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //children: [
                  ////SizedBox(width: 3),

                  ////Ink.image(
                    ////image: NetworkImage('${placeElements[index].placeThumbUrl}'),
                    ////height: 50,
                    ////width: 50,
                    ////fit: BoxFit.scaleDown,
                  ////),

                  ////SizedBox(width: 6),
                  ////Text(
                    ////'${placeElements[index].placeName}',
                    ////style: TextStyle(fontSize: 18, color: Colors.black)
                    ////),
                 //Row(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[ 

                  //Container(
                    //child: IntrinsicWidth(
                    //child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      //children: [
                        //Ink.image(
                          //image: NetworkImage('${placeElements[index].placeThumbUrl}'),
                          //height: 50,
                          //width: 50,
                          //fit: BoxFit.scaleDown,
                        //),
                      //]
                    //)
                  //),),

                  //Container(
                    //child: IntrinsicWidth(
                    //child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      //children: [
                        //ListTile(title: Text('${placeElements[index].placeName}', style: TextStyle(fontWeight: FontWeight.bold),), subtitle: Text('${placeElements[index].placeCountry}')),
                        ////ListTile(title: Text('${placeElements[index].placeCountry}'))
                      //]
                    //)
                  //),),
                  ////SizedBox(width: 6,),
                //],
                //),
               
                  //Container(
                    ////margin: EdgeInsets.all(30),
                    //width: 20,
                    //height: 20,
                    //decoration: BoxDecoration(
                      //color: Colors.amber,
                      ////shape: BoxShape.circle
                      //borderRadius: BorderRadius.circular(5),
                    //),
                    //child: IntrinsicWidth(
                    //child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      //children: [
                        ////ListTile(title: Text('${placeElements[index].placeName}'), subtitle: Text('${placeElements[index].placeCountry}')),
                        ////ListTile(title: Text('${placeElements[index].placeCountry}'))
                        //Text('${placeElements[index].packagesNumber}', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                      //]


                    )
                  ),
              );}
              ),),);}}

                //])
              //)
            //),);
            //onPressed: () {
              //Navigator.push(context,
                  //MaterialPageRoute(builder: (context) => PlacePage()));
            //},
        //},
      //),
    //));
  //}
//}
//child: Padding(
//padding: const EdgeInsets.all(6.0),
//child: Container(
////decoration: BoxDecoration(
//////color: Colors.lightBlue,
////borderRadius: BorderRadius.circular(5)),
//////color: Colors.lightBlue,
//width: MediaQuery.of(context).size.width,
//height: 50,
////color: Colors.white,
////child: Center(
//child: Row(
//mainAxisAlignment: MainAxisAlignment.spaceBetween,
//children: <Widget>[
//Column(
//mainAxisAlignment: MainAxisAlignment.center,
//crossAxisAlignment: CrossAxisAlignment.start,
//children: <Widget>[
//Text(
////' ${placeElements[index].destino} ',
//'boo',
////textAlign: TextAlign.left,
//style: TextStyle(
//color: Colors.black,
//fontSize: 18,
//fontWeight: FontWeight.bold,
//),
//),
//Text(
////' ${placeElements[index].pais} ',
//'boo',
////textAlign: TextAlign.left,
//style: TextStyle(
//color: Colors.black,
//fontSize: 13,
//fontWeight: FontWeight.normal,
//),
//),
//]),
//Row(
//mainAxisAlignment: MainAxisAlignment.center,
//crossAxisAlignment: CrossAxisAlignment.end,
//children: [
//Icon(
//Icons.star,
//color: Color(0xffffe100),
//size: 14,
//),
//Text(
////' ${placeElements[index].avaliacao} ',
//'boo',
//style: TextStyle(
//fontSize: 14,
//color: Color(0xffffe100),
//fontWeight: FontWeight.normal)),
//]),
//],
//),
//),
//),
//child: SingleChildScrollView(
//child: ListView.separated(
//scrollDirection: Axis.vertical,
//shrinkWrap: true,
//separatorBuilder: (BuildContext context, int index) => const Divider(),
//itemCount: placeElements.length,
//itemBuilder: (context, index) => ListTile(
//title: Text(
//' ${placeElements[index].destino} ',
//style: TextStyle(
//color: Colors.black,
//fontWeight: FontWeight.bold,
//),
//),
//subtitle: Text(
//' ${placeElements[index].pais} ',
//style: TextStyle(
//color: Colors.black,
//),
//),
//trailing:
///*prefixIcon: Icon(Icons.search),*/
///*prefixIconColor: Colors.lightBlue,*/
//Text(
//' ${placeElements[index].avaliacao} ',
//style: TextStyle(color: Colors.amber),
//),
////leading: Image.network(displayList[index].place_poster_url),
//),
//),)
//child: Expanded(
//flex: 1,

//Padding(
//padding: const EdgeInsets.all(8.0),
//child: ElevatedButton(
//onPressed: () {
//Navigator.push(context, MaterialPageRoute())
//MaterialPageRoute(builder: (context) => EditPlacePage(
//MaterialPageRoute(builder: (context) => EditPlacePage(
//placeElement: placeElements[index],
//)));
//}
//)
//)
