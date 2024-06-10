import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class StarRate extends StatelessWidget {
  final String rate;
  const StarRate({
    super.key,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
        ),
        const SizedBox(width: 5),
        Text(rate,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
