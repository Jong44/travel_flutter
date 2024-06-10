import 'package:flutter/material.dart';
import 'package:travel_app/config/ColorConfig.dart';

class TransaksiPage extends StatefulWidget {
  const TransaksiPage({super.key});

  @override
  State<TransaksiPage> createState() => _TransaksiPageState();
}

class _TransaksiPageState extends State<TransaksiPage> {
  List<String> kategori = ['Semua', 'Aktif', 'Selesai'];
  int indexKategori = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
