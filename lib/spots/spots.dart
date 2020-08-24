class Spot {
  final int _userID;
  final String _name;
  final String _latlng;
  final String _adress;
  final String _skateType;

  Spot(this._userID,this._name,this._latlng,this._adress,this._skateType);

  int get userID => _userID;
  String get name => _name;
  String get latlng => _latlng;
  String get adress => _adress;
  String get skateType => _skateType;

}