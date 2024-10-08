import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:plantapp/Features/home/data/models/plants_model.dart';
import 'package:plantapp/Features/home/pages/widgets/custom_home_list_item.dart';

class CustomHomeList extends StatelessWidget {
  const CustomHomeList({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return MasonryGridView(
      padding: const EdgeInsets.all(25),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 25,
      crossAxisSpacing: 25,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      children: [
        Text(
          "Found \n10 Results",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: width*0.07,
            height: 1.1,
          ),
        ),
        for (var plant in plants)
        CustomHomeListItem(plant: plant)
           ],
    );
  }
}
