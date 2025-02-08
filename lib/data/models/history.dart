class History {
  String? _date, _pickUpLocation, _dropLocation, _passengerName;
  double? _payment, _distance;
  int? _riderId;

  // Getters
  String? get date => _date;
  String? get pickUpLocation => _pickUpLocation;
  String? get dropLocation => _dropLocation;
  String? get passengerName => _passengerName;
  double? get payment => _payment;
  double? get distance => _distance;
  int? get riderId => _riderId;

  // Setters
  set date(String? date) => _date = date;
  set pickUpLocation(String? pickUpLocation) =>
      _pickUpLocation = pickUpLocation;
  set dropLocation(String? dropLocation) => _dropLocation = dropLocation;
  set passengerName(String? passengerName) => _passengerName = passengerName;
  set payment(double? payment) => _payment = payment;
  set distance(double? distance) => _distance = distance;
  set riderId(int? riderId) => _riderId = riderId;
}
