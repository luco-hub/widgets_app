 import 'package:flutter/material.dart';
  const colorList   = [
      Colors.red,
      Colors.blue,
      Colors.orange,
      Colors.green,
      Colors.indigo

];

class AppTheme {

final int selecteColor;

  AppTheme({
     this.selecteColor=0
  }): assert( selecteColor >=0,'Selected color must be great than 0'),
  assert(selecteColor < colorList.length, 'Select color between 0 and ${colorList.length}');

  ThemeData getTheme() =>ThemeData(
    colorSchemeSeed: colorList[selecteColor],
    appBarTheme: const AppBarTheme(
      centerTitle: true
    )
  );

}