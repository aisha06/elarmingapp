class LoginModels {
  LoginModels({
    required this.password,
    required this.username,
  });
  late final String password;
  late final String username;

  LoginModels.fromJson(Map<String, dynamic> json) {
    password = json['password'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['password'] = password;
    _data['username'] = username;
    return _data;
  }
}
