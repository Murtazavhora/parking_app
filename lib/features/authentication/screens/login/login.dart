import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parking_app/common/styles/spacing_styles.dart';
import 'package:parking_app/utils/constants/sizes.dart';
import 'package:parking_app/utils/constants/images.dart';
import 'package:parking_app/utils/constants/text_strings.dart';
import 'package:parking_app/utils/helpers/helper_functions.dart';
import 'package:parking_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:parking_app/utils/constants/colors.dart';
import 'package:parking_app/common/widgets/logindivider.dart';
import 'package:parking_app/common/widgets/loginform.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = PHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: PSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-Title
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? pImages.darkAppLogo : pImages.darkAppLogo),
                  ), // Image
                  Text(ptexts.loginTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: pSizes.sm),
                  Text(ptexts.loginSubTitle,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              const pLoginform(),
              //divider
              pFormDivider(dark: dark),

              //footer
              const loginfooter()
            ],
          ),
        ),
      ), // SingleChildScrollView
    ); // Scaffold
  }
}

class loginfooter extends StatelessWidget {
  const loginfooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: pColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
                width: pSizes.iconMd,
                height: pSizes.iconMd,
                image: AssetImage(pImages.google)),
          ),
        ),
        const SizedBox(width: pSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: pColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
                width: pSizes.iconMd,
                height: pSizes.iconMd,
                image: AssetImage(pImages.facebook)),
          ),
        ),
      ],
    );
  }
}
