import 'package:flutter/material.dart';
import 'package:rest_api_demo/config/ps_colors.dart';
import 'package:rest_api_demo/constants/labels.dart';
import 'package:rest_api_demo/constants/route_paths.dart';
import 'package:rest_api_demo/constants/ui_settings.dart';

class Splash extends StatefulWidget {
  static const route = 'splash';
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      Navigator.pushNamedAndRemoveUntil(context, RoutePaths.home, (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              const Spacer(),
              Center(
                child: SizedBox(
                  height: 100,
                  child: Image.asset(
                    'assets/images/reqresLogo.png',
                    color: PsColors.mainColor,
                  ),
                ),
              ),
              const SizedBox(height: extraPadding),
              const Spacer(),
              Text(
                Label.reqres.toString(),
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(fontWeight: FontWeight.w500, fontSize: 12, color: PsColors.textPrimaryColor),
              ),
              const SizedBox(height: mainPadding),
            ],
          ),
        ),
      ),
    );
  }
}
