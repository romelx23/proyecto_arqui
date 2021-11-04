class LoginRequestModel {
  LoginRequestModel({
    required this.correo,
    required this.password,
  });
  late final String correo;
  late final String password;

  LoginRequestModel.fromJson(Map<String, dynamic> json) {
    correo = json['correo'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['correo'] = correo;
    _data['password'] = password;
    return _data;
  }
}
