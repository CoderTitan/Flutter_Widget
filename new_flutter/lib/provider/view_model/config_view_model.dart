import 'package:flutter/material.dart';
import '../model/config_info.dart';

class ConfigViewModel extends ChangeNotifier {

  ConfigInfo _configInfo;

  ConfigViewModel(this._configInfo);

  ConfigInfo get configInfo => _configInfo;

  set configInfo(ConfigInfo value) {
    _configInfo = value;
    notifyListeners();
  }
}