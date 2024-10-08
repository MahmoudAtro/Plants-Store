import 'package:flutter/material.dart';
import 'package:plantapp/Features/details/pages/widgets/Custom_details_appbar.dart';
import 'package:plantapp/Features/details/pages/widgets/custom_details_text.dart';
import 'package:plantapp/Features/home/data/models/plants_model.dart';
import 'package:plantapp/Features/home/pages/widgets/custom_details_images.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.plant});
  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomDetailsAppbar(),
        CustomDetailsImages(plant: plant),
        const SizedBox(
          height: 20,
        ),
        CustomDetailsText(name: plant.name),
      ],
    );
  }
}
