import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:travel_app/components/global/CardTravel.dart';
import 'package:travel_app/config/ColorConfig.dart';
import 'package:travel_app/pages/DetailPage/DetailDestinasi.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> _categories = [
    {
      "icon": FaIcon(
        FontAwesomeIcons.umbrellaBeach,
        size: 15,
      ),
      "title": "Pantai",
    },
    {
      "icon": FaIcon(
        FontAwesomeIcons.mountain,
        size: 15,
      ),
      "title": "Gunung",
    },
    {
      "icon": FaIcon(
        FontAwesomeIcons.water,
        size: 15,
      ),
      "title": "Pulau",
    },
    {
      "icon": FaIcon(
        FontAwesomeIcons.monument,
        size: 15,
      ),
      "title": "Monumen",
    },
    {
      "icon": FaIcon(
        FontAwesomeIcons.tree,
        size: 15,
      ),
      "title": "Hutan",
    },
    {
      "icon": FaIcon(
        FontAwesomeIcons.city,
        size: 15,
      ),
      "title": "Kota",
    },
  ];

  List liked = [
    {
      "idDestinasi": 1,
    },
    {
      "idDestinasi": 3,
    }
  ];

  List listDestination = [];

  Future loadJson() async {
    final String response =
        await rootBundle.loadString('assets/data/destinasi.json');
    final data = await json.decode(response);
    setState(() {
      liked.forEach((element) {
        data.forEach((element2) {
          if (element['idDestinasi'] == element2['id']) {
            element2['isLiked'] = true;
          }
          element2['isLiked'] ??= false;
        });
      });
      listDestination = data;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadJson();
  }

  int _selectedCategories = 0;

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
          toolbarHeight: 50,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Iconsax.location5,
                  color: ColorConfig.primaryColor, size: 22),
              const SizedBox(width: 8),
              const Text('Semarang, Indonesia', style: TextStyle(fontSize: 16)),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Iconsax.notification4,
                  color: Colors.black, size: 22),
            ),
          ],
          foregroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.13),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: TextField(
                            style: TextStyle(fontSize: 15),
                            decoration: InputDecoration(
                                hintText: 'Search',
                                hintStyle: TextStyle(color: Colors.grey),
                                prefixIcon: Icon(
                                  Iconsax.search_normal,
                                  color: Colors.grey,
                                ),
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.only(top: 13, left: 15)),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: () {},
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: ColorConfig.primaryColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(
                            Iconsax.search_normal,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _categories.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          onTap: () {
                            setState(() {
                              if (_selectedCategories == index + 1) {
                                _selectedCategories = 0;
                              } else {
                                _selectedCategories = index + 1;
                              }
                            });
                          },
                          child: AnimatedContainer(
                            alignment: Alignment.center,
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: index + 1 == _selectedCategories
                                  ? ColorConfig.primaryColor
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: _categories[index]['icon'],
                                ),
                                index + 1 == _selectedCategories
                                    ? Row(
                                        children: [
                                          const SizedBox(width: 10),
                                          Text(
                                            _categories[index]['title'],
                                            style: TextStyle(
                                              color: index + 1 ==
                                                      _selectedCategories
                                                  ? Colors.white
                                                  : Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                        ],
                                      )
                                    : const SizedBox(width: 0),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 200,
                    child: CarouselSlider(
                        options: CarouselOptions(
                          height: 190,
                          viewportFraction: 0.9,
                          enableInfiniteScroll: true,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 20),
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          scrollDirection: Axis.horizontal,
                        ),
                        items: [
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade300,
                              image: const DecorationImage(
                                image: AssetImage('assets/images/promo.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ]),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Rekomendasi Tempat Wisata',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  Column(
                    children: List.generate(6, (index) {
                      if (index % 2 == 0) {
                        return Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailDestinasi(
                                              isLiked: listDestination[index]
                                                  ['isLiked'],
                                              destinasi:
                                                  listDestination[index])));
                                },
                                highlightColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                child: CardTravel(
                                  image: listDestination[index]['image'],
                                  name: listDestination[index]['name'],
                                  location: listDestination[index]['location'],
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailDestinasi(
                                              isLiked:
                                                  listDestination[index + 1]
                                                          ['isLiked'] ??
                                                      false,
                                              destinasi:
                                                  listDestination[index + 1])));
                                },
                                highlightColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                child: CardTravel(
                                  image: listDestination[index + 1]['image'],
                                  name: listDestination[index + 1]['name'],
                                  location: listDestination[index + 1]
                                      ['location'],
                                ),
                              ),
                            ),
                          ],
                        );
                      } else {
                        return const SizedBox(height: 20);
                      }
                    }),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
