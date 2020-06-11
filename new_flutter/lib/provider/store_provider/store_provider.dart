
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../model/user_info.dart';
import '../model/config_info.dart';

import '../view_model/user_view_model.dart';
import '../view_model/config_view_model.dart';
import '../view_model/count_view_model.dart';

List<SingleChildWidget> providerList = [
 ChangeNotifierProvider(create: (ctx) => UserViewModel(UserInfo())),
 ChangeNotifierProvider(create: (ctx) => ConfigViewModel(ConfigInfo())),
 ChangeNotifierProvider(create: (ctx) => CountViewModel())
];