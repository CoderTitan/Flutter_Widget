import 'package:dio/dio.dart';
import './config.dart';


class HttpRequest {
  // 基础配置信息
  static final BaseOptions baseOptions = BaseOptions(
    baseUrl: HttpConfig.baseURL,
    connectTimeout: 5000,
    receiveTimeout: 10000,
  );

  // 创建全局的dio
  static final Dio dio = Dio(baseOptions);

  // 0. 封装基础的网络请求 
  static Future<T> request<T>(
    String url, {
      String method = 'get',
      Map<String, dynamic> params,
      Interceptor inter
    }) async {

    // 1. 创建单独配置
    final options = Options(method: method);

    // 2. 创建全局的默认拦截器
    Interceptor interceptor = InterceptorsWrapper(
      onRequest: (request) {
        print('请求拦截');
        return request;
      },
      onResponse: (response) {
        print('响应拦截');
        return response;
      },
      onError: (error) {
        print('错误拦截');
        return error;
      }
    );

    List<Interceptor> interList = [interceptor];
    if (inter != null) {
      interList.add(inter);
    }

    // 3. 统一添加到拦截器中
    dio.interceptors.addAll(interList);

    // 4. 发送网络请求
    try {
      Response response = await dio.request(url, queryParameters: params, options: options);
      return response.data;
    } on DioError catch (e) {
      return Future.error(e);
    }
  }

  

}