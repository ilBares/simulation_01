class Car {
  final String _model;
  final String _plate;
  final String _color;
  final int _year;

  const Car(this._model, this._plate, this._color, this._year);

  int get year => _year;

  String get color => _color;

  String get plate => _plate;

  String get model => _model;
}