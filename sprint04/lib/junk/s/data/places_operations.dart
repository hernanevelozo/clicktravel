import 'database.dart';
import '../models/place_element.dart';

class PlacesOperations {
  PlacesOperations placesOperations;

  final dbProvider = DatabaseRepository.instance;

  createPlace(PlaceElement placeElement) async {
    final db = await dbProvider.database;
    db.insert('place', placeElement.toMap());
    print('place inserted');
  }

  updatePlace(PlaceElement placeElement) async {
    final db = await dbProvider.database;
    db.update ('place', placeElement.toMap(),
      where: "placeId=?", whereArgs: [placeElement.id]);
  }

  deletePlace(PlaceElement placeElement) async {
    final db = await dbProvider.database;
    await db.delete('place', where: "placeId=?", whereArgs: [placeElement.id]);
  }

  Future<List<PlaceElement>> getAllPlaces() async {
    final db = await dbProvider.database;
    List<Map<String, dynamic>> allRows = await db.query('place');
    List<PlaceElement> placeElements = allRows.map((placeElement) => 
      PlaceElement.fromMap(placeElement)).toList();
    return placeElements;
  }

  Future<List<PlaceElement>> searchPlaces(String keyword) async {
    final db = await dbProvider.database;
    List<Map<String, dynamic>> allRows = await db.query(
      'place', where: 'placeName LIKE ?', whereArgs: ['%$keyword%']
    );
    List<PlaceElement> placeElements = allRows.map((placeElement) =>
      PlaceElement.fromMap(placeElement)).toList();
    return placeElements;
  }
}
