library httpservice;

import 'package:http/http.dart' as http;

class HttpService {
  final String url;

  HttpService(this.url);

  //GET METHOD
  Future getContents() async {
    var urlx = Uri.parse(url);
    try {
      var response = await http.get(urlx);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var data = response.body;
        return data;
      } else {
        print("Error Fetching DATA");
      }
    } catch (e) {
      print("Error Fetching DATA");
    }
  }

  //POST METHOD
  Future<void> postContents(
      {required Map<String, String> headers, required String body}) async {
    var urlx = Uri.parse(url);
    try {
      var response = await http.post(urlx, headers: headers, body: body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        print('Body: ${response.body}');
        print('Message: Successful');
      } else {
        print("Error Fetching DATA");
      }
    } catch (e) {
      print("Error Fetching DATA");
    }
  }

  //PUT METHOD
  Future<void> putContents(
      {required Map<String, String> headers, required String body}) async {
    var urlx = Uri.parse(url);
    try {
      var response = await http.put(urlx, headers: headers, body: body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        print('Body: ${response.body}');
        print('Message: Successful');
      } else {
        print("Error Fetching DATA");
      }
    } catch (e) {
      print("Error Fetching DATA");
    }
  }

  //PATCH METHOD
  Future<void> patchContents(
      {required Map<String, String> headers, required String body}) async {
    var urlx = Uri.parse(url);
    try {
      var response = await http.patch(urlx, headers: headers, body: body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        print('Body: ${response.body}');
        print('Message: Successful');
      } else {
        print("Error Fetching DATA");
      }
    } catch (e) {
      print("Error Fetching DATA");
    }
  }

  //DELETE METHOD
  Future<void> deleteContents() async {
    var urlx = Uri.parse(url);
    try {
      var response = await http.delete(urlx);
      if (response.statusCode == 200) {
        print(response.statusCode);
        print('Body: ${response.body}');
        print('Message: Successful');
      } else {
        print("Error Fetching DATA");
      }
    } catch (e) {
      print("Error Fetching DATA");
    }
  }
}
