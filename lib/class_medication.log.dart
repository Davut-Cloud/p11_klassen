class MedicationIntakeLog {
  final String userId;
  final String medicationName;
  final DateTime intakeTime;
  final bool wasTaken;

  MedicationIntakeLog({
    required this.userId,
    required this.medicationName,
    required this.intakeTime,
    required this.wasTaken,
  });
}
