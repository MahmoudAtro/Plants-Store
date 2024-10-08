import 'package:flutter/material.dart';
import 'package:plantapp/Features/details/pages/widgets/custom_details_plant_info.dart';
import 'package:plantapp/Features/home/data/models/plants_model.dart';
import 'package:plantapp/constant.dart';

class CustomDetailsButtomsheet extends StatelessWidget {
  const CustomDetailsButtomsheet({super.key, required this.plant});
  final Plant plant;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        height: height*0.32,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        decoration: const BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(40),
            )),
        child: Column(
          children: [
            // icon details
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomDetailsPlantInfo(
                  icon: Icons.height,
                  name: "Hieght",
                  value: plant.height,
                ),
                CustomDetailsPlantInfo(
                  icon: Icons.device_thermostat,
                  name: "Temparature",
                  value: plant.temparature,
                ),
                CustomDetailsPlantInfo(
                  icon: Icons.yard_outlined,
                  name: "Pot",
                  value: plant.pot,
                ),
              ],
            ),
            SizedBox(
              height: height*0.03,
            ),
            // price and add to cart
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Price",
                      style: TextStyle(
                        fontSize: height*0.02,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        letterSpacing: 0.5,
                      ),
                    ),
                    Text(
                      "\$${plant.price}",
                      style: TextStyle(
                        fontSize: height*0.025,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        height: 1,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: height*0.09,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  decoration: BoxDecoration(
                    color: cartButtonColor,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text(
                    "Add To Cart",
                    style: TextStyle(
                      fontSize: height*0.02,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
