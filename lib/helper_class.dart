import 'dart:convert';
import 'package:http/http.dart' as http;
import 'model_class.dart';

class HttpService{

  HttpService._();

  static final HttpService httpService = HttpService._();



  Future<List<Covid>> fechCovidData() async {

    final String BASE_URL = "https://api.rootnet.in/covid19-in/stats/latest";

    Uri API = Uri.parse(BASE_URL);

    http.Response response = await http.get(API);


    if (response.statusCode == 200) {
      Map body = jsonDecode(response.body);

      List allData = body["data"]["regional"];

      List<Covid> res = allData
          .map(
            (e) => Covid.fromJson(e),
      )
          .toList();

      return res;
    } else {
      throw "Unable to retrieve posts.";
    }
  }
}