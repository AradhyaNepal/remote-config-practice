import 'package:flutter/material.dart';

///Everything is getter instead of a variable because these value
///must change as different value of BuildContext change
class ThemeManager{
  ThemeManager._();

  bool isDarkMode(BuildContext context){
    return Theme.of(context).is
  }
}