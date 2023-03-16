// Copyright (c) 2019, the PS Project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// PS license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

class PsColors {
  PsColors._();

  ///
  /// Main Color
  ///
  static Color? mainColor;
  static Color? mainColorWithWhite;
  static Color? mainColorWithBlack;
  static Color? mainDarkColor;
  static Color? mainLightColor;
  static Color? mainLightColorWithBlack;
  static Color? mainLightColorWithWhite;
  static Color? mainShadowColor;
  static Color? mainLightShadowColor;
  static Color? mainDividerColor;
  static Color? whiteColorWithBlack;
  static Color? mainIconColor;

  //gray color shades
  static Color? grayDarkColor;
  static Color? grayColor;
  static Color? grayMediumColor;
  static Color? grayLightColor;

  ///
  /// Base Color
  ///
  static Color? baseColor;
  static Color? baseDarkColor;
  static Color? baseLightColor;

  ///
  /// Text Color
  ///
  static Color? textPrimaryColor;
  static Color? textPrimaryDarkColor;
  static Color? textPrimaryLightColor;
  static Color? hintTextColor;

  ///
  /// Icon Color
  ///
  static Color? iconColor;

  ///
  /// Chip Color
  ///
  static Color? chipBackgroundColor;
  static Color? chipTextColor;

  ///
  /// Background Color
  ///
  static Color? coreBackgroundColor;
  static Color? backgroundColor;
  static Color? inputBackgroundColor;

  ///
  /// General
  ///
  static Color? white;
  static Color? black;
  static Color? grey;
  static Color? transparent;
  static Color? errorColor;

  ///
  /// journy and gig type colors
  ///
  static Color? journeyStart;
  static Color? packgeGigStart;
  static Color? packgeGigEnd;
  static Color? personGigStart;
  static Color? personGigEnd;
  static Color? journeyend;

  ///
  /// Customs
  ///
  static Color? facebookLoginButtonColor;
  static Color? googleLoginButtonColor;
  static Color? phoneLoginButtonColor;
  static Color? appleLoginButtonColor;
  static Color? discountColor;
  static Color? disabledFacebookLoginButtonColor;
  static Color? disabledGoogleLoginButtonColor;
  static Color? disabledPhoneLoginButtonColor;
  static Color? disabledAppleLoginButtonColor;
  static Color? categoryBackgroundColor;
  static Color? loadingCircleColor;
  static Color? ratingColor;
  static Color? borderColor;
  static Color? personBackgroundColor;
  static Color? packageBackgroundColor;
  static Color? dividerColor;
  static Color? polyLineColor;
  static Color? helpItemBackgroundColor;

  /// Colors Config For the whole App
  /// Please change the color based on your brand need.

  ///
  /// Common Theme
  ///
  static const Color _c_main_color = Color(0xFF67E600);

  static const Color _c_main_icon_color = Color(0xFF67E600);

  static const Color _c_grayDarkColor = Color(0xFFC2C2D8);
  static const Color _c_grayColor = Color(0xFFDBDBE9);
  static const Color _c_grayMediumColor = Color(0xFFE9E9F2);
  static const Color _c_grayLightColor = Color(0xFFF5F5FA);

  static const Color _c_white_color = Colors.white;
  static const Color _c_black_color = Colors.black;
  static const Color _c_grey_color = Colors.grey;
  static const Color _c_blue_color = Colors.blue;
  static const Color _c_transparent_color = Colors.transparent;

  static const Color _c_facebook_login_color = Color(0xFF2153B2);
  static const Color _c_google_login_color = Color(0xFFEB0076);
  static const Color _c_phone_login_color = Color(0xFFFFDE2E);
  static const Color _c_apple_login_color = Color(0xFF111111);
  static const Color _c_discount_color = Color(0xFFEB0076);

  static const Color _c_rating_color = Color(0xFFFFDE2E);
  static const Color _c_input_background_color = Color(0xFFF9F9F9);

  static const Color _c_chip_text_color = Color(0xFF7E7E7E);
  static const Color _c_chip_background_color = Color(0xFFF3F3F3);

  static const Color ps_ctheme__color_about_us = Color(0xFFA1DCF8);
  static const Color ps_ctheme__color_application = Colors.blue;
  static const Color ps_ctheme__color_line = Color(0xFFbdbdbd);

  static const Color _c_border_color = Color(0xFFA6A6A6);
  static const Color _c_text_hint_color = Color(0xFFC2C2D8);

  static const Color _c_person_background_color = Color(0xFF3D89AE);
  static const Color _c_package_background_color = Color(0xFFEB0076);
  static const Color _c_divider_color = Color(0xFFE5E5E5);
  static const Color _c_polyline_color = Color(0xFFFFDE2E);

  static const Color _c_package_gig_start_color = Color(0xFF77B4D1);
  static const Color _c_package_gig_end_color = Color(0xFF3D89AE);
  static const Color _c_person_gig_start_color = Color(0xFFFA879F);
  static const Color _c_person_gig_end_color = Color(0xFFF84066);

  static const Color _c_error_color = Color(0xFFEB0076);
  static const Color _c_help_container_color = Color(0xFFFD7F4E8);

  ///
  /// Light Theme
  ///
  static const Color _l_base_color = Color(0xFEFAFAFA);
  static const Color _l_base_dark_color = Color(0xFFFFFFFF);
  static const Color _l_base_light_color = Color(0xFFEFEFEF);

  static const Color _l_text_primary_color = Color(0xFF000000);
  static const Color _l_text_primary_light_color = Color(0xFF67E600);
  static const Color _l_text_primary_dark_color = Color(0xFF000000);

  static const Color _l_icon_color = Color(0xFF67E600);

  static const Color _l_divider_color = Color(0xFF67E600);

  ///
  /// Dark Theme
  ///
  static const Color _d_base_color = Color(0xFF212121);
  static const Color _d_base_dark_color = Color(0xFF303030);
  static const Color _d_base_light_color = Color(0xFF454545);

  static const Color _d_text_primary_color = Color(0xFFFFFFFF);
  static const Color _d_text_primary_light_color = Color(0xFF67E600);
  static const Color _d_text_primary_dark_color = Color(0xFFFFFFFF);

  static const Color _d_icon_color = Color(0xFF67E600);

  static const Color _d_divider_color = Color(0xFF67E600);

  static void loadColor(bool isLightMode) {
    if (isLightMode) {
      _loadLightColors();
    } else {
      _loadDarkColors();
    }
  }

  static void _loadDarkColors() {
    ///
    /// Main Color
    ///
    mainColor = _c_main_color;
    mainColorWithWhite = Colors.white;
    mainColorWithBlack = Colors.black;
    mainDarkColor = Colors.white;
    mainLightColor = Colors.black;
    mainLightColorWithBlack = _d_base_color;
    mainLightColorWithWhite = Colors.white;
    mainShadowColor = Colors.white.withOpacity(0.6);
    mainLightShadowColor = Colors.black.withOpacity(0.5);
    mainDividerColor = _d_divider_color;
    whiteColorWithBlack = Colors.black;
    mainIconColor = _c_main_icon_color;

    ///
    /// Base Color
    ///
    baseColor = _d_base_color;
    baseDarkColor = _d_base_dark_color;
    baseLightColor = _d_base_light_color;

    ///
    /// Text Color
    ///
    textPrimaryColor = _d_text_primary_color;
    textPrimaryDarkColor = _d_text_primary_dark_color;
    textPrimaryLightColor = _d_text_primary_light_color;
    hintTextColor = _c_text_hint_color;

    ///
    /// Icon Color
    ///
    iconColor = _d_icon_color;

    ///
    /// Background Color
    ///
    coreBackgroundColor = _d_base_color;
    backgroundColor = _d_base_dark_color;
    inputBackgroundColor = _c_input_background_color;

    ///
    /// General
    ///
    white = _c_white_color;
    black = _c_black_color;
    grey = _c_grey_color;
    transparent = _c_transparent_color;

    ///
    /// Custom
    ///
    facebookLoginButtonColor = _c_facebook_login_color;
    googleLoginButtonColor = _c_google_login_color;
    phoneLoginButtonColor = _c_phone_login_color;
    appleLoginButtonColor = _c_apple_login_color;
    discountColor = _c_discount_color;
    disabledFacebookLoginButtonColor = _c_grey_color;
    disabledGoogleLoginButtonColor = _c_grey_color;
    disabledPhoneLoginButtonColor = _c_grey_color;
    disabledAppleLoginButtonColor = _c_grey_color;
    categoryBackgroundColor = _d_base_light_color;
    loadingCircleColor = _c_blue_color;
    ratingColor = _c_rating_color;
    borderColor = _c_border_color;
    personBackgroundColor = _c_person_background_color;
    packageBackgroundColor = _c_package_background_color;
    dividerColor = _c_divider_color;
    polyLineColor = _c_polyline_color;
    chipBackgroundColor = _c_chip_background_color;
    chipTextColor = _c_chip_text_color;
    grayDarkColor = _c_grayDarkColor;
    grayColor = _c_grayColor;
    grayMediumColor = _c_grayMediumColor;
    grayLightColor = _c_grayLightColor;

    ///
    ///journey and gig type colors
    ///
    journeyStart = mainLightColor;
    packgeGigStart = _c_package_gig_start_color;
    packgeGigEnd = _c_package_gig_end_color;
    personGigStart = _c_person_gig_start_color;
    personGigEnd = _c_person_gig_end_color;
    journeyend = mainColor;
    errorColor = _c_error_color;
  }

  static void _loadLightColors() {
    ///
    /// Main Color
    ///
    mainColor = _c_main_color;
    mainColorWithWhite = _c_main_color;
    mainColorWithBlack = _c_main_color;
    mainDarkColor = Colors.black;
    mainLightColor = Colors.white;
    mainLightColorWithBlack = Colors.black;
    mainLightColorWithWhite = Colors.white;
    mainShadowColor = Colors.black.withOpacity(0.6);
    mainLightShadowColor = Colors.white.withOpacity(0.5);
    mainDividerColor = _l_divider_color;
    whiteColorWithBlack = _c_white_color;
    mainIconColor = _c_main_icon_color;

    ///
    /// Base Color
    ///
    baseColor = _l_base_color;
    baseDarkColor = _l_base_dark_color;
    baseLightColor = _l_base_light_color;

    ///
    /// Text Color
    ///
    textPrimaryColor = _l_text_primary_color;
    textPrimaryDarkColor = _l_text_primary_dark_color;
    textPrimaryLightColor = _l_text_primary_light_color;
    hintTextColor = _c_text_hint_color;

    ///
    /// Icon Color
    ///
    iconColor = _l_icon_color;

    ///
    /// Background Color
    ///
    coreBackgroundColor = _l_base_color;
    backgroundColor = _l_base_dark_color;
    inputBackgroundColor = _c_input_background_color;

    ///
    /// General
    ///
    white = _c_white_color;
    black = _c_black_color;
    grey = _c_grey_color;
    transparent = _c_transparent_color;

    ///
    /// Custom
    ///
    facebookLoginButtonColor = _c_facebook_login_color;
    googleLoginButtonColor = _c_google_login_color;
    phoneLoginButtonColor = _c_phone_login_color;
    appleLoginButtonColor = _c_apple_login_color;
    discountColor = _c_discount_color;
    disabledFacebookLoginButtonColor = _c_grey_color;
    disabledGoogleLoginButtonColor = _c_grey_color;
    disabledPhoneLoginButtonColor = _c_grey_color;
    disabledAppleLoginButtonColor = _c_grey_color;
    categoryBackgroundColor = _l_base_light_color;
    loadingCircleColor = _c_blue_color;
    ratingColor = _c_rating_color;
    borderColor = _c_border_color;
    personBackgroundColor = _c_person_background_color;
    packageBackgroundColor = _c_package_background_color;
    dividerColor = _c_divider_color;
    polyLineColor = _c_polyline_color;
    chipBackgroundColor = _c_chip_background_color;
    chipTextColor = _c_chip_text_color;
    errorColor = _c_error_color;
    helpItemBackgroundColor = _c_help_container_color;
    grayDarkColor = _c_grayDarkColor;
    grayColor = _c_grayColor;
    grayMediumColor = _c_grayMediumColor;
    grayLightColor = _c_grayLightColor;

    ///
    ///journey and gig type colors
    ///
    journeyStart = mainLightColor;
    packgeGigStart = _c_package_gig_start_color;
    packgeGigEnd = _c_package_gig_end_color;
    personGigStart = _c_person_gig_start_color;
    personGigEnd = _c_person_gig_end_color;
    journeyend = mainColor;
  }
}
