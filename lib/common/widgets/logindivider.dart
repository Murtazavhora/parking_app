import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking_app/utils/constants/colors.dart';
import 'package:parking_app/utils/constants/text_strings.dart';
class pFormDivider extends StatelessWidget {
  const pFormDivider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Flexible(child: Divider(color: dark ? pColors.darkerGrey : pColors.grey,thickness: 1, indent: 60,endIndent: 5,)),
        Text(ptexts.orSignInWith.capitalize!,style: Theme.of(context).textTheme.labelMedium,),
        Flexible(child: Divider(color: dark ? pColors.darkerGrey : pColors.grey,thickness: 1, indent: 60,endIndent: 5,)),
      ],
    );
  }
}