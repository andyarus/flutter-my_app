import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:my_app/models/user_auth.dart';

class NetworkService {

  static Future<UserAuth> auth(String login, String password) async {
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: "application/x-www-form-urlencoded"
      //HttpHeaders.authorizationHeader: "$token",
      //"Content-type": "application/x-www-form-urlencoded"
    };

    var data = "login=$login&password=$password";
    print('auth data:$data');

    final response =
        await http.post('https://mobile-app-api.profintel.ru/api/v2/authenticate', headers: headers, body: data);

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.
      return UserAuth.fromJson(json.decode(response.body));
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load post');
    }
  }

}
