// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_local_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserLocalDataAdapter extends TypeAdapter<UserLocalData> {
  @override
  final int typeId = 1;

  @override
  UserLocalData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserLocalData(
      id: fields[0] as int,
      email: fields[1] as String,
      names: fields[2] as String,
      height: fields[3] as double,
      phone: fields[4] as String,
      token: fields[5] as String,
      expiredSession: fields[6] as DateTime,
      firstUseApp: fields[7] as bool,
      firstTakeMeasure: fields[8] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, UserLocalData obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.names)
      ..writeByte(3)
      ..write(obj.height)
      ..writeByte(4)
      ..write(obj.phone)
      ..writeByte(5)
      ..write(obj.token)
      ..writeByte(6)
      ..write(obj.expiredSession)
      ..writeByte(7)
      ..write(obj.firstUseApp)
      ..writeByte(8)
      ..write(obj.firstTakeMeasure);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserLocalDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
