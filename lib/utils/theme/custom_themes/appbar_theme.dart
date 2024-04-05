import 'package:flutter/material.dart';
class pAppbarTheme{
  pAppbarTheme._();
  static const lightAppBartheme=AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    surfaceTintColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black,size: 24),
    titleTextStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),
  );
  static const darkAppbarTheme=AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    surfaceTintColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black,size: 24),
    titleTextStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white),
  );
}