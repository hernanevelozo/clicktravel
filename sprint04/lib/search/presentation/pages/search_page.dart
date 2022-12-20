import 'package:flutter/material.dart';

//import '../../data/places_operations.dart';
//import 'package:clicktravel/search/presentation/widgets/place_list.dart';
//import '../../../home/components/navBar.dart';
//import '../../models/place_element.dart';

import 'package:clicktravel/search/presentation/widgets/place_list.dart';
import 'package:clicktravel/search/database/search_operations.dart';
//import 'package:clicktravel/search/models/place_element.dart';
import 'package:clicktravel/share/navBar.dart';

class Search extends StatefulWidget {
  Search({
    Key key,
  }) : super(
          key: key,
        );

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  SearchOperations searchOperations = SearchOperations();
  String keyword;
  var _myState = 0;

  @override
  Widget build(BuildContext context) {
    //var _myState = 0;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavBar(index: 1),
      //backgroundColor: Color(0xf9f9f9ff),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 10, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Container(child: Row(
            //children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Pesquisar local",
                  style: TextStyle(
                    //color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              style: TextStyle(color: Colors.lightBlue),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                  //borderSide: BorderSide.none
                ),
                hintText: "Ex: Machu Picchu",
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.lightBlue,
              ),
              onChanged: (value) {
                keyword = value;
                print('boo');
                print(keyword);
                setState(() {
                  if (keyword == "") {
                    _myState = 0;
                    //print(myState);
                  } else {
                    _myState = 1;
                    //print(myState);
                  }
                });
              },
            ),
            SizedBox(height: 20.0),
            Divider(
              height: 0,
              thickness: 1,
            ),
            //]
            //),),
            Column(children: [
              if (_myState == 0)
                FutureBuilder(
                  future: searchOperations.getAllPlaces(),
                  builder: (context, snapshot) {
                    var data = snapshot.data;
                    print(_myState);
                    return snapshot.hasData
                        ? PlacesList(data)
                        : new Center(
                            child: Text('Destino não encontrado'),
                          );
                  },
                ),
              if (_myState == 1)
                FutureBuilder(
                  future: searchOperations.searchPlaces(keyword),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) print('error');
                    var data = snapshot.data;
                    print(_myState);
                    return snapshot.hasData
                        ? PlacesList(data)
                        : new Center(
                            child: Text('Destino não encontrado'),
                          );
                  },
                ),
            ]),
          ],
        ),
      ),
    );
  }
}


              //onTap: () {
                //print('baa');
                //print(_myState);
                //setState(() {
                  //_myState = 1;
                //});
              //},
              //onSubmitted: (value) {
              //keyword = value;
              //setState(() {
              //_myState = 1;
              //});
              //},


//Future<List<PlaceElement>> init() async {
//this.searchOperations = SearchOperations();
//List<PlaceElement> allPlacesList = await searchOperations.getAllPlaces();

//return allPlacesList;
//}

//List<PlaceElement> allPlacesList = await searchOperations.getAllPlaces();
//const List<PlaceElement> a = allPlacesList;
//const apList = init();
//SearchOperations searchOperations;
//searchOperations.getAllPlaces();
//searchOperations.getAllPlaces();

//static List<PlacesModel> mainPlacesList = [
//PlacesModel("Cancun, Mexico",                double.parse((4849.99).toStringAsFixed(2)), 9.3, "https://picsum.photos/400/400?random=1"),
//PlacesModel("Truk, Micronesia",              double.parse((5259.99).toStringAsFixed(2)), 8.6, "https://picsum.photos/400/400?random=2"),
//PlacesModel("Raimbow Mountains, China",      double.parse((9153.99).toStringAsFixed(2)), 9.1, "https://picsum.photos/400/400?random=3"),
//PlacesModel("Richat Structure, Mauritania",  double.parse((8464.99).toStringAsFixed(2)), 7.8, "https://picsum.photos/400/400?random=4"),
//PlacesModel("Kusma Gyadi, Nepal",            double.parse((7894.99).toStringAsFixed(2)), 9.4, "https://picsum.photos/400/400?random=5"),
//PlacesModel("Abraham Lake, Canada",          double.parse((11999.99).toStringAsFixed(2)), 8.6, "https://picsum.photos/400/400?random=6"),
//PlacesModel("Yakutski, Russia",              double.parse((15659.99).toStringAsFixed(2)), 6.2, "https://picsum.photos/400/400?random=7"),
//];

//List<PlacesModel> displayList = List.from(mainPlacesList);

//void updateList(String value) {
//setState(() {
//displayList = mainPlacesList
//.where((element) =>
//element.place_title.toLowerCase().contains(value.toLowerCase()))
//.toList();
//});
//}

//FocusNode _focus = FocusNode();
//TextEditingController _controller = TextEditingController();

//@override
//void initState() {
//super.initState();
//_focus.addListener(_onFocusChange);
//}

//@override
//void dispose() {
//_focus.removeListener(_onFocusChange);
//_focus.dispose();
//}

//Expanded(
//child: ListView.separated(
//scrollDirection: Axis.vertical,
//separatorBuilder: (BuildContext context, int index) =>
//const Divider(),
//itemCount: displayList.length,
//itemBuilder: (context, index) => ListTile(
//title: Text(
//displayList[index].place_title,
//style: TextStyle(
//color: Colors.black,
//fontWeight: FontWeight.bold,
//),
//),
//subtitle: Text(
//'R\$ ${displayList[index].place_release_year}',
//style: TextStyle(
//color: Colors.black,
//),
//),
//trailing:
///*prefixIcon: Icon(Icons.search),*/
///*prefixIconColor: Colors.lightBlue,*/
//Text(
//"${displayList[index].rating}",
//style: TextStyle(color: Colors.amber),
//),
//leading: Image.network(displayList[index].place_poster_url),
//),
//),
//),

//Container(
//child: FutureBuilder(
////future: searchOperations.searchPlaces(keyword),
//future: searchOperations.searchPlaces(allPlacesList, keyword),
//builder: (context, snapshot) {
//if (snapshot.hasError) print('error');
//var data = snapshot.data;
//return snapshot.hasData
//? PlacesList(data)
//: new Center(
//child: Text('Destino não encontrado'),
//);
//},
//),
//),
