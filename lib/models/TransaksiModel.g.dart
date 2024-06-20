// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TransaksiModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TransaksimodelAdapter extends TypeAdapter<Transaksimodel> {
  @override
  final int typeId = 1;

  @override
  Transaksimodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Transaksimodel(
      nama: fields[0] as String,
      tanggal: fields[1] as String,
      lokasi: fields[2] as String,
      image: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Transaksimodel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.nama)
      ..writeByte(1)
      ..write(obj.tanggal)
      ..writeByte(2)
      ..write(obj.lokasi)
      ..writeByte(3)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransaksimodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
