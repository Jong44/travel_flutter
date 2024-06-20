import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:travel_app/components/global/CardTransaksi.dart';
import 'package:travel_app/config/ColorConfig.dart';
import 'package:travel_app/models/TransaksiModel.dart';
import 'package:travel_app/service/TransaksiService.dart';

class TransaksiPage extends StatefulWidget {
  const TransaksiPage({super.key});

  @override
  State<TransaksiPage> createState() => _TransaksiPageState();
}

class _TransaksiPageState extends State<TransaksiPage> {
  List<String> kategori = ['Semua', 'Aktif', 'Selesai'];
  int indexKategori = 0;
  List<Transaksimodel> listDestination = [];

  Future loadJson() async {
    final response = await TransaksiService().getTransaksi();
    setState(() {
      listDestination = response;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadJson();
  }

  @override
  Widget build(BuildContext context) {
    if (listDestination.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorConfig.primaryColor,
        elevation: 0,
        foregroundColor: Colors.white,
        title: const Text('Transaksi Saya'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(5),
              width: double.infinity,
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                children: List.generate(
                    kategori.length,
                    (index) => Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                indexKategori = index;
                              });
                            },
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              margin: EdgeInsets.only(right: 10),
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                  color: indexKategori == index
                                      ? Colors.white
                                      : Colors.grey[200],
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(
                                child: Text(
                                  kategori[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: indexKategori == index
                                          ? ColorConfig.primaryColor
                                          : Colors.grey[600]),
                                ),
                              ),
                            ),
                          ),
                        )),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
                child: ListView.builder(
              itemCount: listDestination.length,
              itemBuilder: (context, index) {
                if (indexKategori == 0) {
                  return CardTransaksi(
                    image: listDestination[index].image,
                    name: listDestination[index].nama,
                    location: listDestination[index].lokasi,
                    status: "Aktif",
                  );
                } else if (indexKategori == 1) {
                  return CardTransaksi(
                    image: listDestination[index].image,
                    name: listDestination[index].nama,
                    location: listDestination[index].lokasi,
                    status: "Aktif",
                  );
                }
              },
            ))
          ],
        ),
      ),
    );
  }
}
