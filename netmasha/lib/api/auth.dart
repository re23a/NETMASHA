import 'package:http/http.dart' as http;
import 'package:netmasha/api/api_all_methods.dart';

class Auth extends Apis {
  final String _registration = '/auth/create_account';
  final String _verification = '/auth/otp';
  final String _login = '/auth/login';
  final String _convertToProvider = '/auth/convert_To_Service_Provider';

  Future<http.Response> postRegistration(body) async {
    try {
      final http.Response response = await postMethod(
        body: body,
        endpoint: _registration,
      );
      return response;
    } catch (error) {
      print('Error during Registration: $error');
      throw error;
    }
  }

  Future<http.Response> postVerification(body) async {
    try {
      final http.Response response = await postMethod(
        body: body,
        endpoint: _verification,
      );
      return response;
    } catch (error) {
      print('Error during Verification: $error');
      throw error;
    }
  }

  Future<http.Response> postLogin(body) async {
    try {
      final http.Response response = await postMethod(
        body: body,
        endpoint: _login,
      );
      return response;
    } catch (error) {
      print('Error during login: $error');
      throw error;
    }
  }

  Future<http.Response> postConvertToProvider(body) async {
    try {
      final http.Response response = await postMethod(
        body: body,
        endpoint: _convertToProvider,
      );
      return response;
    } catch (error) {
      print('Error during ConvertToProvider: $error');
      throw error;
    }
  }
}
