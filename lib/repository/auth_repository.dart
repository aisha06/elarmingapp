// import 'dart:ui';

// import 'package:elearningapp_demo/data/network_api_service.dart';
// import 'package:elearningapp_demo/model/login_models.dart';
// import 'package:elearningapp_demo/model/signup_models.dart';
// import 'package:elearningapp_demo/user/app_url/app_url.dart';

// class AuthRepository {
//   final _apiService = NetworkApiServices();

//   class AuthenticationService {
//   SharedPrferenceData sharedPrferenceData = new SharedPrferenceData();
//   // SuscriptionServices _suscriptionServices = new SuscriptionServices();

//   String? authenticationToken;
//   String? userId;
//   String? imageProfile;
//   bool isAuthenticated = false;
//   UserDataModel? userProfile;

//   // String? userid;

//   BehaviorSubject<String> _unreadCount = BehaviorSubject.seeded("");
//   Stream<String> get unreadCount$ => _unreadCount.stream;
//   String get unreadCount => _unreadCount.value;
//   void updateUnreadCount(String count) {
//     _unreadCount.add(count);
//   }

//   BehaviorSubject<BuySuscription?> _availableSubscription =
//       BehaviorSubject.seeded(null);
//   Stream<BuySuscription?> get availableSubscription$ =>
//       _availableSubscription.stream;
//   BuySuscription? get availableSubscription => _availableSubscription.value;
//   void updateAvailableSubscription(BuySuscription count) {
//     _availableSubscription.add(count);
//   }

//   Future<void> login({
//     required Map<String, dynamic> body,
//     required BuildContext context,
//     required Function setState,
//     required bool rememberMe,
//   }) async {
//     print({"login body": body});
//     var http = HttpService(
//       endURL: baseurl,
//       methodType: HttpMethodType.POST,
//       body: body,
//       isAuthorizeRequest: false,
//       bodyType: HttpBodyType.JSON,
//     );
//     try {
//       Response<dynamic>? jsonResponse = await http.request<dynamic>();

//       print({"res.accessToken": jsonResponse?.data});
//       var responseData = jsonDecode(jsonResponse?.data);

//       print({"jsonResponse?.data": jsonResponse?.data});
//       if (responseData["status"]["httpCode"] == "200" ||
//           responseData["status"]["httpCode"] == 200) {
//         Fluttertoast.showToast(msg: "Login successfully!");
//         sharedPrferenceData.saveData(
//             'username', rememberMe ? body['username'] : '');
//         sharedPrferenceData.saveData(
//             'password', rememberMe ? body['password'] : '');
//         authenticateUser(
//             context: context,
//             setState: setState,
//             userData: responseData["data"]);
//       }
//     } catch (error) {
//       // Fluttertoast.showToast(msg: "EmailId or password not correct!");

//       // print({"error.response?.data": error});
//       http.handleErrorResponse(
//         context: context,
//         error: error,
//         isLogin: true,
//       );
//       // print({"error", error});
//     }
//   }
//   }
// }