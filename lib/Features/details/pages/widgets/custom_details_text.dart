import 'package:flutter/material.dart';

class CustomDetailsText extends StatelessWidget {
  const CustomDetailsText({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: width*0.08,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: height*0.01,
          ),
          const Text(
            "plants make your life with minimal and happy love the plan more and enjoy life",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.black54,
              letterSpacing: -.5,
            ),
          )
        ],
      ),
    );
  }
}
