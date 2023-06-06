// @dart=2.9
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as root_bundle;

class ReadJsonFile {
  static Future<void> readJsonData({@required String path}) async {
    // read json file
    final String jsondata = await root_bundle.rootBundle.loadString(path);

    // decode json data as list
    final data = json.decode(jsondata);

    // map json and initialize
    // using DataModel
    print(data);
    return data;
  }
}
