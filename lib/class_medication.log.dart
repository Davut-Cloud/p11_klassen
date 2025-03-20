class MedicationLog {
  String id;
  String medicationName;
  DateTime intakeTime;
  bool wasTaken;

  MedicationLog({
    required this.id,
    required this.medicationName,
    required this.intakeTime,
    required this.wasTaken,
  });
}
