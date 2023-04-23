import 'dart:convert';
import 'package:coworking_space_app/models/call_api.dart';
import 'package:http/http.dart' as http;


class RemoteServices {
  static var client = http.Client();

  static Future<List<Coworking>?> fetchCoworking() async {
    var response = await client.get(Uri.parse(
        'https://raw.githubusercontent.com/6487071-Kotchaporn-Suwannarat/coworking_space/main/coworking_space.json'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return coworkingFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
  static fetchCoworks() {}
}
