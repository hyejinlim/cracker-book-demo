import 'package:flutter/material.dart';

import 'config/constant.dart';

ThemeData themeData(BuildContext context) {
  return ThemeData(
    primaryColor: PRIMARY_COLOR,
    scaffoldBackgroundColor: SCAFFOLD_COLOR,
    splashColor: Colors.transparent, // remove bottom navigation effect
    highlightColor: Colors.transparent, // remove bottom navigation effect
  );
}
