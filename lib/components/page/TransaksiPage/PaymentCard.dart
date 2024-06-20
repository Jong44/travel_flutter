import 'package:flutter/material.dart';
import 'package:travel_app/config/ColorConfig.dart';

class CardPayment extends StatelessWidget {
  final String name;
  final String icon;
  final bool isSelected;
  const CardPayment(
      {super.key,
      required this.name,
      required this.icon,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
            color: isSelected ? ColorConfig.primaryColor : Colors.grey[400]!),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color:
                    isSelected ? ColorConfig.primaryColor : Colors.grey[400]!,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    isSelected ? ColorConfig.primaryColor : Colors.grey[400]!,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Image.asset(
              icon,
              width: 50,
              height: 50,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
