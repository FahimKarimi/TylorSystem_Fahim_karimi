import 'package:hive_flutter/adapters.dart';

part 'measure.g.dart';

@HiveType(typeId: 0)
class NationalMeasures extends HiveObject
{
  NationalMeasures(
  {
    required this.name,
    required this.cellNumber,

    required this.shoulder,
    required this.cotilla,
    required this.bust,
    required this.bustCircumference,
    required this.bustHeight,
    required this.bustSeparation,
    required this.cleavage,
    required this.back,
    required this.waist,
    required this.hip,
    required this.frontSize,
    required this.backSize,
    required this.height,
    required this.sleeve,
    required this.sleeveCircumference,
    required this.fist,
  });

  @HiveField(0)
  final String name;
  @HiveField(1)
  final String cellNumber;

  @HiveField(2)
  final String shoulder;
  @HiveField(3)
  final String cotilla;
  @HiveField(4)
  final String bust;
  @HiveField(5)
  final String bustCircumference;
  @HiveField(6)
  final String bustHeight;
  @HiveField(7)
  final String bustSeparation;
  @HiveField(8)
  final String cleavage;
  @HiveField(9)
  final String back;
  @HiveField(10)
  final String waist;
  @HiveField(11)
  final String hip;
  @HiveField(12)
  final String frontSize;
  @HiveField(13)
  final String backSize;
  @HiveField(14)
  final String height;
  @HiveField(15)
  final String sleeve;
  @HiveField(16)
  final String sleeveCircumference;
  @HiveField(17)
  final String fist;
}

@HiveType(typeId: 1)
class SuitMeasures extends HiveObject
{
  SuitMeasures(
  {
    required this.name,
    required this.cellNumber,

    required this.waistLower,
    required this.hipLower,
    required this.leg,
    required this.knee,
    required this.boot,
    required this.heightLower,
    required this.crotch,
  });

  @HiveField(0)
  final String name;
  @HiveField(1)
  final String cellNumber;

  @HiveField(2)
  final String waistLower;
  @HiveField(3)
  final String hipLower;
  @HiveField(4)
  final String leg;
  @HiveField(5)
  final String knee;
  @HiveField(6)
  final String boot;
  @HiveField(7)
  final String heightLower;
  @HiveField(8)
  final String crotch;
}