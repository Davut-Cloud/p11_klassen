class Medication {
  String name;
  String type;
  int quantity;
  String unit;
  String schedule;
  List<String> times;
  int duration;

  Medication(
    this.name,
    this.type,
    this.quantity,
    this.unit,
    this.schedule,
    this.times,
    this.duration,
  );
}
