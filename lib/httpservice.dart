library httpservice;

import 'package:http/http.dart' as http;

class HttpService {
  final String url;

  HttpService(this.url);

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
}
