import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginApiController extends GetxController {
  final userNameController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  
  void loginApi() async{
    try {
      final response = await post(Uri.parse('https://ashtana-render.onrender.com/api/auth/signin'),
    body: {
      'username': userNameController.value.text,
      'password': passwordController.value.text
    });
    
    var data = jsonDecode(response.body);
    print(response.statusCode);
    print(data);

    if(response.statusCode == 200){
      Get.snackbar('Login Successful', 'You have successfully logged in.');
    } else {
      Get.snackbar('Login Failed', data['Error']);
      print('Login Failed with status: ${response.statusCode}');
    }
    } catch (e) {
      Get.snackbar('Exception Occured', e.toString());
    }
  }
}