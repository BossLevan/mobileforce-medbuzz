import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
part 'diet_reminder.g.dart';

@HiveType()
class DietModel {
  @HiveField(0)
  final String dietName;
  @HiveField(1)
  final TimeOfDay time;
  @HiveField(2)
  final DateTime startDate;

  // Incase this will be used for a three-square meal reminder, I'll include optional fields
  @HiveField(3)
  final String secondDietName;
  @HiveField(4)
  final String thirdDietName;
  @HiveField(5)
  final TimeOfDay secondTime;
  @HiveField(6)
  final TimeOfDay thirdTime;
  //optional end date, if not suppplied, notification should probably be set for just the start date
  @HiveField(7)
  final DateTime endDate;

  DietModel(
      {@required this.dietName,
      @required this.time,
      @required this.startDate,
      this.secondDietName,
      this.thirdDietName,
      this.secondTime,
      this.thirdTime,
      this.endDate});
}
