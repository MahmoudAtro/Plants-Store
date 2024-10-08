import 'package:flutter/material.dart';
import 'package:plantapp/Features/home/data/models/plants_model.dart';
import 'package:plantapp/constant.dart';

class CustomDetailsImages extends StatefulWidget {
  const CustomDetailsImages({super.key, required this.plant});
  final Plant plant;

  @override
  State<CustomDetailsImages> createState() => _CustomDetailsImagesState();
}

class _CustomDetailsImagesState extends State<CustomDetailsImages> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: height*0.35,
          child: PageView.builder(
              onPageChanged: (value) => setState(() {
                    currentIndex = value;
                  }),
              itemCount: 3,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Image.asset(widget.plant.image , width: width*0.15, height: height*0.15,);
              }),
        ),
        Positioned(
            bottom: 15,
            right: 100,
            child: Column(
                children: List.generate(
              3,
              (index) => AnimatedContainer(
                margin: const EdgeInsets.only(bottom: 5),
                width: 7,
                height: index == currentIndex ? 20 : 7,
                duration: const Duration(milliseconds: 200),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: index == currentIndex ? primaryColor : Colors.grey,
                ),
              ),
            )))
      ],
    );
  }
}
