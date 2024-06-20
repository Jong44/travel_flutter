import 'package:hive/hive.dart';
import 'package:travel_app/models/TransaksiModel.dart';

class TransaksiService {
  final _boxName = "transaksi";

  Future<Box<Transaksimodel>> get _box async =>
      await Hive.openBox<Transaksimodel>(_boxName);

  Future<void> addTransaksi(Transaksimodel transaksi) async {
    var box = await _box;
    await box.add(transaksi);
    print("Transaksi berhasil ditambahkan");
  }

  Future<List<Transaksimodel>> getTransaksi() async {
    var box = await _box;
    return box.values.toList();
  }
}
