import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:rest_api_demo/core/models/userModel.dart';

class ThemeProvider extends ChangeNotifier {
  changeTheme(BuildContext context) {
    // DynamicTheme.of(context).setBrightness(
    //   Theme.of(context).brightness == Brightness.dark ? Brightness.light : Brightness.dark,
    // );
  }
}
