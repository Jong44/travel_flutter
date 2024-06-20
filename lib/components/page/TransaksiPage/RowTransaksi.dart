import 'package:flutter/material.dart';

class RowTransaksi extends StatelessWidget {
  final String title;
  final String content;
  const RowTransaksi({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[500]!,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          content,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
