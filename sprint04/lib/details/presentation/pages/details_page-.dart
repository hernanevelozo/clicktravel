import 'package:flutter/material.dart';

import 'package:clicktravel/search/models/place_element.dart';
import 'package:clicktravel/details/models/package_element.dart';
import 'package:clicktravel/details/database/details_operations.dart';
import 'package:clicktravel/details/presentation/widgets/packages_list.dart';
//import 'package:clicktravel/share/navBar.dart';

class Details extends StatefulWidget {
  
  Details({Key key, this.placeElement}) : super(key: key,);
  final PlaceElement placeElement; 

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    PlaceElement placeElement = widget.placeElement;

    return Scaffold(
      //resizeToAvoidBottomInset: false,
      //extendBody: true,
      ////bottomNavigationBar: BottomNavBar(index: 3),
      body: SingleChildScrollView(
         child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: MediaQuery.of(context).size.width,
                  minHeight: MediaQuery.of(context).size.height,
                ),
          child: IntrinsicHeight(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 10, top: 40, bottom: 10),
                child: Row(children: [IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),]),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),

                //decoration: BoxDecoration(
                  ////color: Colors.red,
                  //borderRadius: BorderRadius.circular(10),
                  //image: DecorationImage(
                    //image: NetworkImage(placeElement.placeImageUrl),
                    //fit: BoxFit.cover,
                //),
                //),

                child: IntrinsicWidth(
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Ink(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                      //color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(placeElement.placeImageUrl),
                        fit: BoxFit.cover,
                    ),
                ),
                      //image: NetworkImage('${placeElement.placeImageUrl}'),
                      //height: 200,
                      //width: MediaQuery.of(context).size.width,
                      //fit: BoxFit.scaleDown,
                    ),
                  ]
                )
              ),),

              //Container(
                //alignment: Alignment.topLeft,
                //padding: EdgeInsets.only(left: 10, top: 40, bottom: 10),
                //child: Row(children: [
                  ////Image.network(
                    ////"${placeElement.placeImageUrl}"
                  ////),
                //]),
              //),

              SizedBox(
                height: 10,
              ),

              Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20.0,
              ),
              child: Column(children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "${placeElement.placeName}",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "${placeElement.placeCountry}",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),

                SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                    child: Text(
                      //'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                      "${placeElement.placeDescr}",
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

                SizedBox(
                  height: 20,
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      //margin: EdgeInsets.all(30),
                      width: 90,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        //shape: BoxShape.circle
                        borderRadius: BorderRadius.circular(5),
                      ),
                      //child: IntrinsicWidth(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //ListTile(title: Text('${placeElements[index].placeName}'), subtitle: Text('${placeElements[index].placeCountry}')),
                            //ListTile(title: Text('${placeElements[index].placeCountry}'))
                            Text('${placeElement.packagesNumber} ', style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold, color: Colors.white),),

                            if (placeElement.packagesNumber == 1)
                              Text('Pacote', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white),),
                            if (placeElement.packagesNumber > 1 || placeElement.packagesNumber < 1)
                              Text('Pacotes', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white),),
                          ]
                       )
                    ),
                      //),
                  ],
                ),


                SizedBox(
                  height: 10,
                ),

                Divider(
                  height: 10,
                  thickness: 1,
                ),


                //===========================================================================

                SizedBox(
                  height: 10,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Pacotes",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                SizedBox(
                  height: 10,
                ),

                Column(children: [
                    FutureBuilder(
                      future: DetailsOperations().getPackages('${placeElement.id}'),
                      builder: (context, snapshot) {
                        var data = snapshot.data;
                        //print(_myState);
                        return snapshot.hasData
                            ? PackagesList(data)
                            : new Center(
                                child: Text('Pacotes não encontrados.'),
                              );
                      },
                    ),
                ]),
                

                //Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //children: <Widget>[
                    //Text(
                      //"${placeElement.placeCountry}",
                      //style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                    //),
                  //],
                //),

                SizedBox(
                  height: 20,
                ),

                // Spacer(),

                //Padding(
                  //padding: const EdgeInsets.only(top: 10),
                  //child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    //children: <Widget>[

                      //Expanded(
                        //child: TextField(
                          //decoration: InputDecoration(
                            //hintText: "Nome",
                          //),
                        //),
                      //)
                    //],
                  //),
                //),

                //Padding(
                  //padding: const EdgeInsets.only(top: 20),
                  //child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    //children: <Widget>[

                      //Expanded(
                        //child: TextField(
                          //decoration: InputDecoration(
                            //hintText: "CPF",
                          //),
                        //),
                      //)
                    //],
                  //),
                //),

                //Column(
                  //children: [
                    //SizedBox(
                      //height: 30,
                      //width: 200,
                      //),
                    //SizedBox(
                      //height: 40,
                      //width: 200,
                      //child: OutlinedButton(
                        //style: OutlinedButton.styleFrom(
                          //backgroundColor: Colors.lightBlue,
                          //padding: const EdgeInsets.all(10),
                          //shape: RoundedRectangleBorder(
                            //borderRadius: BorderRadius.circular(20),
                          //),
                        //),
                        //onPressed: () {},
                        //child: Text("Salvar", style: TextStyle(
                          //fontSize: 16,
                          //letterSpacing: 2.2,
                          //color: Colors.white,
                        //)),
                      //),
                    //),
                  //],
                //),
              //]),
            //),

                ],),
        //],
      ),
      ],),),),),
    );
  }
}

        //padding: EdgeInsets.zero,
        //child: Center(
        //child: ListView(children: <Widget>[
          //Expanded(
            //flex: 3,
            //child: 
            //Container(
              //decoration: BoxDecoration(
                  //image: DecorationImage(
                    //image: NetworkImage(
                      //"https://firebasestorage.googleapis.com/v0/b/clicktravel-f2302.appspot.com/o/assets%2Flogo-splash.png?alt=media&token=4beb5375-ee69-4765-aa21-50d42b63b769",
                    //),
                    //fit: BoxFit.cover,
                  //),
                  //borderRadius: BorderRadius.only(
                      //bottomLeft: Radius.circular(35),
                      //bottomRight: Radius.circular(35))),
              //child: Row(
                //children: [

                //Row(
                  //children: <Widget>[
                    //Padding(
                      //padding: const EdgeInsets.only(top: 40),
                    //),
                    //Expanded(
                      //child: Text(
                        //"Esqueceu sua senha?",
                        //textAlign: TextAlign.right,
                        //style: Theme.of(context).textTheme.button,
                      //),
                    //),
                  //],
                //),

