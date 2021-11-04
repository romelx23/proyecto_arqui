import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shop_app/config.dart';
import 'package:shop_app/models/login_response_model.dart';

class APIServicce {
  static var client = http.Client();
  static Future<LoginResponseModel> login(
      LoginResponseModel requestModel) async {
    Map<String, String> requestHeaders = {'Content-Type': 'aplication/json'};
    var url = Uri.http(config.apiURL, config.loginAPI);

    var response = await client.post(url,
        headers: requestHeaders, body: jsonEncode(requestModel.toJson()));

    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponseModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }

  static Future<LoginResponseModel> register(
      LoginResponseModel requestModel) async {
    Map<String, String> requestHeaders = {'Content-Type': 'aplication/json'};
    var url = Uri.http(config.apiURL, config.registerAPI);

    var response = await client.post(url,
        headers: requestHeaders, body: jsonEncode(requestModel.toJson()));

    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponseModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
