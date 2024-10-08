import 'package:flutter/material.dart';
import 'package:plantapp/Core/utils/palntmodel.dart';
import 'package:plantapp/Features/home/pages/home_view.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.currentIndex});
  final int? currentIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (currentIndex! < plants.length - 1)
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.grey.shade800,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const HomeView(),
                    ));
              },
              child: const Text(
                "Skip",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
        ],
      ),
    );
  }
}
