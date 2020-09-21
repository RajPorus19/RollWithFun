class Spot {
  final int userID;
  final String name;
  final String latlng;
  final String adress;
  final String skateType;

  Spot(this.userID,
  this.name,
  this.latlng,
  this.adress,
  this.skateType);

  Spot.fromMap(Map snapshot) :
        userID = snapshot['userID'] ?? "",
        name = snapshot['name'] ?? "",
        latlng = snapshot['latlng'] ?? "",
        adress = snapshot['adress'] ?? "",
        skateType = snapshot['skateType'] ?? "";


  toJson(){
  return {
        "userID": userID,
        "name": name,
        "latlng": latlng,
        "adress" : adress,
        "skateType": skateType
    };
  }

}

Spot spot1 = Spot(1,"Médiathèque Aimé Césaire",
"latlng",
"1 Mail lorem l'lorem,lorem lorem lorem",
"Slalom");

Spot spot2 = Spot(1,"Médiathèque Aimé Césaire",
"latlng",
"lorem La lorem",
"freeride");

Spot spot3 = Spot(1,
"Médiathèque Aimé Césaire",
"latlng",
"lorem lorem lorem",
"Slalom");

Spot spot4 = Spot(1,
"Médiathèque Aimé Césaire",
"latlng",
"lorem lorem lorem",
"Speed");

Spot spot5 = Spot(1,"Médiathèque Aimé Césaire",
"latlng",
"loremloremlorem ",
"Slalom");


List<Spot> spotList = [
  spot1,
  spot2,
  spot3,
  spot4,
  spot5,
];
