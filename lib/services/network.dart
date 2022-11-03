import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ApiCalls {
//for registration
  register(email, password) async {
    try {
      var res = await http.post(
        Uri.parse('https://reqres.in/api/register'),
        body: {
          'email': email,
          'password': password,
        },
      );
      var jsonData = jsonDecode(res.body);
      debugPrint(jsonData.toString());
      if (res.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      debugPrint('error while logging in: $e');
      return false;
    }
  }

  //for login
  login(email, password) async {
    try {
      var res = await http.post(
        Uri.parse('https://reqres.in/api/login'),
        body: {
          'email': email,
          'password': password,
        },
      );
      var jsonData = jsonDecode(res.body);
      debugPrint(jsonData.toString());
      if (res.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      debugPrint('error while logging in: $e');
      return false;
    }
  }
}
