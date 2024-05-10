import 'dart:convert';

import 'package:http/http.dart' as http;

class AuthenticationServices {
  var client = http.Client();
    String baseUrl = 'https://chat.siefhesham.tech/api/';
    String baseUrl2 = 'https://project.siefhesham.tech/api/v1/';

  //Finished
  Future postLogin({required String user, required String password}) async {
    try {
      var response = await client.post(Uri.parse(baseUrl+"login"),
          body: jsonEncode(
            {"email": user, "password": password},
          ),
          headers: {"content-type": "application/json; charset=utf-8"});

      var responseJson = jsonDecode(response.body);

      print("$responseJson");
      return responseJson;
    } catch (e) {
      throw Exception(e);
    }
  }
  Future postLogin2({required String user, required String password}) async {
    try {
      var response = await client.post(Uri.parse(baseUrl2+"login"),
          body: jsonEncode(
            {"email": user, "password": password},
          ),
          headers: {"content-type": "application/json; charset=utf-8"});

      var responseJson = jsonDecode(response.body);

      print("$responseJson");
      return responseJson;
    } catch (e) {
      throw Exception(e);
    }
  }


  postLogout(token) async {
    try {
      var response = await client.post(Uri.parse(baseUrl + 'logout'), headers: {
        "content-type": "application/json",
        'Authorization': 'Bearer $token',
      });
      var responseJson = jsonDecode(response.body);
      print(response.statusCode);

      return responseJson['status'];
    } on Exception catch (e) {
      throw Exception(e);
      // TODO
    }
  }

  showTasks(token) async {
    try {
      print(token);
      var response = await client.get(
        Uri.parse("https://project.siefhesham.tech/api/v1/tasks"),
        headers: {
          'Content-Type': 'application/vnd.api+json',
          'Accept': 'application/vnd.api+json',
          'Authorization': 'Bearer $token',
        },
      );
      var responseJson = jsonDecode(response.body);
      print(responseJson);

        return responseJson;

    } on Exception catch (e) {

      print(e);
      throw Exception(e);
      // TODO
    }
  }

  showSingleTask(token, id) async {
    try {
      var response =
          await client.get(Uri.parse("https://project.siefhesham.tech/api/v1/tasks/$id"), headers: {
        "content-type": "application/json",
        'Authorization': 'Bearer $token',
      });
      var responseJson = jsonDecode(response.body);
      return responseJson;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
  confirmTask(token, id) async {
    try {
      var response =
      await client.put(Uri.parse("https://project.siefhesham.tech/api/v1/tasks/$id"), headers: {
        "content-type": "application/json",
        'Authorization': 'Bearer $token',
      });
      var responseJson = jsonDecode(response.body);
      return responseJson;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  getChat(token) async {
    try {
      var response = await client.get(
        Uri.parse("${baseUrl}v1/render-messages"),
        headers: {
          'Content-Type': 'application/vnd.api+json',
          'Accept': 'application/vnd.api+json',
          'Authorization': 'Bearer $token',
        },
      );
      var responseJson = jsonDecode(response.body);
      if(responseJson['message']=="لا يوجد رسايل"){
        return [];
      }
      else{
        return responseJson["data"];
      }
    } on Exception catch (e) {
      throw Exception(e);

    }
  }

}
