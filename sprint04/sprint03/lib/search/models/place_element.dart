class PlaceElement {
  int id;
  String destino;
  String pais; 
  double valor;
  double avaliacao;
  String curtido;

  PlaceElement({this.id, this.destino, this.pais, this.valor, this.avaliacao, this.curtido});
  
  PlaceElement.fromMap(dynamic obj) {
    this.id = obj['placeId'];
    this.destino = obj['placeName'];
    this.pais = obj['placeCountry'];
    this.valor = obj['placePrice'];
    this.avaliacao = obj['placeRating'];
    this.curtido = obj['placeIsLiked'];
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic> {
      'placeName': destino,
      'placeCountry': pais,
      'placePrice': valor,
      'placeRating': avaliacao,
      'placeIsLiked': curtido
    };
    return map;
  }
}
