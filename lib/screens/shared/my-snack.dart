import 'package:flutter/material.dart';
import 'package:rest_api_demo/constants/ui_settings.dart';
import 'package:rest_api_demo/core/enums/alert.type.dart';
import 'package:rest_api_demo/core/utils/color.util.dart';

class MySnack {
  static void showBar(BuildContext context, {String? message, AlertType? alertType}) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();

    final snackBar = SnackBar(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(subPadding)),
      elevation: 4,
      behavior: SnackBarBehavior.floating,
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              message.toString(),
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.close,
              color: Colors.white,
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
            },
          )
        ],
      ),
      duration: const Duration(milliseconds: 2500),
      backgroundColor: ColorUtil.getAlertColor(alertType!),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
