import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netmasha/api/api_all_methods.dart';
import 'package:netmasha/models/experience_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Experience extends Apis {
  final String _add = '/experience/add';
  final String _view = '/experience/view';

  Future<http.Response> postAdd(body) async {
    try {
      final http.Response response = await postMethod(
        body: body,
        endpoint: _add,
      );
      return response;
    } catch (error) {
      print('Error during Adding exp: $error');
      throw error;
    }
  }

  Future<List<ExperienceModel>> getView() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      String token = prefs.getString("token") ?? "";
      final http.Response response = await getMethod(
        endpoint: _view,
        token: token,
      );
      List<ExperienceModel> experience = [];
      final body = jsonDecode(response.body)['msg'];
      for (var element in body) {
        experience.add(ExperienceModel.fromJson(element));
      }
      return experience;
    } catch (error) {
      print('Error during Viewing exp: $error');
      throw error;
    }
  }
}
