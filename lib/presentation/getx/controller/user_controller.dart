import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../../model/user_data.dart';
import 'package:http/http.dart' as http;

class UserController extends GetxController {
  var usersData = <UserData>[].obs;

  getUserData() async {

    var response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    try {
      if (response.statusCode == 200) {
        List responseData = json.decode(response.body);
        responseData.map((m) => usersData.add(UserData.fromJson(m))).toList();

        return usersData;
      } else {
        return <UserData>[].obs;
      }
    } catch (e) {
      Get.snackbar("Server Error", "Internel Server Error");
    }
  }
}
