import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:parking_app/utils/constants/sizes.dart';
import 'package:parking_app/utils/constants/text_strings.dart';
import 'package:parking_app/utils/constants/images.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../login/login.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed:()=> Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(pSizes.defaultSpace),
              child: Column(
                children: [
                  ///image
                  Image(
                    image: AssetImage(pImages.verification),
                    width: PHelperFunctions.screenWidth() * 0.6,
                  ),
                  const SizedBox(
                    height: pSizes.spaceBtwSections,
                  ),

                  ///Title & Subtitle
                  Text(
                    ptexts.changeYourPasswordTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: pSizes.spaceBtwItems,
                  ),
                  Text(
                    ptexts.changeYourPasswordSubTitle,
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
                      child: const Text(ptexts.done),
                    ),
                  ),
                  const SizedBox(
                    height: pSizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(onPressed: (){},child: const Text(ptexts.resendEmail),),
                  )
                  ///Title &subtitle

                  ///Button


                ],
              )
        ),
      ),
    );
  }
}
