class RegisterRequestModel {
  RegisterRequestModel({
    required this.nombre,
    required this.correo,
    required this.password,
    required this.rol,
  });
  late final String nombre;
  late final String correo;
  late final String password;
  late final String rol;

  RegisterRequestModel.fromJson(Map<String, dynamic> json) {
    nombre = json['nombre'];
    correo = json['correo'];
    password = json['password'];
    rol = json['rol'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['nombre'] = nombre;
    _data['correo'] = correo;
    _data['password'] = password;
    _data['rol'] = rol;
    return _data;
  }
}
