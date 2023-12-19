import 'dart:convert';

import 'package:elearningapp_demo/data/network/base_api_service.dart';
import 'package:elearningapp_demo/data/network_api_service.dart';
import 'package:http/http.dart';

class AuthRepository {
  BaseApiServices _apiServices = NetworkApiService();
  Future<dynamic> loginApi(dynamic data) async {
    try {
      var appUrl;
      dynamic response =
          await _apiServices.getPostApiResponse(appUrl.loginEndPint, data);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> signUpApi(dynamic data) async {
    try {
      var appUrl;
      dynamic response = await _apiServices.getPostApiResponse(
          appUrl.registerApiEndPoint, data);
      return response;
    } catch (e) {
      throw e;
    }
  }
}
