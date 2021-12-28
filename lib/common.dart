import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<dynamic> callApi(String path, [params, method]) async {
  final isGet = ((method ?? 'get') == 'get');
  final options = {
    // 'method': method ?? 'get',
    // 'url': '//localhost:4000/api/$path',
    'params': isGet ? params ?? {} : 'undefined',
    'data': !isGet ? params ?? {} : 'undefined',
    'withCredentials': true,
  };

  var uri = Uri(
    scheme: 'https',
    host: '//localhost:4000',
    path: '/api/$path',
    queryParameters: params,
  );

  var url = Uri.https('//localhost:4000', '/api/$path', options);

  var response = await http.get(url);

  if (response.statusCode != 200) {
    return response.body;
  } else {
    debugPrint("Request failed with status: ${response.statusCode}.");
  }
}
