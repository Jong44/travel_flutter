import 'package:flutter/material.dart';

class TextFieldMain extends StatelessWidget {
  final String placeholder;
  TextFieldMain({super.key, required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Color.fromARGB(54, 208, 208, 215),
          borderRadius: BorderRadius.circular(15)),
      child: TextField(
        decoration:
            InputDecoration(border: InputBorder.none, hintText: placeholder),
      ),
    );
  }
}
