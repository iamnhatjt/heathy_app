// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heart_rate_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HeartRateModelAdapter extends TypeAdapter<HeartRateModel> {
  @override
  final int typeId = 0;

  @override
  HeartRateModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HeartRateModel(
      heartRate: fields[1] as int?,
      dateTime: fields[2] as DateTime?,
      age: fields[3] as int?,
      sex: fields[4] as String?,
    )..id = fields[0] as String?;
  }

  @override
  void write(BinaryWriter writer, HeartRateModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.heartRate)
      ..writeByte(2)
      ..write(obj.dateTime)
      ..writeByte(3)
      ..write(obj.age)
      ..writeByte(4)
      ..write(obj.sex);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HeartRateModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
