import 'package:donate_app/constants/colors/constant_colors.dart';
import 'package:donate_app/screens/login_screen.dart';
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
            height: 350,
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
            padding: const EdgeInsets.symmetric(horizontal: 24),
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

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({
    Key? key,
    required this.lastPage,
    required PageController pageController,
  })  : _pageController = pageController,
        super(key: key);

  final bool lastPage;
  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 90,
      right: 41,
      child: lastPage
          ? Container(
              height: 60,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: GestureDetector(
                onTap: () => _pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                ),
                child: GestureDetector(
                  onTap: () async {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const LoginScreen()));

                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const LoginScreen()));
                  },
                  child: Row(
                    children: const [
                      Text(
                        ' Lets get started          ',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 32,
                            wordSpacing: 2),
                        overflow: TextOverflow.clip,
                      ),
                      Icon(
                        Icons.forward_sharp,
                        size: 40,
                      )
                    ],
                  ),
                ),
              ),
            )
          : Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: GestureDetector(
                onTap: () => _pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                ),
                child: const Icon(Icons.arrow_right, size: 60),
              ),
            ),
    );
  }
}
