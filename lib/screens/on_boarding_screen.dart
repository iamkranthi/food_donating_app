import 'package:donate_app/constants/colors/constant_colors.dart';
import 'package:donate_app/screens/widgets/onboard_components.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController _pageController = PageController();
  bool lastPage = false;
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => lastPage = index == 2);
            },
            children: [
              Container(
                color: ConstantColors.bgColor,
                child: const OnBoardComponents(
                  color: Colors.transparent,
                  title: 'Main\tMotto',
                  description: 'Eat local Give local',
                  image: 'assets/onboarding/onboard_1.png',
                ),
              ),
              Container(
                color: ConstantColors.bgColor,
                child: const OnBoardComponents(
                  color: Colors.transparent,
                  title: 'What We DO',
                  description: 'Erat nonumy no lorem diam ea, magna accusam vero invidunt kasd justo sit elitr, est diam at dolore et et.',
                  image: 'assets/onboarding/onbooard_3.png',
                ),
              ),
              Container(
                color: ConstantColors.bgColor,
                child: const OnBoardComponents(
                  color: Colors.transparent,
                    title: 'title',
                    description: 'Eirmod diam erat sadipscing sadipscing sed amet. Gubergren amet invidunt sea eirmod kasd dolor accusam duo et, diam dolor sit.',
                    image: 'assets/onboarding/onboard_2.png'),
              ),
            ],
          ),
       OnBoardingButton(lastPage: lastPage, pageController: _pageController),
        ],
      ),
    );
  }
}