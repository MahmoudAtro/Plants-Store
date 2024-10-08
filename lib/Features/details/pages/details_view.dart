import 'package:flutter/material.dart';
import 'package:plantapp/Features/details/pages/widgets/custom_details_buttomsheet.dart';
import 'package:plantapp/Features/details/pages/widgets/details_view_body.dart';
import 'package:plantapp/Features/home/data/models/plants_model.dart';
import 'package:plantapp/constant.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.plant});
  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myBackgroundColor,
        body: SafeArea(
            child: DetailsViewBody(
          plant: plant,
        )),
        bottomSheet: CustomDetailsButtomsheet(
          plant: plant,
        ));
  }
}
