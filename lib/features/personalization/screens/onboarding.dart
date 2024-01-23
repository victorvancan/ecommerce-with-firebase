import 'package:ecommerce/features/personalization/controllers/onboarding_controller.dart';
import 'package:ecommerce/features/personalization/screens/onboarding/widgets/on_boarding_next_button.dart';
import 'package:ecommerce/features/personalization/screens/onboarding/widgets/onboarding_dots_navigation.dart';
import 'package:ecommerce/features/personalization/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce/features/personalization/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

@override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTittle1,
                subTitle: TTexts.onBoardingSubTittle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTittle2,
                subTitle: TTexts.onBoardingSubTittle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTittle3,
                subTitle: TTexts.onBoardingSubTittle3,
              ),
            ],
          ),
          // skip button
          OnBoardingSkip(),
          // dot navigation SmoothPageIndicator
          OnBoardingDotNavigartion(),

          ///circular button
          OnBoardingNextButton(),
        ],
      ),
    );
  }

}


