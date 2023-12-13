class SignupModels {
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  String? mobile;
  String? dob;
  String? state;
  String? pincode;
  String? district;
  String? postOffice;
  String? policeStation;
  String? aadhar;
  String? gender;
  String? username;

  SignupModels(
      {this.firstName,
      this.lastName,
      this.email,
      this.password,
      this.mobile,
      this.dob,
      this.state,
      this.pincode,
      this.district,
      this.postOffice,
      this.policeStation,
      this.aadhar,
      this.gender,
      this.username});

  SignupModels.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    password = json['password'];
    mobile = json['mobile'];
    dob = json['dob'];
    state = json['state'];
    pincode = json['pincode'];
    district = json['district'];
    postOffice = json['postOffice'];
    policeStation = json['policeStation'];
    aadhar = json['aadhar'];
    gender = json['gender'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['email'] = email;
    data['password'] = password;
    data['mobile'] = mobile;
    data['dob'] = dob;
    data['state'] = state;
    data['pincode'] = pincode;
    data['district'] = district;
    data['postOffice'] = postOffice;
    data['policeStation'] = policeStation;
    data['aadhar'] = aadhar;
    data['gender'] = gender;
    data['username'] = username;
    return data;
  }
}
