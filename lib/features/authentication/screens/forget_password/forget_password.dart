import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parking_app/features/authentication/screens/forget_password/reset%20Password.dart';
import 'package:parking_app/utils/constants/sizes.dart';
import 'package:parking_app/utils/constants/text_strings.dart';
import 'package:parking_app/utils/theme/custom_themes/text_theme.dart';
class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Padding(
        padding: EdgeInsets.all(pSizes.defaultSpace),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Heading
              Text(ptexts.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: pSizes.spaceBtwItems),
              Text(ptexts.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,),
              const SizedBox(height: pSizes.spaceBtwSections*2),
              ///Text Field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: ptexts.email,
                  prefixIcon: Icon(Iconsax.direct_right)
                ),
              ),
              ///Submit
              const SizedBox(height: pSizes.spaceBtwSections,),
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()=>Get.to(()=>const ResetPassword()), child: const Text(ptexts.submit))),
            ],
          ),
        ),
      ),
    );
  }
}