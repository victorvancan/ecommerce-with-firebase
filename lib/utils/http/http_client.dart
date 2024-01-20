import 'package:http/http.dart' as http;
import 'dart:convert';

class THttpHelper
{
  static const String _baseUrl = '';//replace with API base URL

  // helper method to make a get Request
  static Future<Map<String, dynamic>> get(String endpoint) async{
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  //helper method to make Post request
    static Future<Map<String, dynamic>> post(String endpoint, dynamic data) async{
    final response = await http.post(Uri.parse('$_baseUrl/$endpoint'),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode(data)
    );
    return _handleResponse(response);
  }

    //helper method to make Put request
    static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async{
    final response = await http.put(Uri.parse('$_baseUrl/$endpoint'),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode(data)
    );
    return _handleResponse(response);
  }

    // helper method to make a delete Request
  static Future<Map<String, dynamic>> delete(String endpoint) async{
    final response = await http.delete(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  // Handle the HTTP response
  static Map<String, dynamic> _handleResponse(http.Response response)
  {
    if(response.statusCode == 200)
    {
      return json.decode(response.body);
    }
    else
    {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}