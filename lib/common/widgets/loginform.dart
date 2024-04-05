import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parking_app/features/authentication/screens/forget_password/forget_password.dart';
import 'package:parking_app/features/authentication/screens/signup/signup.dart';
import 'package:parking_app/utils/constants/text_strings.dart';
import 'package:parking_app/utils/constants/sizes.dart';
class pLoginform extends StatelessWidget {
  const pLoginform({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: pSizes.spaceBtwSections),
        child: Column (
          children: [
            /// Email
            TextFormField(
              decoration: const InputDecoration (prefixIcon: Icon(Iconsax.direct_right), labelText: ptexts.email),
            ), // TextFormField
            const SizedBox(height: pSizes.spaceBtwInputFields),
            /// Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon (Iconsax.password_check),
                labelText:ptexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ), // InputDecoration
            ), //TextFormField
            const SizedBox(height: pSizes.spaceBtwInputFields/2),
            /// Remember Me & Forget Password I
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value){}),
                    const Text(ptexts.rememberMe),
                  ],
                ),
                TextButton(onPressed: ()=>Get.to(()=>ForgetPassword()), child: const Text(ptexts.forgetPassword))

                ///forgot password
              ],
            ),
            const SizedBox(height: pSizes.spaceBtwSections,),

            ///Sign in button
            SizedBox(width: double.maxFinite, child: ElevatedButton(onPressed: (){} , child: Text(ptexts.signIn))),
            const SizedBox(height: pSizes.buttonElevation,),

            ///create account button
            SizedBox(width: double.infinity, child: OutlinedButton(onPressed:  ()=>Get.to(()=>const SignupScreen()), child: Text(ptexts.createAccount))),
            const SizedBox(height: pSizes.spaceBtwItems,),
          ],// Padding
        ),
      ),
    );
  }
}