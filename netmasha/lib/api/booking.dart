import 'package:http/http.dart' as http;
import 'package:netmasha/api/api_all_methods.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Booking extends Apis {
  final String _post = '/booking/post';
  final String _get = '/booking/get';

  Future<http.Response> postAdd(body) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      String token = prefs.getString("token") ?? "";
      final http.Response response =
          await postMethod(body: body, endpoint: _post, token: token);
      return response;
    } catch (error) {
      print('Error during posting booking: $error');
      throw error;
    }
  }

  Future<http.Response> getView() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      String token = prefs.getString("token") ?? "";
      final http.Response response = await getMethod(
        endpoint: _get,
        token: token,
      );
      print(response.body);
      return response;
    } catch (error) {
      print('Error during getting booking: $error');
      throw error;
    }
  }
}
