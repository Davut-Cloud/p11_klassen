import 'package:p11_klassen/class_reminder.dart';
import 'package:p11_klassen/repository/database_repository.dart';

class MockDatabaseRepository implements DatabaseRepository {
  List<String> medicationNames = [];
  List<String> userNames = [];
  List<Reminder> reminders = []; // Hinzugefügt für Reminder-Verwaltung

  @override
  void deleteMedication(String medicationName) {
    medicationNames.remove(medicationName);
  }

  @override
  void safeMedication(String medicationName) {
    medicationNames.add(medicationName);
  }

  @override
  void safeUser(String userName) {
    userNames.add(userName);
  }

  @override
  void deleteUser(String userName) {
    userNames.remove(userName);
  }

  @override
  void deleteReminder(String medicationName) {
    List<Reminder> toRemove = [];
    for (Reminder reminder in reminders) {
      if (reminder.medicationName == medicationName) {
        toRemove.add(reminder);
      }
    }
    for (Reminder reminder in toRemove) {
      reminders.remove(reminder);
    }
  }

  @override
  Reminder? getReminder(String medicationName) {
    for (Reminder reminder in reminders) {
      if (reminder.medicationName == medicationName) {
        return reminder;
      }
    }
    return null;
  }

  @override
  List<Reminder> getReminders(String medicationName) {
    List<Reminder> result = [];
    for (Reminder reminder in reminders) {
      if (reminder.medicationName == medicationName) {
        result.add(reminder);
      }
    }
    return result;
  }

  @override
  void saveReminder(Reminder reminder) {
    reminders.add(reminder);
  }

  @override
  void updateReminder(Reminder reminder) {
    for (int i = 0; i < reminders.length; i++) {
      if (reminders[i].medicationName == reminder.medicationName) {
        reminders[i] = reminder;
        return;
      }
    }
  }
}
