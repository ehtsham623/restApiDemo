class MyRegex {
  static RegExp password = new RegExp(
      r'(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$');
  static RegExp email = new RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static RegExp alphabets = new RegExp('[a-zA-Z]');
  static RegExp alphabetWithSpaces = new RegExp('^[a-zA-Z][a-zA-Z ]*');
  static RegExp numbers = new RegExp(r'\d');
  static RegExp emptySpace = new RegExp(r'\s');
  static RegExp websiteUrl =
      new RegExp(r'(?:(?:https?|ftp):\/\/)?[\w/\-?=%.]+\.[\w/\-?=%.]+');
}
