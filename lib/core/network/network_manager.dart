import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:mvvm_app/core/base/model/base_model.dart';
import 'package:mvvm_app/core/constants/base_settings.dart';

class NetworkManager {
  static NetworkManager? _instance;

  static NetworkManager? get instance {
    _instance ??= NetworkManager._init();
    return _instance;
  }

  NetworkManager._init() {
    final baseOptions = BaseOptions(baseUrl: BaseSettings.BASE_API_URL);
    _dio = Dio(baseOptions);
  }

  setHeader() {
    Map<String, dynamic> headers = <String, dynamic>{};

    headers["Token"] = "123123123";

    _dio!.options.headers = headers;
  }

  Dio? _dio;

  Future dioPost<T extends BaseModel<T>>(String path, T model, dynamic data) async {
    try {
      final response = await _dio!.post(path, data: data);
      if (response.statusCode == 200) {
        final responseBody = response.data;
        if (responseBody is List) {
          return responseBody.map((e) => model.fromJson(e)).toList();
        } else if (responseBody is Map<String, dynamic>) {
          return model.fromJson(responseBody);
        }
        return responseBody;
      }else{
        return null;
      }
    } on DioError catch (e) {
      log(e.toString());
      return null;
    }
  }
}
