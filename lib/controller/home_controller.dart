import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/home_model.dart';
getuser() async {
  List<HomeModel> userData = [];
  var link = "https://jsonplaceholder.typicode.com/users";
  var url = Uri.parse(link);
  // var urihttps = Uri.https("jsonplaceholder.typicode", "/users");
  var response = await  http.get(url);
  var responsess = jsonDecode(response.body);
  // print(responsess);
  for(var i in responsess){
    userData.add(HomeModel.fromJson(i));
  }
  return userData;
}