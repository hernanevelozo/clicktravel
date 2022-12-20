class PackageElement {
  //int id;
  String companyName;
  String packageImageUrl;
  String packageInfo;
  int packageNights;
  double packagePrice;
  //String placeImageUrl;
  //String placeThumbUrl;

  PackageElement({
      this.companyName,
      this.packageImageUrl,
      this.packageInfo,
      this.packageNights,
      this.packagePrice,
  });

  PackageElement.fromMap(dynamic obj) {
      this.companyName = obj['companyName'];
      this.packageImageUrl = obj['packageImageUrl'];
      this.packageInfo = obj['packageInfo'];
      this.packageNights = obj['packageNights'];
      this.packagePrice = obj['packagePrice'];
  }

  show() {
    String str =
        "companyName: ${companyName},\npackageImageUrl: ${packageImageUrl},\npackageInfo: ${packageInfo},\npackageNights: ${packageNights},\npackagePrice: ${packagePrice}";
    print(str);
  }
    //this.id = key;
    //this.placeName = obj['placeName'];
    //this.placeCountry = obj['placeCountry'];
    //this.placeDescr = obj['placeDescr'];
    //this.packagesNumber = obj['packagesNumber'];
    //this.placeImageUrl = obj['placeImageUrl'];
    //this.placeThumbUrl = obj['placeThumbUrl'];

  //"0": {
  //"placeName": "Machu Picchu",
  //"placeCountry": "Peru",
  //"placeDescr": "Machu Picchu é um desses lugares em que é preciso desfrutar ao menos uma vez na vida. A energia inexplicável do local e a bela paisagem.",
  //"packagesNumber": 2,
  //"placeImageUrl": "https://firebasestorage.googleapis.com/v0/b/clicktravel-f2302.appspot.com/o/places%2F01%20Machu%20Picchu.png?alt=media&token=731b2cc0-e234-4710-beee-38d82343c461",
  //"packages": {
  //"0": {
  //"companyName": "Alves Viagens",
  //"packageInfo": "Desfrute das belezas de Machu Picchu em um dos melhores resorts do Peru, acompanhado por música local, ótima comida e muita hospitalidade.",
  //"packagePrice": 10107.0,
  //"packageNights": 3,
  //"packageImageUrl": "https://firebasestorage.googleapis.com/v0/b/clicktravel-f2302.appspot.com/o/packages%2F01%20Machu%20Picchu.png?alt=media&token=aba4b035-cad6-4e79-af82-e10d9acd57ad",
  //"tags": {}
  //},
  //"1": {
  //"companyName": "Arituba Turismo",
  //"packageInfo": "Não perca a oportunidade de aproveitar o que Machu Picchu tem a oferecer. Venha conhecer um dos melhores resorts do país.",
  //"packagePrice": 7960.0,
  //"packageNights": 3,
  //"packageImageUrl": "https://firebasestorage.googleapis.com/v0/b/clicktravel-f2302.appspot.com/o/packages%2F01%20Machu%20Picchu%202.png?alt=media&token=4f45fcec-565e-4bc8-836a-6bd6fa35eff1",
  //"tags": {}
  //}
  //}
  //},
  //Map<String, dynamic> toMap() {
  //var map = <String, dynamic> {
  //'placeName': placeName,
  //'placeCountry': placeCountry,
  //'placeDescr': placeDescr,
  //'packagesNumber': packagesNumber,
  //'placeImageUrl': placeImageUrl,
  //'placeThumbUrl': placeThumbUrl,
  //};
  //return map;
  //}

  //Map<String, dynamic> toMap() {
  //var map = <String, dynamic> {
  //'placeName': destino,
  //'placeCountry': pais,
  //'placePrice': valor,
  //'placeRating': avaliacao,
  //'placeIsLiked': curtido
  //};
  //return map;
  //}
}
