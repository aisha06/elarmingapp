// import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:elearningapp_demo/model/login_models.dart';

class APILoginService {
  Future<LoginModels> login(LoginModels requestModel) async {
    String url = "http://192.168.1.6:8080/rest/auth/login";

    var http2;
    final response = await http2.post(url, body: requestModel.toJson());
    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginModels.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
