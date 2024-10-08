import 'package:flutter/material.dart';
import 'package:plantapp/Features/home/pages/widgets/Custom_home_appbar.dart';
import 'package:plantapp/Features/home/pages/widgets/custom_home_list.dart';
import 'package:plantapp/Features/home/pages/widgets/custom_home_search.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
            CustomHomeAppbar(),
            CustomHomeSearch(),
            CustomHomeList(),
        ],
      ),
    );
  }
}