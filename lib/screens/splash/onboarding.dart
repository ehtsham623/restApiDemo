import 'package:flutter/material.dart';
import 'package:rest_api_demo/config/ps_colors.dart';
import 'package:rest_api_demo/config/ps_theme_data.dart';
import 'package:rest_api_demo/constants/labels.dart';
import 'package:rest_api_demo/constants/route_paths.dart';
import 'package:rest_api_demo/constants/ui_settings.dart';
import 'package:rest_api_demo/core/models/onboardingModel.dart';
import 'package:rest_api_demo/screens/shared/drawer/mDrawer.dart';
import 'package:rest_api_demo/screens/shared/mButton.dart';

class OnBoarding extends StatefulWidget {
  static const route = 'Onboarding';

  const OnBoarding({Key? key}) : super(key: key);
  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentIndex = 0;
  PageController? controller;
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    controller = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    controller?.dispose();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          contents[currentIndex].title,
          style: Theme.of(context).textTheme.bodyText1!,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  currentIndex = index;
                  setState(() {});
                },
                itemBuilder: (context, index) {
                  return Center(
                    child: Image.asset(
                      contents[currentIndex].image,
                      width: 200,
                      color: PsColors.mainDarkColor,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: mainPadding),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: subPadding),
              child: Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.10,
                  width: MediaQuery.of(context).size.width * 0.70,
                  child: Text(
                    contents[currentIndex].description,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 26),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: mainPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: List.generate(
                        contents.length,
                        (index) => Padding(
                              padding: const EdgeInsets.all(2),
                              child: slidersScroe(context, currentIndex == index ? true : false),
                            )),
                  ),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 120),
                    child: MButton(
                      bgColor: PsColors.backgroundColor,
                      textColor: PsColors.textPrimaryColor,
                      borderColor: PsColors.borderColor,
                      text: currentIndex == contents.length - 1 ? Label.continu : "Skip",
                      onClick: () {
                        Theme.of(context);
                        if (currentIndex == contents.length - 1) {
                          Navigator.pushNamedAndRemoveUntil(context, RoutePaths.home, (route) => false);
                        }
                        controller?.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.ease);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: const MDrawer(),
    );
  }

  Widget slidersScroe(BuildContext context, bool isSelected) {
    return AnimatedContainer(
      width: isSelected ? 28 : 6,
      height: 6,
      duration: const Duration(milliseconds: 400),
      decoration: isSelected
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [PsColors.mainColor!, PsColors.mainColor!],
              ),
            )
          : BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [PsColors.grey!, PsColors.grey!],
              ),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: PsColors.grey!, width: 1),
            ),
    );
  }
}
