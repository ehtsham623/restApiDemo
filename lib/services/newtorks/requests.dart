import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import './urls.dart';

class Request {
  final String _url;
  final dynamic _body;
  String token;

  Request(this._url, this._body, this.token);

  ///
  ///post delete and get requests --> get token if null then refresh or logout , dio call and add headers
  ///
  ///currently token and header optiopns is commented due to no token functaionality in apis
  ///

  Future<Response> post({String? base, required BuildContext context}) async {
    String myBaseUrl = baseUrl;
    if (base != null) {
      myBaseUrl = base;
    }

    // String? myToken = await LocalStorage.getData(key: StorageKey.accessToken);
    // if (myToken == null) {
    //   myToken = '';
    // } else {
    // myToken = await UserService.checkTokenValidation(context);
    // }

    Dio dio = Dio(BaseOptions(
      baseUrl: myBaseUrl,
      responseType: ResponseType.json,
      connectTimeout: const Duration(seconds: 8),
      receiveTimeout: const Duration(seconds: 8),
      sendTimeout: const Duration(seconds: 8),
    ));
    Response response;
    response = await dio.post(
      myBaseUrl + _url,
      data: _body,
      // options: Options(
      //   headers: {
      //     "authorization": 'Bearer $myToken',
      //   },
      //   contentType: ContentType.parse("application/json").toString(),
      // ),
    );
    return response;
  }

  Future<Response> delete({String? base, String? id, required BuildContext context}) async {
    String myBaseUrl = baseUrl;
    if (base != null) {
      myBaseUrl = base;
    }
    // String? myToken = await LocalStorage.getData(key: StorageKey.accessToken);
    // if (myToken == null) {
    //   myToken = '';
    // } else {
    //   myToken = await UserService.checkTokenValidation(context);
    // }

    Dio dio = Dio(BaseOptions(
      responseType: ResponseType.json,
      connectTimeout: const Duration(seconds: 8),
      receiveTimeout: const Duration(seconds: 8),
      sendTimeout: const Duration(seconds: 8),
    ));

    Response response;
    response = await dio.delete(
      myBaseUrl + _url,
      queryParameters: _body,
      // options: Options(
      //   headers: {
      //     "authorization": 'Bearer ' + myToken,
      //   },
      //   contentType: ContentType.parse("application/json").toString(),
      // ),
    );

    return response;
  }

  Future<Response> get({String? base, required BuildContext context}) async {
    String myBaseUrl = baseUrl;
    if (base != null) {
      myBaseUrl = base;
    }
    // String? myToken = await LocalStorage.getData(key: StorageKey.accessToken);
    // if (myToken == null) {
    //   myToken = '';
    // } else {
    //   myToken = await UserService.checkTokenValidation(context);
    // }

    Dio dio = Dio(BaseOptions(
      responseType: ResponseType.json,
      connectTimeout: const Duration(seconds: 8),
      receiveTimeout: const Duration(seconds: 8),
      sendTimeout: const Duration(seconds: 8),
    ));

    Response response;
    response = await dio.get(
      myBaseUrl + _url,
      queryParameters: _body,
      // options: Options(
      //   headers: {
      //     "authorization": 'Bearer ' + myToken,
      //   },
      //   contentType: ContentType.parse("application/json").toString(),
      // ),
    );
    return response;
  }
}
