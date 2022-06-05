import 'package:donate_app/constants/colors/constant_colors.dart';
import 'package:flutter/material.dart';

class OnBoardComponents extends StatelessWidget {
  final String title, description, image;
  const OnBoardComponents(
      {Key? key,
      required this.title,
      required this.description,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ConstantColors.bgColor,
      child: Column(
        children: [
          const SizedBox(height: 180),
          Image.asset(
            image,
            height: 400,
            width: 400,
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              description,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class OnBoradingButton extends StatelessWidget {
  const OnBoradingButton({
    Key? key,
    required PageController pageController, 
  }) : _pageController = pageController, super(key: key);

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 90,
      right: 41,
      child: Container(
        height: 60,
        width: 60,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: GestureDetector(
          onTap: () => _pageController.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.ease,
          ),
          child: const Icon(Icons.arrow_right, size: 60),
        ),
      ),
    );
  }
}