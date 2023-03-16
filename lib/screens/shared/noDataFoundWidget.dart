import 'package:flutter/material.dart';
import 'package:rest_api_demo/constants/ui_settings.dart';
import '../../config/ps_colors.dart';
import '../../constants/labels.dart';

class NoDataFoundWidget extends StatelessWidget {
  const NoDataFoundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: extraPadding),
        Icon(
          Icons.not_interested,
          size: 100,
          color: PsColors.mainDarkColor,
        ),
        const SizedBox(
          height: subPadding,
        ),
        Text(
          Label.noDataFound,
          style: Theme.of(context).textTheme.headline1!.copyWith(
                color: PsColors.textPrimaryColor,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
        ),
      ],
    );
  }
}
