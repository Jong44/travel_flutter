import 'package:flutter/material.dart';
import 'package:travel_app/components/global/TextFieldMain.dart';
import 'package:travel_app/config/ColorConfig.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text('Profile'),
            backgroundColor: ColorConfig.primaryColor),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Center(
                  child: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    image: DecorationImage(
                      image: AssetImage("assets/images/profile.jpg"),
                      fit: BoxFit.fill,
                    )),
              )),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  "Edit Image",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(184, 238, 234, 234),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      prefixIconColor: ColorConfig.primaryColor,
                      hintText: "tysonfurry@gmail.com",
                      hintStyle: TextStyle(fontWeight: FontWeight.w700),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(184, 238, 234, 234),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.supervised_user_circle_outlined),
                      prefixIconColor: ColorConfig.primaryColor,
                      hintText: "Naufal Gacoan",
                      hintStyle: TextStyle(fontWeight: FontWeight.w700),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(height: 50),
              Text("Change Password"),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(184, 238, 234, 234),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Enter old password",
                      hintStyle: TextStyle(fontWeight: FontWeight.w400),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(184, 238, 234, 234),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Enter new password",
                      hintStyle: TextStyle(fontWeight: FontWeight.w400),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {},
                child: Text("Save",
                    style: TextStyle(
                        color: Color(0xffffffff), fontWeight: FontWeight.w700)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConfig.primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    minimumSize: Size(double.infinity, 45)),
              )
            ],
          ),
        ));
  }
}
