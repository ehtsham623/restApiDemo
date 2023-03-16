import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rest_api_demo/config/ps_colors.dart';
import 'package:rest_api_demo/config/ps_theme_data.dart';
import 'package:rest_api_demo/config/router.dart' as router;
import 'package:rest_api_demo/core/providers/homeProvider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    PsColors.loadColor(true);
    return DynamicTheme(
      defaultThemeMode: ThemeMode.system,
      loadThemeOnStart: true,
      data: (mode) {
        if (mode == ThemeMode.light) {
          return themeData(ThemeData.light());
        } else {
          return themeData(ThemeData.dark());
        }
      },
      themedWidgetBuilder: (BuildContext context, ThemeMode mode, ThemeData? theme) {
        return MaterialApp(
          themeMode: mode,
          debugShowCheckedModeBanner: false,
          title: 'Rest api demo',
          theme: theme,
          initialRoute: '/',
          onGenerateRoute: router.generateRoute,
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: child!,
            );
          },
        );
      },
    );
  }
}
