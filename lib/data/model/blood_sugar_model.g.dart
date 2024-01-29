// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blood_sugar_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BloodSugarModelAdapter extends TypeAdapter<BloodSugarModel> {
  @override
  final int typeId = 1;

  @override
  BloodSugarModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BloodSugarModel(
      id: fields[0] as String?,
      dateTime: fields[1] as DateTime?,
      bloodSugarType: fields[2] as String?,
      age: fields[3] as int?,
      sex: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, BloodSugarModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.dateTime)
      ..writeByte(2)
      ..write(obj.bloodSugarType)
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
      other is BloodSugarModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
