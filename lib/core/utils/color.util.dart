import 'package:flutter/material.dart';
import 'package:rest_api_demo/constants/ui_settings.dart';
import 'package:rest_api_demo/core/enums/alert.type.dart';

class ColorUtil {
  static Color getAlertColor(AlertType alertType) {
    int _colorHash = 0xFFFFFFFF;

    switch (alertType) {
      case AlertType.none:
        {
          _colorHash = neutralColor;
          break;
        }

      case AlertType.error:
        {
          _colorHash = errorColor;
          break;
        }

      case AlertType.success:
        {
          _colorHash = 0xFF61D2A4;
          break;
        }

      case AlertType.warning:
        {
          _colorHash = warningColor;
          break;
        }
      default:
        {
          _colorHash = _colorHash;
        }
    }
    return Color(_colorHash);
  }
}
