import 'package:blood_bank/core/resources/resources.dart';
import 'package:blood_bank/presentation/bloc/startup_bloc/startup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final List<Map<String, String>> onboardingData = [
    {
      'title': 'Request Blood',
      'description':
          'Request blood in emergency case. We will manage you blood.',
      'image': 'assets/images/onboarding1.svg'
    },
    {
      'title': 'Donate Blood',
      'description': 'Keep record of your blood donation.',
      'image': 'assets/images/onboarding1.svg',
    },
    {
      'title': 'Blood Storage',
      'description': 'Get information about the blood available.',
      'image': 'assets/images/onboarding1.svg',
    },
  ];

  int index = 0;
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: onboardingData.length,
        onPageChanged: (val) {
          setState(() {
            index = val;
          });
        },
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: size.height * 0.3,
                child: SvgPicture.asset(
                  onboardingData[index]['image']!,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  Text(
                    onboardingData[index]['title']!,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColor.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      onboardingData[index]['description']!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        color: AppColor.secondaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 80),
                ],
              )
            ],
          );
        },
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        height: buttonHeight,
        width: size.width,
        color: AppColor.white,
        child: index == onboardingData.length - 1
            ? ElevatedButton(
                onPressed: () {
                  context.read<StartupBloc>().add(GetStartedOnboarding());
                },
                child: const Text("Get Started"),
              )
            : Center(
                child: SmoothPageIndicator(
                    controller: _pageController, // PageController
                    count: onboardingData.length,
                    effect: const WormEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      dotColor: AppColor.grey,
                      activeDotColor: AppColor.primaryColor,
                    ), // your preferred effect
                    onDotClicked: (index) {}),
              ),
      ),
    );
  }
}
