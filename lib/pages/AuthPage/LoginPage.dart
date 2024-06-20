import 'package:flutter/material.dart';
import 'package:travel_app/components/global/TextFieldMain.dart';
import 'package:travel_app/config/ColorConfig.dart';
import 'package:travel_app/pages/AuthPage/RegisterPage.dart';
import 'package:travel_app/pages/MainPage/MainPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 90,
              ),
              Row(
                children: [
                  Text(
                    "Welcome Back To",
                    style: TextStyle(fontSize: 29, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Hello Trip.",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 29),
                  )
                ],
              ),
              SizedBox(
                height: 110,
              ),
              Text(
                "Log In",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
              ),
              SizedBox(
                height: 7,
              ),
              TextFieldMain(placeholder: "Email"),
              SizedBox(
                height: 10,
              ),
              TextFieldMain(placeholder: "Password"),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot your password?",
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w300,
                            fontSize: 13),
                      ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainPage()));
                },
                child: Text(
                  "Log In",
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
                  "Don't have an account?",
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ),
              Center(
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                    child: Text(
                      "Create Account From Here",
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
