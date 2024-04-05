import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:parking_app/common/widgets/successScreen.dart';
import 'package:parking_app/features/authentication/screens/login/login.dart';
import 'package:parking_app/utils/constants/images.dart';
import 'package:parking_app/utils/constants/sizes.dart';
import 'package:parking_app/utils/constants/text_strings.dart';
import 'package:parking_app/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(pSizes.defaultSpace),
          child: Column(
            children: [
              ///Image
              Image(
                image: AssetImage(pImages.verification),
                width: PHelperFunctions.screenWidth() * 0.6,
              ),
              const  SizedBox(height: pSizes.spaceBtwSections,),

              ///Title & Subtitle
              Text(
                ptexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: pSizes.spaceBtwItems,
              ),
              Text(
                ptexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: pSizes.spaceBtwSections,
              ),



              ///Buttons
SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(()=>const SuccessScreen()),child: const Text(ptexts.tContinue),),),
              const SizedBox(
                height: pSizes.spaceBtwSections,
              ),
              SizedBox(width: double.infinity,child: TextButton(onPressed: (){},child: const Text(ptexts.resendEmail),),),

            ],
          ),
        ),
      ),
    );
  }
}
