import 'package:flutter/material.dart';
import 'package:rest_api_demo/core/models/userModel.dart';
import 'package:rest_api_demo/services/localStorage/my-local-controller.dart';

class UserService {
  ///Checkuser token, validate it, return if token else refresh
  static Future checkTokenValidation(BuildContext context) async {}

  ///Logged in user data from api stores in local storages
  static saveUserData(UserModel userModel, BuildContext context) async {}

  ///Logged in user data from api stores in local storages with out token -->used when refresh data
  static saveUserDataWithoutToken(UserModel userModel, BuildContext context) async {}

  ///get user refresh and acees token and updates it in local storage
  static Future refreshToken(BuildContext context) async {}

  ///Clear local data to logout
  static Future logout(BuildContext context) async {
    await LocalStorage.removeAll();
  }
}
