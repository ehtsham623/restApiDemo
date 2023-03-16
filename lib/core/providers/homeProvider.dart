import 'package:flutter/material.dart';
import 'package:rest_api_demo/core/models/userModel.dart';
import 'package:rest_api_demo/core/repo/homeRepo.dart';

class HomeProvider extends ChangeNotifier {
  bool isLoadingUser = false;
  UserModel? userModel;

  ///method to [getUsersApi] and save in state [userModel]
  Future getUser({required BuildContext context}) async {
    isLoadingUser = true;
    notifyListeners();
    var res = await HomeRepo.getUsersApi(context);
    if (res is UserModel) {
      userModel = res;
      isLoadingUser = false;
      notifyListeners();
      return true;
    }
    isLoadingUser = false;
    notifyListeners();
  }
}
