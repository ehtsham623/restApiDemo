import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rest_api_demo/constants/labels.dart';
import 'package:rest_api_demo/core/enums/alert.type.dart';
import 'package:rest_api_demo/core/models/userModel.dart';
import 'package:rest_api_demo/screens/shared/my-snack.dart';
import 'package:rest_api_demo/services/newtorks/requests.dart';
import 'package:rest_api_demo/services/newtorks/urls.dart';

class HomeRepo {
  static Future getUsersApi(BuildContext context) async {
    try {
      Request req = Request(usersUrl, null, null);
      Response res = await req.get(context: context);
      if (res.data['data'] != null) {}
      UserModel userModel = UserModel.fromJson(res.data);
      return userModel;
    } on DioError catch (err) {
      String message = '';
      if (err.response!.data['message'] != null) {
        if (err.response!.data['message'] is List) {
          message = err.response!.data['message'][0];
        } else {
          message = err.response!.data['message'];
        }
        // PsConfig.checkUnauthorization(context: context, message: message);
      } else {
        message = Label.somethingWentWrong;
      }
      MySnack.showBar(context, alertType: AlertType.error, message: message);
    } catch (err) {
      MySnack.showBar(context, alertType: AlertType.error, message: Label.somethingWentWrong);
    }
    return null;
  }
}
