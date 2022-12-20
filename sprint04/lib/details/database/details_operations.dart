import 'package:firebase_database/firebase_database.dart';

import 'package:clicktravel/details/models/package_element.dart';

class DetailsOperations {
  DetailsOperations detailsOperations;
  //HomeOperations homeOperations;

  //Future<List<PlaceElement>> getAllPlaces() async {
    //var placeList = new List<PlaceElement>();
    //final ref = FirebaseDatabase.instance.ref();
    //final snapshot = await ref.child('places').get();

    //if (snapshot.exists) {
      //List values = snapshot.value;

      //var key = 0;
      //for (var i in values) {
        //placeList.add(PlaceElement.fromMap(i, key));
        //key++;
      //}
    //} else {
      //print('No data available.');
    //}

    //return placeList;
  //}
  Future<List<PackageElement>> getPackages(String keyword) async {
    var packageList = new List<PackageElement>();
    final ref = FirebaseDatabase.instance.ref();
    final snapshot = await ref.child('places/${keyword}/packages/').get();

    print(snapshot.value);

    if (snapshot.exists) {
      List values = snapshot.value;
      print(keyword);
      print(values.length);
      print(values[0].runtimeType);

      //var key = 0;
      for (var i in values) {
        //PackageElement.fromMap(i).show();
        //print('boo');
        //final j = PackageElement.fromMap(i);
        //j.show();
        //print(PackageElement())
        print("booo");

        packageList.add(PackageElement.fromMap(i));
        //key++;
      }
    } else {
      print('No data available.');
    }

    return packageList;
  }
}

  //Future<PlaceElement> getPakcages(String keyword) async {
    ////var placeList = new List<PlaceElement>();

    ////print('tt');
    //final ref = FirebaseDatabase.instance.ref();
    ////final snapshot = await ref.child('places/$').orderByChild('placeName').equalTo(keyword);
    //final snapshot = await ref.child('places/$keyword/packages');

    //PlaceElement place;

    //return place;

    ////List<PlaceElement> allPlaces = await getAllPlaces();
    ////print('tt');
    ////print(allPlaces.length.toString());

    ////for (var i in allPlaces) {
      ////if (i.placeName.contains(keyword)) {
        ////i.show();
        ////placeList.add(i);
      ////}
    ////}

    ////return placeList;
  //}
//}

  //Future<List<PlaceElement>> searchPlaces(String keyword) async {
    //var placeList = new List<PlaceElement>();

    //print('tt');

    //List<PlaceElement> allPlaces = await getAllPlaces();
    ////print('tt');
    ////print(allPlaces.length.toString());

    //for (var i in allPlaces) {
      //if (i.placeName.contains(keyword)) {
        //i.show();
        //placeList.add(i);
      //}
    //}

    //return placeList;
  //}
//final ref = FirebaseDatabase.instance.ref();
//final ref = FirebaseDatabase.instance.ref();
//final snapshot = await ref.child('places').get();
//final containsUpperCase = string.contains(RegExp(r'[A-Z]'));
//if (snapshot.exists) {
//List values = snapshot.value;

//var key = 0;
//for (var i in values) {
//var element = PlaceElement.fromMap(i, key);
//key++;
//if (element.placeName == keyword) {
//placeList.add(element);
//}
//}
//} else {
//print('No data available.');
//}
//print(placeList.length);
//print(placeList[0].show());
//.orderByChild('email')
//.equalTo(userList[0].email)
//.once()
//.then((DataSnapshot dataSnapshot) {
//String newKey = dataSnapshot.value.keys[0];
//print(newKey);
//});

//final snapshot = await ref.child('places').orderByChild('placeName').equalTo(keyword);
//final snapshot = await ref.child('places').orderByChild('placeName').equalTo(keyword).once().then());

//final list = getAllPlaces();
//print(list);
//return placeList;

//await FirebaseDatabase.instance
//.ref()
//.child('places')
//.orderByChild("placeName")
//.equalTo(keyword)
//.once()
//.then((event) {
//final snapshot = event.snapshot;
//List values = snapshot.value;

//if (snapshot.exists) {
//print(values.length);

////var key = 0;
////for (var i in values) {
////placeList.add(PlaceElement.fromMap(i, key));
////key++;
////}
//}
//else{
//print('No data available.');
//}
//}
//);

//if (snapshot.get().exists) {
//print(snapshot.ref.key);
//}

//print();

//final snap = await ref.child('places').orderByChild('placeName').equalTo(keyword).once().then(
//(DataSnapshot dataSnapshot) {
//String newKey = dataSnapshot.value.keys[0];
//print(newKey);
//}
//);

//print(snapshot.runtimeType);

//if (snapshot.exists) {
//List boo = snapshot.value;

//var key = 0;
//for (var i in boo) {
//placeList.add(PlaceElement.fromMap(i, key));
//key++;
//}

//print(placeList.length);
//print(placeList[0].show());

//return placeList;
//} else {
//print('No data available.');
//return placeList;
//}

//final dbProvider = DatabaseRepository.instance;
//FirebaseDatabase database = FirebaseDatabase.instance;

//DatabaseReference ref = FirebaseDatabase.instance.ref();
//DatabaseReference starCountRef = FirebaseDatabase.instance.ref('posts/$postId/starCount');

//starCountRef.onValue.listen((DatabaseEvent event) {
//final data = event.snapshot.value;
//updateStarCount(data);
//});

//DatabaseReference placesRef = FirebaseDatabase.instance.ref().child('places').orderByKey();

//Future<List<PlaceElement>> getAllPlaces() async {
////DatabaseReference placesRef = FirebaseDatabase.instance.ref().child('places').orderByKey();
////DatabaseReference values = FirebaseDatabase.instance.ref().child('places').orderByKey();
//Query values = FirebaseDatabase.instance.ref().child('places').orderByKey();
//print(values.get());

////placesRef.onValue.listen((DatabaseEvent event) {
////final data = event.snapshot.value;
////print(data);
////});
////return PlaceElement.fromMap();

////final db = await dbProvider.database;
////List<Map<String, dynamic>> allRows = await db.query('place');
////List<PlaceElement> placeElements = allRows.map((placeElement) =>
////PlaceElement.fromMap(placeElement)).toList();
////return placeElements;
//}
//DatabaseReference values = FirebaseDatabase.instance.ref().child('places').orderByKey();
//print(values.get());
//for (var values in boo) {
//print('${values}');
//}
//boo.forEach((key, value) { print('${key}: ${value}');});

//final snapshot = await ref.child('places/0').get()
//.set(<String, Object>{
//"placeName": place.placeName,
//});
//if (snapshot.exists) {
////print(snapshot.value.runtimeType);

////final test = PlaceElement.fromMap(snapshot, 0);
////print(test);
//print(snapshot);
//} else {
//print('No data available.');
//}

//class PlacesOperations {
//PlacesOperations placesOperations;

//final dbProvider = DatabaseRepository.instance;

//createPlace(PlaceElement placeElement) async {
//final db = await dbProvider.database;
//db.insert('place', placeElement.toMap());
//print('place inserted');
//}

//updatePlace(PlaceElement placeElement) async {
//final db = await dbProvider.database;
//db.update ('place', placeElement.toMap(),
//where: "placeId=?", whereArgs: [placeElement.id]);
//}

//deletePlace(PlaceElement placeElement) async {
//final db = await dbProvider.database;
//await db.delete('place', where: "placeId=?", whereArgs: [placeElement.id]);
//}

//Future<List<PlaceElement>> getAllPlaces() async {
//final db = await dbProvider.database;
//List<Map<String, dynamic>> allRows = await db.query('place');
//List<PlaceElement> placeElements = allRows.map((placeElement) =>
//PlaceElement.fromMap(placeElement)).toList();
//return placeElements;
//}

//Future<List<PlaceElement>> searchPlaces(String keyword) async {
//final db = await dbProvider.database;
//List<Map<String, dynamic>> allRows = await db.query(
//'place', where: 'placeName LIKE ?', whereArgs: ['%$keyword%']
//);
//List<PlaceElement> placeElements = allRows.map((placeElement) =>
//PlaceElement.fromMap(placeElement)).toList();
//return placeElements;
//}
//}
