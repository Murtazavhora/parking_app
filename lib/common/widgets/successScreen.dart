import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:parking_app/common/styles/spacing_styles.dart';
import 'package:parking_app/features/authentication/screens/login/login.dart';
import 'package:parking_app/utils/constants/sizes.dart';
import 'package:parking_app/utils/constants/images.dart';
import 'package:parking_app/utils/constants/text_strings.dart';

import '../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: PSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              ///Image
              Image(
                image: AssetImage(pImages.verification),
                width: PHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: pSizes.spaceBtwSections,
              ),

              ///Title & Subtitle
              Text(
                ptexts.yourAccountCreatedTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: pSizes.spaceBtwItems,
              ),
              Text(
                ptexts.yourAccountCreatedSubTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: pSizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const LoginScreen()),
                  child: const Text(ptexts.tContinue),
                ),
              ),
              const SizedBox(
                height: pSizes.spaceBtwSections,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
