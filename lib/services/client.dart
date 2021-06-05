import 'dart:convert';
import 'package:http/http.dart' as http;

class APIClient {
  String publicURL = "https://m2m-gateway.herokuapp.com/test";
  String testURL = "http://jsonplaceholder.typicode.com/posts";
  String url = "";

  Future getTestAPIEndpoint() async {
    Uri uri = Uri.parse(publicURL);
    http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      print(response.body);
      List<dynamic> listOfStuff =
          json.decode(response.body).map((val) => extractTask(val)).toList();
      return listOfStuff;
    } else {
      print(response.statusCode);
      print("And error on APIClient has occurred");
    }
  }

  String extractTask(Map<String, dynamic> rawJson) {
    return rawJson["todo"];
  }
}
