import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

Future<http.Response?> signup(data, String text, BuildContext context) async {
  http.Response? response;
  try {
    response = await http.post(
        Uri.parse("http://192.168.18.253:8080/rest/auth/signup"),
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        },
        body: jsonEncode(data.toJson()));
  } catch (e) {
    log(e.toString());
  }
  return response;
}
