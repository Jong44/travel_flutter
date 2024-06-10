import 'package:flutter/material.dart';
import 'package:travel_app/config/ColorConfig.dart';

class CardTransaksi extends StatelessWidget {
  final String image;
  final String name;
  final String location;
  final String status;
  const CardTransaksi({
    super.key,
    required this.image,
    required this.name,
    required this.location,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      width: double.infinity,
      height: 90,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[200]!, blurRadius: 10, offset: Offset(0, 3))
          ]),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 100,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kam, 12 Agustus 2021 - 12.00',
                              style: const TextStyle(
                                  fontSize: 11, color: Colors.grey),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              location,
                              style: const TextStyle(
                                  fontSize: 11, color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Center(
                  child: Icon(
                    Icons.chevron_right,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
          Positioned(
            right: 0,
            child: Container(
              height: 20,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color:
                    status == 'Selesai' ? Color(0xffa3ebc9) : Color(0xffeef0f6),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                ),
              ),
              child: Center(
                child: Text(
                  status,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: status == "Selesai"
                          ? Color(0xff44a06c)
                          : Color(0xff959bcf),
                      fontSize: 10),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
