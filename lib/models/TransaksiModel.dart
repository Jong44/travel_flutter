import 'package:hive/hive.dart';

part 'TransaksiModel.g.dart';

@HiveType(typeId: 1)
class Transaksimodel extends HiveObject {
  @HiveField(0)
  String nama;
  @HiveField(1)
  String tanggal;
  @HiveField(2)
  String lokasi;
  @HiveField(3)
  String image;

  Transaksimodel({
    required this.nama,
    required this.tanggal,
    required this.lokasi,
    required this.image,
  });
}
