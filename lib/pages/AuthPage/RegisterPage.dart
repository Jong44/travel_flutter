import 'package:flutter/material.dart';
import 'package:travel_app/components/global/TextFieldMain.dart';
import 'package:travel_app/config/ColorConfig.dart';
import 'package:travel_app/pages/AuthPage/LoginPage.dart';
import 'package:travel_app/pages/MainPage/MainPage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 90,
              ),
              Text(
                "Welcome To",
                style: TextStyle(fontSize: 29, fontWeight: FontWeight.w400),
              ),
              Text(
                "Hello Trip",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 29),
              ),
              SizedBox(
                height: 90,
              ),
              Text(
                "Create Account",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
              ),
              SizedBox(
                height: 7,
              ),
              TextFieldMain(placeholder: "Name"),
              SizedBox(
                height: 10,
              ),
              TextFieldMain(placeholder: "Email"),
              SizedBox(
                height: 10,
              ),
              TextFieldMain(placeholder: "Password"),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainPage()));
                },
                child: Text(
                  "Create Account",
                  style: TextStyle(
                      color: Color(0xffffffff), fontWeight: FontWeight.w700),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    minimumSize: Size(double.infinity, 50),
                    backgroundColor: ColorConfig.primaryColor),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Already Have an Account?",
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ),
              Center(
                child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(
                      "Log In From Here",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
