import 'package:flutter/material.dart';
import 'package:rest_api_demo/config/ps_colors.dart';
import 'package:rest_api_demo/constants/ui_settings.dart';

class MButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final VoidCallback onClick;
  final bool loading;
  final bool isLeading;
  final bool isTrailing;
  final IconData? iconData;
  final Color? iconColor;
  final Color? bgColor;
  final Color? borderColor;
  final String? assetImage;
  final bool isFullWidth;
  final double? textPadding;
  final bool isPadding;

  const MButton(
      {Key? key,
      this.text = "",
      this.loading = false,
      required this.onClick,
      this.isLeading = false,
      this.bgColor,
      this.iconColor,
      this.assetImage,
      this.textColor,
      this.iconData,
      this.isFullWidth = true,
      this.isTrailing = false,
      this.borderColor,
      this.textPadding,
      this.isPadding = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(
        Radius.circular(30),
      ),
      color: bgColor ?? Theme.of(context).primaryColor,
      child: InkWell(
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
        onTap: loading ? null : onClick,
        child: Container(
          width: isFullWidth ? MediaQuery.of(context).size.width : null,
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: isFullWidth ? 0 : subPadding),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
            border: borderColor == null ? null : Border.all(color: borderColor!, width: 2),
          ),
          child: loading
              ? SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    color: textColor,
                  ),
                )
              : Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      isLeading
                          ? assetImage == null
                              ? Icon(
                                  iconData,
                                  color: iconColor ?? PsColors.white,
                                  size: 22,
                                )
                              : Image.asset(
                                  assetImage!,
                                  width: 28,
                                  height: 24,
                                  color: iconColor,
                                )
                          : Container(),
                      isLeading
                          ? text == ''
                              ? Container()
                              : const SizedBox(width: subPadding)
                          : Container(),
                      Padding(
                        padding: isPadding
                            ? EdgeInsets.symmetric(horizontal: textPadding!)
                            : const EdgeInsets.all(0),
                        child: Text(
                          text,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: textColor ?? PsColors.textPrimaryColor),
                        ),
                      ),
                      isTrailing
                          ? const SizedBox(
                              width: subPadding,
                            )
                          : const SizedBox.shrink(),
                      isTrailing
                          ? assetImage == null
                              ? Icon(
                                  iconData,
                                  color: iconColor ?? PsColors.white,
                                  size: 22,
                                )
                              : Image.asset(
                                  assetImage!,
                                  width: 28,
                                  height: 28,
                                  color: iconColor,
                                )
                          : Container(),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
