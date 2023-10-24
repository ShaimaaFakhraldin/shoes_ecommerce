import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../config/routing/routes.dart';
import '../../../config/thems/app_colors.dart';
import '../model/onboard_data.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controllerSmoothPageIndicator =
      PageController(viewportFraction: 1.0, keepPage: true);
  int _currentIndex = 0;

  final List<OnBoardData> onBoardData = [
    OnBoardData(
        image: "assets/images/Onboard-1.png",
        title: "Start Journey With Nike",
        description: "Smart, Gorgeous & Fashionable Collection"),
    OnBoardData(
        image: "assets/images/Onboard-2.jpg",
        title: "Follow Latest Style Shoes",
        description:
            "There Are Many Beautiful And Attractive Plants To Your Room"),
    OnBoardData(
        image: "assets/images/Onboard-3.jpg",
        title: "Summer Shoes Nike 2022",
        description: "Amet Minim Lit Nodeseru Saku Nandu sit Alique Dolor"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // SizedBox(
            //     height: MediaQuery.of(context).size.height * .8,
            //     width: double.infinity,
            Expanded(
                child: PageView.builder(
                    pageSnapping: false,
                    controller: controllerSmoothPageIndicator,
                    itemCount: onBoardData.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    itemBuilder: (_, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Image.asset(
                            onBoardData[index].image,
                            fit: BoxFit.fill,
                            width: double.infinity,
                            height: double.infinity,
                          )),
                          Container(
                            margin: const EdgeInsetsDirectional.only(start: 20),
                            width: MediaQuery.of(context).size.width * .8,
                            child: Text(
                              onBoardData[index].title,
                              style: const TextStyle(fontSize: 40),
                            ),
                          ),
                          Container(
                              margin:
                                  const EdgeInsetsDirectional.only(start: 20),
                              child: Text(
                                onBoardData[index].description,
                                style: const TextStyle(
                                    fontSize: 20, color: Color(0xff707B81)),
                              )),
                        ],
                      );
                    })),
            Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmoothPageIndicator(
                        controller:
                            controllerSmoothPageIndicator, // PageController
                        count: onBoardData.length,
                        effect: ExpandingDotsEffect(
                          expansionFactor: 5,
                          offset: 8.0,
                          dotWidth: 8.0,
                          dotHeight: 6.0,
                          spacing: 8.0,
                          radius: 16.0,
                          paintStyle: PaintingStyle.fill,
                          strokeWidth: 1,
                          dotColor: const Color(0xFFE5EEF7),
                          activeDotColor: AppColors.primaryColor,
                        ), // your preferred effect
                        onDotClicked: (index) {}),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(105, 54),
                            backgroundColor: AppColors.primaryColor),
                        onPressed: () {
                          controllerSmoothPageIndicator.animateToPage(
                              controllerSmoothPageIndicator.page!.toInt() + 1,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeIn);
                          if (_currentIndex == 2) {
                            Navigator.pushNamed(context, Routes.signIn);
                          }
                        },
                        child: Text(
                          _currentIndex == 0 ? "Get Started" : "Next",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18),
                        )),
                  ],
                ))
          ],
        ));
  }

  withCarouselSlider() {
    return CarouselSlider(
      // carouselController: _controller,
      options: CarouselOptions(
          onPageChanged: (index, reson) {
            print("show");
            print(index);
            setState(() {
              // controllerSmoothPageIndicator.jumpToPage(index);
            });
          },
          height: MediaQuery.of(context).size.height * .8,
          viewportFraction: 1),
      items: onBoardData.map((item) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Image.asset(
              item.image,
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            )),
            Container(
              margin: const EdgeInsetsDirectional.only(start: 20),
              width: MediaQuery.of(context).size.width * .8,
              child: Text(
                item.title,
                style: const TextStyle(fontSize: 40),
              ),
            ),
            Container(
                margin: const EdgeInsetsDirectional.only(start: 20),
                child: Text(
                  item.description,
                  style: TextStyle(fontSize: 20, color: Color(0xff707B81)),
                )),
          ],
        );
      }).toList(),
    );
  }
}
