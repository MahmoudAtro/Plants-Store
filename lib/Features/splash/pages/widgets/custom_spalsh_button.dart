import 'package:flutter/material.dart';
import 'package:plantapp/Core/utils/palntmodel.dart';
import 'package:plantapp/Features/home/pages/home_view.dart';
import 'package:plantapp/constant.dart';

class CustomSpalshButton extends StatelessWidget {
  const CustomSpalshButton({super.key, required this.controller, required this.currentIndex});
  final PageController controller;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Center(
      child: InkWell(
        onTap: () {
          if (currentIndex == plants.length - 1) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => const HomeView(),
                ));
          } else {
            controller.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          }
        },
        child: CircleAvatar(
          backgroundColor: primaryColor,
          radius: height*0.04,
          child: Icon(
            Icons.arrow_forward,
            color: Colors.white,
            size: height*0.045,
          ),
        ),
      ),
    );
  }
}
