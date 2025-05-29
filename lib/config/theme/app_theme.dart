 import 'package:flutter/material.dart';
  const colorList   = [
      Colors.red,
      Colors.blue,
      Colors.orange,
      Colors.green,
      Colors.deepOrange,
      Colors.deepPurple,
      Color.fromARGB(255, 81, 171, 91),
      Color.fromARGB(255, 54, 70, 220)

];

class AppTheme {

final int selecteColor;
final bool isDarkMode;

  AppTheme(
     {
      this.isDarkMode =false,
     this.selecteColor=0
  }): assert( selecteColor >=0,'Selected color must be great than 0'),
  assert(selecteColor < colorList.length, 'Select color between 0 and ${colorList.length}');

  ThemeData getTheme() =>ThemeData(

    brightness: isDarkMode? Brightness.dark:Brightness.light,
    colorSchemeSeed: colorList[selecteColor],
    appBarTheme: const AppBarTheme(
      centerTitle: true
    )
  );


  AppTheme copyWith({
    int? selecteColor,
    bool? isDarkMode}
  ) =>AppTheme(
    selecteColor: selecteColor ?? this.selecteColor,
    isDarkMode: isDarkMode ?? this.isDarkMode,
  );

}