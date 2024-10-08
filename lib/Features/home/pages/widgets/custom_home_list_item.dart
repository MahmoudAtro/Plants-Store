import 'package:flutter/material.dart';
import 'package:plantapp/Features/details/pages/details_view.dart';
import 'package:plantapp/Features/home/data/models/plants_model.dart';

class CustomHomeListItem extends StatelessWidget {
  const CustomHomeListItem({super.key, required this.plant});
  final Plant plant;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailsView(plant: plant,),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
        ),
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(plant.image),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              plant.name,
              style: TextStyle(
                fontSize: width*0.04,
                fontWeight: FontWeight.bold,
                letterSpacing: -1,
              ),
            ),
            plant.category != null
                ? Text(
                    plant.category!,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  )
                : const SizedBox(
                    height: 20,
                  ),
            Row(
              children: [
                Text(
                  "\$${plant.price}",
                  style: TextStyle(
                    fontSize: width*0.042,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -1,
                  ),
                ),
                const Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: width*0.04,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: width*0.05,
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
