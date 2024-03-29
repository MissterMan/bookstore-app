import 'package:bookstore/network/network_helper.dart';
import 'package:http/http.dart' as http;

enum RequestType { get, post, put }

class NetworkService {
  const NetworkService._();

  static Map<String, String> _getHeaders() =>
      {'Content-Type': 'application/json'};

  static Future<http.Response>? _createRequest({
    required RequestType requestType,
    required Uri uri,
    Map<String, String>? headers,
    Map<String, dynamic>? body,
  }) {
    if (requestType == RequestType.get) {
      return http.get(uri, headers: headers);
    }
  }

  static Future<http.Response?>? sendRequest({
    required RequestType requestType,
    required String url,
    Map<String, dynamic>? body,
    Map<String, String>? querryParam,
  }) async {
    try {
      final _header = _getHeaders();
      final _url = NetworkHelper.concatUrlQuerry(url, querryParam);

      final response = await _createRequest(
        requestType: requestType,
        uri: Uri.parse(_url),
        headers: _header,
        body: body,
      );

      return response;
    } catch (e) {
      print('Error - $e');
      return null;
    }
  }
}
