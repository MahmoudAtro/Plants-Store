import 'package:flutter/material.dart';
import 'package:plantapp/Features/home/pages/widgets/home_view_body.dart';
import 'package:plantapp/constant.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: myBackgroundColor,
        body: SafeArea(
          child: HomeViewBody(),
        ));
  }
}
