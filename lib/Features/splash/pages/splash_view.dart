import 'package:flutter/material.dart';
import 'package:plantapp/Core/utils/palntmodel.dart';
import 'package:plantapp/Features/splash/pages/widgets/Custom_app_bar.dart';
import 'package:plantapp/Features/splash/pages/widgets/custom_spalsh_button.dart';
import 'package:plantapp/constant.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late PageController controller;
  late int currentIndex;

  @override
  void initState() {
    controller = PageController(initialPage: 0);
    currentIndex = 0;
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              currentIndex: currentIndex,
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              // mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: height * 0.71,
                  child: PageView.builder(
                      onPageChanged: (value) => setState(
                            () {
                              currentIndex = value;
                            },
                          ),
                      controller: controller,
                      itemCount: plants.length,
                      itemBuilder: (_, index) {
                        return Column(
                          children: [
                            Image.asset(
                              plants[index].image,
                              fit: BoxFit.fitHeight,
                              height: height * 0.4,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                                // mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  plants.length,
                                  (index) => AnimatedContainer(
                                    duration: const Duration(
                                      milliseconds: 300,
                                    ),
                                    margin: const EdgeInsets.only(right: 4),
                                    width: index == currentIndex ? 18 : 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: index == currentIndex
                                          ? primaryColor
                                          : Colors.grey.shade400,
                                    ),
                                  ),
                                )),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: plants[index].title,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: width * 0.1,
                                          fontWeight: FontWeight.w300,
                                        )),
                                    TextSpan(
                                        text: " Plants",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: width * 0.1,
                                          fontWeight: FontWeight.w600,
                                        )),
                                  ])),
                            ),
                          ],
                        );
                      }),
                ),
                CustomSpalshButton(
                  controller: controller,
                  currentIndex: currentIndex,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
