import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:rest_api_demo/config/ps_colors.dart';
import 'package:rest_api_demo/constants/labels.dart';
import 'package:rest_api_demo/constants/ui_settings.dart';
import 'package:rest_api_demo/screens/shared/mButton.dart';

class MDrawer extends StatelessWidget {
  const MDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: subPadding),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  'assets/images/reqresLogo.png',
                  width: 100,
                  height: 100,
                  color: PsColors.mainColor,
                ),
              ),
              const SizedBox(height: 120),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: extraPadding),
                child: MButton(
                  onClick: () {
                    changeColor(context);
                  },
                  text: DynamicTheme.of(context).themeMode == ThemeMode.dark ? Label.turnLight : Label.goDrak,
                  textColor: PsColors.textPrimaryColor,
                  loading: false,
                  bgColor: PsColors.transparent,
                  borderColor: PsColors.borderColor,
                ),
              ),
              const SizedBox(height: mainPadding),
              const Spacer(),
              Center(
                child: Text(
                  '${Label.version} - 1.0.0',
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void changeColor(BuildContext context) async {
    DynamicTheme.of(context).toggleThemeMode();
  }
}
