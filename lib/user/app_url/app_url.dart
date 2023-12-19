class AppUrl {
  static var baseUrl = 'http://192.168.1.6:8080';

  static var moviesBaseUrl =
      'https://dea91516-1da3-444b-ad94-c6d0c4dfab81.mock.pstmn.io/';

  static var loginEndPint = baseUrl + '/auth/login';

  static var registerApiEndPoint = baseUrl + '/auth/signup';

  static var changepassword = baseUrl + '/auth/resetPassword';

  static var moviesListEndPoint = moviesBaseUrl + 'movies_list';
}
