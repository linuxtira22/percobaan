import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
class postResult {
  String id;
  String name;
  String job;
  String created;

  postResult(
      {required this.id,
      required this.name,
      required this.job,
      required this.created});

  factory postResult.createPostResult(Map<String, dynamic> object) {
    return postResult(
      id: object["id"],
      name: object["name"],
      job: object["job"],
      created: object["createdAt"],
    );
  }
  static Future<postResult> dataAPI(String name, String job) async {
    String apiURL = 'https://reqres.in/api/users'; 

    var apiResult = await http.post(Uri.parse(apiURL), body: {
      "name": name,
      "job": job,
    });
    var jsonObject = json.decode(apiResult.body);

    return postResult.createPostResult(jsonObject);
  }
}
