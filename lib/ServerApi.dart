import 'package:http/http.dart' as http;

class ServerApi {

  Future<String> getGithubUser() async {
    String url = "https://api.github.com/users";
    return _doGet(url);
  }

  static Future<String> _doGet(String url) async {
    http.Response response = await http.get(Uri.parse(url));
    return response.body;
  }
}