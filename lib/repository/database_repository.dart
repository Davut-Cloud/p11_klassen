import 'package:p11_klassen/class_reminder.dart';

abstract class DatabaseRepository {
  void safeMedication(String medicationName);
  void deleteMedication(String medicationName);
  void safeUser(String user);
  void deleteUser(String userId);
  void saveReminder(Reminder reminder);
  void deleteReminder(String medicationName);
  List<Reminder> getReminders(String medicationName);
  Reminder? getReminder(String medicationName);
  void updateReminder(Reminder reminder);
}
