import 'package:tylor_app/models/measure.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveData
{
  const HiveData();

  Future<int> saveNationalMeasure(NationalMeasures nationalMeasurse) async
  {
    final Box<NationalMeasures> box = await Hive.openBox('upper');
    return box.add(nationalMeasurse);
  }

  Future<int> saveSuitMeasure(SuitMeasures suitMeasures) async
  {
    final Box<SuitMeasures> boxLower = await Hive.openBox('lower');
    return boxLower.add(suitMeasures);
  }

  Future<List<NationalMeasures>> get nationalMeasures async
  {
    final Box<NationalMeasures> box = await Hive.openBox('upper');
    return box.values.toList();
  }

  Future<List<SuitMeasures>> get suitMeasures async
  {
    final Box<SuitMeasures> boxLower = await Hive.openBox('lower');
    return boxLower.values.toList();
  }

  Future<void> deleteNationalMeasures(int index) async
  {
    final Box<NationalMeasures> box = Hive.box('upper');
    box.deleteAt(index);
  }

  Future<void> deleteSuitMeasures(int index) async
  {
    final Box<SuitMeasures> box = Hive.box('lower');
    box.deleteAt(index);
  }
}