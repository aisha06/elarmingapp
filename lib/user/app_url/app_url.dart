class AppUrl {
  static const String server = "https://www.Elearningapp_demo.com/";
  static const String baseurl = "${server}wp-json/myplugin/v1/";

  static const String loginapi =
      '${baseurl}http://192.168.1.9:8080/rest/auth/login';
  static const String signupapi =
      '${baseurl}registeration-api'; // registeration

  static const String resetpasswordapi = '${baseurl} ';
  static const String verificationcodeapi =
      '${baseurl}resetpass_otp_verify-api';
  static const String createpasswordapi = '${baseurl} ';
}
