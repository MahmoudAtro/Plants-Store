import 'package:flutter/material.dart';

class CustomDetailsPlantInfo extends StatelessWidget {
  const CustomDetailsPlantInfo(
      {super.key, required this.icon, required this.name, required this.value});
  final IconData icon;
  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 45,
          color: Colors.white,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          name,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey.shade200,
          ),
        )
      ],
    );
  }
}
