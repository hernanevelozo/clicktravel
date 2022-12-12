import 'package:flutter/material.dart';
import 'package:path/path.dart';

import 'package:clicktravel/home/place/placeDetails.dart';
import '../../data/places_operations.dart';
import '../../models/place_element.dart';

class PlacesList extends StatelessWidget {
  List<PlaceElement> placeElements;
  PlacesOperations placesOperations = PlacesOperations();

  PlacesList(List<PlaceElement> this.placeElements, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        
      child: SizedBox(
      height: 500,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: placeElements.length,
        padding: const EdgeInsets.all(6.0),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        //padding: EdgeInsets.symmetric(vertical: 30),
        itemBuilder: (BuildContext context, int index) {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            key: Key('${placeElements[index].id}'),
            //child: ListTile(
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

            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                //decoration: BoxDecoration(
                ////color: Colors.lightBlue,
                //borderRadius: BorderRadius.circular(5)),
                ////color: Colors.lightBlue,
                width: MediaQuery.of(context).size.width,
                height: 50,
                //color: Colors.white,
                //child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                        Text(
                          ' ${placeElements[index].destino} ',
                          //textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          ' ${placeElements[index].pais} ',
                          //textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xffffe100),
                            size: 14,
                          ),
                          Text(' ${placeElements[index].avaliacao} ',
                            style: TextStyle(
                                fontSize: 14,
                            color: Color(0xffffe100),
                                fontWeight: FontWeight.normal)),
                          ]),
                        ],
                      ),
                  ),
              ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PlacePage()));
            },
          );
        },
      ),
    )
    );
  }
}

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
