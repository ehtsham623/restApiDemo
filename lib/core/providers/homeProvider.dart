import 'package:flutter/material.dart';
import 'package:rest_api_demo/core/models/userModel.dart';

class HomeProvider extends ChangeNotifier {
  final List<User> users = [
    User(
      id: 1,
      firstName: 'John',
      lastName: 'Doe',
      email: 'johndoe@example.com',
      avatar: 'https://www.example.com',
    ),
    User(
      id: 2,
      firstName: 'Janes',
      lastName: 'Smith',
      email: 'janesmith@example.com',
      avatar: 'https://www.example.com',
    ),
  ];
}
