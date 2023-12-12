class LoginModels {
  String? password;
  String? username;

  LoginModels({this.password, this.username});

  LoginModels.fromJson(Map<String, dynamic> json) {
    password = json['password'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['password'] = password;
    data['username'] = username;
    return data;
  }
}
