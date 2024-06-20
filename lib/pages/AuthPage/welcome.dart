import 'package:flutter/material.dart';
import 'package:travel_app/config/ColorConfig.dart';
import 'package:travel_app/pages/AuthPage/LoginPage.dart';
import 'package:travel_app/pages/AuthPage/RegisterPage.dart';

class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 130,
            ),
            Center(
                child: Container(
              width: 230,
              height: 230,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                  image: DecorationImage(
                      image: AssetImage("assets/images/pesawat.png"))),
            )),
            SizedBox(
              height: 50,
            ),
            Text(
              "Let's Travel Indonesian With Us",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            ),
            Text("Go to every city, take pictures and be happy!"),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text(
                "Log In",
                style: TextStyle(
                    color: Color(0xffffffff), fontWeight: FontWeight.w700),
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  minimumSize: Size(double.infinity, 45),
                  backgroundColor: ColorConfig.primaryColor),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterPage()));
              },
              child: Text(
                "Create Account",
                style: TextStyle(color: ColorConfig.primaryColor),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffffffff),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  minimumSize: Size(double.infinity, 45)),
            )
          ],
        ),
      ),
    );
  }
}
