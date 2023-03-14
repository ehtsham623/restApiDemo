class PsConfig {
  PsConfig._();

  /// Animation Duration
  static const Duration animationDuration = Duration(milliseconds: 500);

  /// Fonts Family Config

  static const String psDefaultFontFamily = 'Poppins';

  static const String priceFormat = ',###.00';

  /// Default Profile Pic

  static const String defaultProfilePic =
      'https://crowd-shuttle.s3.us-east-2.amazonaws.com/shuttle-app/8109cb51-098d-488a-923b-1f835ff5c0d7-profile-image.jpg';

  /// Date Time Format

  static const String dateFormat = 'dd MMM, yyyy   HH:mm';
  static const String isoDateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";

  static const int profileImageAize = 512;
}
