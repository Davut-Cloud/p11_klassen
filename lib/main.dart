import 'package:p11_klassen/class_medication.dart';
import 'package:p11_klassen/class_medication.log.dart';
import 'package:p11_klassen/class_reminder.dart';
import 'package:p11_klassen/class_user.dart';

void main() {
  // Benutzer erstellen
  User user = User(
    name: "Max Mustermann",
    email: "max@example.com",
    profilePicUrl: "https://example.com/profile.jpg",
    password: "secure123",
  );

  // Medikament erstellen
  Medication aspirin = Medication(
    "Aspirin",
    "Tablette",
    20,
    "mg",
    "Täglich",
    ["08:00", "20:00"],
    7,
  );

  // Erinnerung für das Medikament erstellen
  Reminder erinnerung = Reminder(
    medicationName: aspirin.name,
    scheduledTime: "08:00",
  );

  // Einnahme protokollieren
  MedicationLog einnahme = MedicationLog(
    id: "1",
    medicationName: aspirin.name,
    intakeTime: DateTime.now(),
    wasTaken: false,
  );
}
