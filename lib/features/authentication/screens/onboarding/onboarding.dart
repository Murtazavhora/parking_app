import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking_app/features/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:parking_app/utils/constants/images.dart';
import 'package:parking_app/utils/constants/sizes.dart';
import 'package:parking_app/utils/helpers/helper_functions.dart';
import 'package:parking_app/utils/constants/text_strings.dart';
import 'package:parking_app/utils/device/device_utility.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../login/login.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pagecontroller,
            children: const [
              OnBoardingpage(
                image: pImages.onBoardingImage1,
                title: ptexts.onBoardingTitle1,
                subtitle: ptexts.onBoardingSubTitle1,
                subtitle2: ptexts.onBoardingSubTitle2,
              ),
            ],
          ),
          Positioned(
            bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
            right: pSizes.defaultSpace,
            child: ElevatedButton(
                onPressed: () {
                  Get.offAll(() => const LoginScreen());
                },
              style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor: Colors.blue,shadowColor: Colors.black),
              child: const Icon(Iconsax.arrow_right_2),
            ),
          ),
        ],
      ),
    );
  }
}

class OnBoardingpage extends StatelessWidget {
  const OnBoardingpage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.subtitle2,
  });
  final String image, title, subtitle, subtitle2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(pSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: PHelperFunctions.screenWidth() * 0.8,
            height: PHelperFunctions.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(title,
              style:Theme
                  .of(context)
                  .textTheme
                  .headlineMedium,
              textAlign: TextAlign.center),
          const SizedBox(height: pSizes.spaceBtwItems,),
          Text(
            subtitle,
            style: Theme
                .of(context)
                .textTheme
                .bodyMedium,
            textAlign: TextAlign.center,
          ),
          Text(
            subtitle2,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold, // Make the text bold
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: pSizes.spaceBtwItems,),

        ],
      ),
    );
  }
}