class Reminder {
  // Attribute
  String medicationName; // Name des Medikaments
  String scheduledTime; // Geplante Uhrzeit
  bool isConfirmed; // Bestätigung der Einnahme

  // Konstruktor
  Reminder({
    required this.medicationName,
    required this.scheduledTime,
    this.isConfirmed = false,
  });
}
