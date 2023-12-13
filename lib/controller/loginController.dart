import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginController {
  TextEditingController phoneController = TextEditingController(text: "");
  TextEditingController firstNameController = TextEditingController(text: "");
  TextEditingController lastNameController = TextEditingController(text: "");
  TextEditingController locationController = TextEditingController(text: "");
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordTextController =
      TextEditingController(text: "");
  TextEditingController otpController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  bool remenberMe = false;

  bool passwordObscure = true;
  bool isTermAccepted = true;
  String? selectedGender;
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> forgotFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> forgotVerifyFormKey = GlobalKey<FormState>();

  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> otpLoginFormKey = GlobalKey<FormState>();
  bool isSubmitClick = false;

  var sharedPrferenceData;

  dynamic get _auth => <AuthenticationService>() {
        // TODO: implement
        throw UnimplementedError();
      };
  //final AuthenticationService _auth = AuthenticationService();

  var imagefiles = [];
  bool isLoading = false;
  String gender = "female";
  String marriedStatus = "single";
  String lokkingFor = "sunboy";
  String usertype = "";
  String lokkingUsertype = "";
  String selectedLocation = "";
  String selectDrinkDAy = "";
  String selectSmokeDAy = "";
  String selectHairColor = "";
  String selectEduationtype = "";
  String selectBodytype = "";
  String selectEyeColor = "";
  String selectBudget = "";
  bool isShowWithMaterial = false;
  bool shouldCheck = true;
  bool shouldCheck1 = true;
  bool shouldCheck3 = true;

  bool isVisibleGender = false;
  bool userTypeVerify = false;
  bool isVisibleUserType = false;
  bool passwordVisible = false;
  bool focusPassword = false;
  bool focusConfirmPassword = false;
  bool passwordVisibleComfirm = false;
  bool isContactNumberFous = false;
  bool isCalenderFocus = false;

  Future<bool> register({
    required BuildContext context,
    required Function setState,
  }) async {
    if (!registerFormKey.currentState!.validate()) {
      return false;
    }
    setState(() {
      isLoading = true;
    });

    Map<String, dynamic> body = {
      "email": emailController.text,
      "firstName": firstNameController.text,
      "lastName": lastNameController.text,
      "gender": selectedGender,
      "dob": locationController.text,
      "state": -33.8713905,
      "district": 151.2078861,
      "pincode": 10,
      "postOffice": selectBodytype,
      "policeStation": selectBodytype,
      "aadhar": selectBodytype,
      "mobileNo": phoneController.text,
      "username": selectBodytype,
      "userType": "CUSTOMER",
      "acceptanceCondition": true,
      "password": passwordController.text
    };

    return await _auth
        .register(body: body, context: context, setState: setState)
        .then((value) {
      if (value) {
        Fluttertoast.showToast(msg: "Otp sent on your emailId");
      }
      setState(() {
        isLoading = false;
      });
      print({"jyoti": value});
      return value;
    });

    setState(() {
      isLoading = false;
    });
    return false;
  }

  Future<void> login({
    required BuildContext context,
    required Function setState,
  }) async {
    if (!loginFormKey.currentState!.validate()) {
      return;
    }
    setState(() {
      isLoading = true;
    });

    var userController;
    Map<String, dynamic> body = {
      "username": usernameController.text,
      "password": passwordTextController.text,
      "userType": "CUSTOMER"
    };

    await _auth
        .login(
            body: body,
            context: context,
            setState: setState,
            rememberMe: remenberMe)
        .then((value) {
      // Navigator.of(context).push(MaterialPageRoute(
      //     builder: (BuildContext context) => OtpVerificationScreen(
      //           mobileNumber: phoneController.text,
      //         )));
    }).catchError((onError) {
      Fluttertoast.showToast(msg: "EmailId or password not correct!");
    });

    setState(() {
      isLoading = false;
    });
  }

  Future<void> resetSendOtp({
    required BuildContext context,
    required Function setState,
  }) async {
    if (!forgotFormKey.currentState!.validate()) {
      return;
    }
    setState(() {
      isLoading = true;
    });

    Map<String, dynamic> body = {
      "email": emailController.text,
      "userType": "CUSTOMER"
    };

    await _auth
        .resetSendOtp(body: body, context: context, setState: setState)
        .then((value) {})
        .catchError((onError) {
      Fluttertoast.showToast(msg: "Somthing Went wrong.");
    });

    setState(() {
      isLoading = false;
    });
  }

  Future<void> sendEmailOtp({
    required BuildContext context,
    required Function setState,
  }) async {
    if (!otpLoginFormKey.currentState!.validate()) {
      return;
    }
    setState(() {
      isLoading = true;
    });

    Map<String, dynamic> body = {
      "email": emailController.text,
    };

    await _auth
        .sendEmailOtp(body: body, context: context, setState: setState)
        .then((value) {})
        .catchError((onError) {
      Fluttertoast.showToast(msg: "Somthing Went wrong.");
    });

    setState(() {
      isLoading = false;
    });
  }

  Future<bool> verifyCaptcha({
    required BuildContext context,
    required Function setState,
    required String email,
  }) async {
    if (!forgotFormKey.currentState!.validate()) {
      return false;
    }
    setState(() {
      isLoading = true;
    });

    Map<String, dynamic> body = {
      "email": email,
      "resetCode": otpController.text,
      "userType": "CUSTOMER"
    };

    return await _auth
        .verifyCaptcha(body: body, context: context, setState: setState)
        .then((value) {
      setState(() {
        isLoading = false;
      });
      return value;
    }).catchError((onError) {
      setState(() {
        isLoading = false;
      });
      Fluttertoast.showToast(msg: "Somthing Went wrong.");
      return false;
    });
  }

  Future<bool> verifyEmailOtp({
    required BuildContext context,
    required Function setState,
    required String email,
  }) async {
    if (!otpLoginFormKey.currentState!.validate()) {
      return false;
    }
    setState(() {
      isLoading = true;
    });

    Map<String, dynamic> body = {
      "email": email,
      "otp": int.tryParse(otpController.text)
    };

    return await _auth
        .verifyEmailOtp(body: body, context: context, setState: setState)
        .then((value) {
      setState(() {
        isLoading = false;
      });
      return value;
    }).catchError((onError) {
      setState(() {
        isLoading = false;
      });
      Fluttertoast.showToast(msg: "Somthing Went wrong.");
      return false;
    });
  }

  Future<bool> createPassword({
    required BuildContext context,
    required BuildContext dialogContext,
    required Function setState,
    required String userId,
  }) async {
    if (!forgotFormKey.currentState!.validate()) {
      return false;
    }
    setState(() {
      isLoading = true;
    });

    Map<String, dynamic> body = {
      "userId": userId,
      "password": passwordController.text,
      "userType": "CUSTOMER"
    };

    return await _auth
        .createPassword(
            body: body,
            context: context,
            setState: setState,
            dialogContext: dialogContext)
        .then((value) {
      setState(() {
        isLoading = false;
      });
      return value;
    }).catchError((onError) {
      setState(() {
        isLoading = false;
      });
      Fluttertoast.showToast(msg: "Somthing Went wrong.");
      return false;
    });
  }

  Future<void> changePassword({
    required BuildContext context,
    required Function setState,
    required String newPassword,
    required String conFirmPassword,
    required String oldPassword,
  }) async {
    setState(() {
      isLoading = true;
    });
    Map<String, dynamic> body = {
      "oldPassword": oldPassword,
      "newPassword": newPassword,
      "confirmPassword": conFirmPassword
    };
    await _auth.changePassword(
        body: body, context: context, setState: setState);

    setState(() {
      isLoading = false;
    });
  }

  Future<void> otpverifyRegister({
    required BuildContext context,
    required BuildContext dialogContext,
    required Function setState,
  }) async {
    if (otpController.text.length != 6) {
      Fluttertoast.showToast(msg: "Invalid code!");
      return;
    }
    setState(() {
      isLoading = true;
    });
    Map<String, dynamic> body = {
      "otp": otpController.text,
      "email": emailController.text,
      "firstName": firstNameController.text,
      "lastName": lastNameController.text,
      "password": passwordController.text,
      "gender": selectedGender,
      "location": locationController.text,
      "lat": -33.8713905,
      "lon": 151.2078861,
      "tzone": 10,
      "mobileNo": phoneController.text,
      "userType": "CUSTOMER",
    };
    await _auth.otpverifyRegister(
        context: context,
        body: body,
        dialogContext: dialogContext,
        setState: setState);

    setState(() {
      isLoading = false;
    });
  }

  Future<void> resendotp({
    required String email,
    required BuildContext context,
    required Function setState,
  }) async {
    setState(() {
      isLoading = true;
    });
    await _auth.resenotp(email: email, context: context, setState: setState);

    setState(() {
      isLoading = false;
    });
  }
}
