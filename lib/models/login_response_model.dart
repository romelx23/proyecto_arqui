import 'dart:convert';

LoginResponseModel loginResponseModel(String str) =>
    LoginResponseModel.fromJson(json.decode(str));

class LoginResponseModel {
  LoginResponseModel({
    required this.usuario,
    required this.token,
  });
  late final Usuario usuario;
  late final String token;

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    usuario = Usuario.fromJson(json['usuario']);
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['usuario'] = usuario.toJson();
    _data['token'] = token;
    return _data;
  }
}

class Usuario {
  Usuario({
    required this.rol,
    required this.estado,
    required this.google,
    required this.nombre,
    required this.correo,
    required this.uid,
  });
  late final String rol;
  late final bool estado;
  late final bool google;
  late final String nombre;
  late final String correo;
  late final String uid;

  Usuario.fromJson(Map<String, dynamic> json) {
    rol = json['rol'];
    estado = json['estado'];
    google = json['google'];
    nombre = json['nombre'];
    correo = json['correo'];
    uid = json['uid'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['rol'] = rol;
    _data['estado'] = estado;
    _data['google'] = google;
    _data['nombre'] = nombre;
    _data['correo'] = correo;
    _data['uid'] = uid;
    return _data;
  }
}
