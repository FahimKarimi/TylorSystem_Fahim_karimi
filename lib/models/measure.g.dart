// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measure.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NationalMeasuresAdapter extends TypeAdapter<NationalMeasures> {
  @override
  final int typeId = 0;

  @override
  NationalMeasures read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NationalMeasures(
      name: fields[0] as String,
      cellNumber: fields[1] as String,
      shoulder: fields[2] as String,
      cotilla: fields[3] as String,
      bust: fields[4] as String,
      bustCircumference: fields[5] as String,
      bustHeight: fields[6] as String,
      bustSeparation: fields[7] as String,
      cleavage: fields[8] as String,
      back: fields[9] as String,
      waist: fields[10] as String,
      hip: fields[11] as String,
      frontSize: fields[12] as String,
      backSize: fields[13] as String,
      height: fields[14] as String,
      sleeve: fields[15] as String,
      sleeveCircumference: fields[16] as String,
      fist: fields[17] as String,
    );
  }

  @override
  void write(BinaryWriter writer, NationalMeasures obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.cellNumber)
      ..writeByte(2)
      ..write(obj.shoulder)
      ..writeByte(3)
      ..write(obj.cotilla)
      ..writeByte(4)
      ..write(obj.bust)
      ..writeByte(5)
      ..write(obj.bustCircumference)
      ..writeByte(6)
      ..write(obj.bustHeight)
      ..writeByte(7)
      ..write(obj.bustSeparation)
      ..writeByte(8)
      ..write(obj.cleavage)
      ..writeByte(9)
      ..write(obj.back)
      ..writeByte(10)
      ..write(obj.waist)
      ..writeByte(11)
      ..write(obj.hip)
      ..writeByte(12)
      ..write(obj.frontSize)
      ..writeByte(13);
      // ..write(obj.backSize)
      // ..writeByte(14)
      // ..write(obj.height)
      // ..writeByte(15)
      // ..write(obj.sleeve)
      // ..writeByte(16)
      // ..write(obj.sleeveCircumference)
      // ..writeByte(17)
      // ..write(obj.fist);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NationalMeasuresAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SuitMeasuresAdapter extends TypeAdapter<SuitMeasures> {
  @override
  final int typeId = 1;

  @override
  SuitMeasures read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SuitMeasures(
      name: fields[0] as String,
      cellNumber: fields[1] as String,
      waistLower: fields[2] as String,
      hipLower: fields[3] as String,
      leg: fields[4] as String,
      knee: fields[5] as String,
      boot: fields[6] as String,
      heightLower: fields[7] as String,
      crotch: fields[8] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SuitMeasures obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.cellNumber)
      ..writeByte(2)
      ..write(obj.waistLower)
      ..writeByte(3)
      ..write(obj.hipLower)
      ..writeByte(4)
      ..write(obj.leg)
      ..writeByte(5)
      ..write(obj.knee)
      ..writeByte(6)
      ..write(obj.boot)
      ..writeByte(7)
      ..write(obj.heightLower)
      ..writeByte(8)
      ..write(obj.crotch);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SuitMeasuresAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
