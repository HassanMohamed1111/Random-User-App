import 'package:addan_api/Model/UsersModel.dart';
import 'package:addan_api/Services/UserService.dart';
import 'package:flutter/material.dart';

class UsersProvider extends ChangeNotifier
{
  List<UsersModel>?usersModel;
  GetData()async
  {
    usersModel = await UsersService.getData();
    notifyListeners();
  }
}