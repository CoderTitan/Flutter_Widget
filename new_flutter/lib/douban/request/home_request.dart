import 'package:new_flutter/douban/pages/home/model/home_model.dart';
import 'package:new_flutter/douban/request/http_request.dart';
import 'package:new_flutter/douban/request/config.dart';


class HomeReuqest {
  // 请求首页列表
  static Future<List<MovieItem>> requestMovieList(int start) async {
    // 1. 请求url
    final movieURL = "/movie/top250?start=$start&count=${HomeConfig.movieCount}";

    // 发送网络请求获取结果
    final result = await HttpRequest.request(movieURL, method: 'get');
    final subjucts = result['subjects'];

    // 将json转成model
    List<MovieItem> movieList = [];
    for (var sub in subjucts) {
      movieList.add(MovieItem.fromMap(sub));
    }

    return movieList;
  }
}