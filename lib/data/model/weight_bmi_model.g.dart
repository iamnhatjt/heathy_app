// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weight_bmi_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeightBMIModelAdapter extends TypeAdapter<WeightBMIModel> {
  @override
  final int typeId = 2;

  @override
  WeightBMIModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeightBMIModel(
      id: fields[0] as String?,
      dateTime: fields[1] as DateTime?,
      weight: fields[2] as double?,
      height: fields[3] as double?,
      age: fields[4] as int?,
      sex: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, WeightBMIModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.dateTime)
      ..writeByte(2)
      ..write(obj.weight)
      ..writeByte(3)
      ..write(obj.height)
      ..writeByte(4)
      ..write(obj.age)
      ..writeByte(5)
      ..write(obj.sex);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeightBMIModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
