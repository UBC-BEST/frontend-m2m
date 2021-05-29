import 'dart:convert';
import 'package:http/http.dart' as http;

class APIClient {
  String test_url = "https://m2m-gateway.herokuapp.com/test";
  String url = "";

  Future getTestAPIEndpoint() async {
    var uri = Uri.parse(test_url);
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      print(response.body);
      String listOfStuff = json.decode(response.body).toString();
      return listOfStuff;
    } else {
      print(response.statusCode);
      print("And error on APIClient has occurred");
    }
  }
}
