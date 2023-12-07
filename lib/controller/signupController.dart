import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elearningapp_demo/repository/auth_repository.dart';
import 'package:elearningapp_demo/utils/utils.dart';
import 'package:elearningapp_demo/views/loginView.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Signup_controller extends GetxController {
  final _api = AuthRepository();

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final usernameController = TextEditingController().obs;
  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;

  void signup_apihit() {
    loading.value = true;
    Map data = {
      'username': usernameController.value.text,
      'email': emailController.value.text,
      'password': passwordController.value.text
    };
    _api.Signupapi(data).then((value) {
      loading.value = false;

      Get.to(LoginView());

      Utils.snackBar('Signup', 'Signup successfully');
    }).onError((error, stackTrace) {
      loading.value = false;
      Utils.snackBar('Error', error.toString());
    });
  }
}
