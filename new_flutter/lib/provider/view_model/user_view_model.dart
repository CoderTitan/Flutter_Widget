

import 'package:flutter/material.dart';
import '../model/user_info.dart';

class UserViewModel extends ChangeNotifier {
  UserInfo _userInfo;

  UserViewModel(this._userInfo);


  UserInfo get userInfo => _userInfo;


  set userInfo(UserInfo value) {
    _userInfo = value;
    notifyListeners();
  }
}