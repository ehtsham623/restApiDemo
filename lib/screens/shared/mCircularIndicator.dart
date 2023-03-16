import 'package:flutter/material.dart';
import 'package:rest_api_demo/config/ps_colors.dart';

class MCircularIndicator extends StatelessWidget {
  final double width;
  final double height;
  final double strokeWidth;
  const MCircularIndicator({
    Key? key,
    this.width = 20,
    this.height = 20,
    this.strokeWidth = 3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: CircularProgressIndicator(
        backgroundColor: Theme.of(context).primaryColor,
        color: PsColors.mainLightColor,
        strokeWidth: strokeWidth,
      ),
    );
  }
}
