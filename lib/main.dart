import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:travel_app/models/TransaksiModel.dart';
import 'package:travel_app/pages/AuthPage/LoginPage.dart';
import 'package:travel_app/pages/AuthPage/welcome.dart';
import 'package:travel_app/pages/MainPage/MainPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(TransaksimodelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      theme: ThemeData(
        fontFamily: 'PlusJakartaSans',
      ),
      home: const welcome(),
    );
  }
}
