//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:path/path.dart';

import 'package:clicktravel/details/presentation/pages/details_page-.dart';
import 'package:clicktravel/details/models/package_element.dart';
import 'package:clicktravel/search/database/search_operations.dart';

class PackagesList extends StatelessWidget {
  final SearchOperations packageOperations = SearchOperations();
  final List<PackageElement> packageElements;

  PackagesList(List<PackageElement> this.packageElements, {Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
      height: 490,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: packageElements.length,
        padding: const EdgeInsets.all(6.0),
        separatorBuilder: (BuildContext context, int index) => const Divider(height: 20,),
        //padding: EdgeInsets.symmetric(vertical: 30),
        itemBuilder: (BuildContext context, int index) {
          return Material (
              elevation: 2,
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            child: Padding (
             padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: InkWell (
              borderRadius: BorderRadius.circular(10),
              splashColor: Colors.black26,
              onTap: () {
                //Navigator.push(context,
                    //MaterialPageRoute(builder: (context) => PlacePage()));
              },
              child: Column (
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //SizedBox(width: 3),

                  //Ink.image(
                    //image: NetworkImage('${placeElements[index].placeThumbUrl}'),
                    //height: 50,
                    //width: 50,
                    //fit: BoxFit.scaleDown,
                  //),

                  //SizedBox(width: 6),
                  //Text(
                    //'${placeElements[index].placeName}',
                    //style: TextStyle(fontSize: 18, color: Colors.black)
                    //),
                 Row(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[ 
                  Container(
                    child: IntrinsicWidth(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Ink.image(
                          image: NetworkImage('${packageElements[index].packageImageUrl}'),
                          height: 50,
                          width: 50,
                          fit: BoxFit.scaleDown,
                        ),
                      ]
                    )
                  ),),

                  Container(
                    child: IntrinsicWidth(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (packageElements[index].packageNights == 1)
                          ListTile(title: Text('${packageElements[index].packageNights } diária', style: TextStyle(fontWeight: FontWeight.bold),), subtitle: Text('${packageElements[index].companyName}')),
                        if (packageElements[index].packageNights > 1 || packageElements[index].packageNights < 1 )
                          ListTile(title: Text('${packageElements[index].packageNights } diárias', style: TextStyle(fontWeight: FontWeight.bold),), subtitle: Text('${packageElements[index].companyName}')),
                        //ListTile(title: Text('${placeElements[index].placeCountry}'))
                      ]
                    )
                  ),),
                  //SizedBox(width: 6,),
                ],
                ),
                  
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                    child: Text(
                      //'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                      "${packageElements[index].packageInfo}",
                      style: TextStyle(fontSize: 13),
                      softWrap: false,
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                    //Text(
                      //"${placeElement.placeDescr}",
                      //maxLines: 10,
                      //style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                    //),
                  ],
                ),

                SizedBox(height: 10,),

                 Row(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[ 
                  Container(
                    //margin: EdgeInsets.all(30),
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      //shape: BoxShape.circle
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: IntrinsicWidth(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //ListTile(title: Text('${placeElements[index].placeName}'), subtitle: Text('${placeElements[index].placeCountry}')),
                        //ListTile(title: Text('${placeElements[index].placeCountry}'))
                        Text('R\$ ${packageElements[index].packagePrice.toStringAsFixed(2)}', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                      ]

                    )
                  ),),
                  ]),
                  
                  SizedBox(height: 10,),
                ]
            ),),));
            //onPressed: () {
              //Navigator.push(context,
                  //MaterialPageRoute(builder: (context) => PlacePage()));
            //},
        },
      ),
    ));
  }
}
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
