import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:parking_app/features/authentication/screens/signup/verify_email.dart';
import 'package:parking_app/utils/constants/sizes.dart';
import 'package:parking_app/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(pSizes.defaultSpace),
          child: Column(
            children: [
              //Title
              Text(
                ptexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: pSizes.spaceBtwSections,
              ),
              //Form
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                                labelText: ptexts.firstName,
                                prefixIcon: Icon(Iconsax.user)),
                          ),
                        ),
                        const SizedBox(
                          width: pSizes.spaceBtwInputFields,
                        ),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                                labelText: ptexts.lastName,
                                prefixIcon: Icon(Iconsax.user)),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: pSizes.spaceBtwInputFields,
                    ),
                    //Username
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: ptexts.username,
                          prefixIcon: Icon(Iconsax.user)),
                    ),
                    const SizedBox(
                      height: pSizes.spaceBtwInputFields,
                    ),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: ptexts.email,
                          prefixIcon: Icon(Iconsax.message)),
                    ),
                    const SizedBox(
                      height: pSizes.spaceBtwInputFields,
                    ),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: ptexts.phoneNo,
                          prefixIcon: Icon(Iconsax.call)),
                    ),
                    const SizedBox(
                      height: pSizes.spaceBtwInputFields,
                    ),

                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: ptexts.password,
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),
                    const SizedBox(
                      height: pSizes.spaceBtwSections,
                    ),

                    ///SIGN UP BUTTON
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () =>Get.to(()=>const VerifyEmailScreen()),
                          child: const Text(ptexts.createAccount)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
