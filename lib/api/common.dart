import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<dynamic> callApi(String path, [params, method]) async {
  // final isGet = ((method ?? 'get') == 'get');
  // final options = {
  //   // 'method': method ?? 'get',
  //   // 'url': '//localhost:4000/api/$path',
  //   'params': isGet ? params ?? {} : null,
  //   'data': !isGet ? params ?? {} : null,
  //   'withCredentials': true,
  // };

  // final uri = Uri(
  //   scheme: 'https',
  //   host: '10.0.2.2:4000',
  //   path: '/api/$path',
  //   queryParameters: params,
  // );

  // final url = Uri.https('localhost:4000', '/api/$path', options);
  String unencodedPath = '/api/v1';
  int port = 3000;

  if (path == 'session/login_info') {
    port = 4000;
    unencodedPath = '/api';
  }
  // debugPrint('localhost:$port$unencodedPath/$path');

  final url = Uri.http('localhost:$port', '$unencodedPath/$path', params);
  http.Response response = await http.get(url);

  if (response.statusCode != 200) {
    debugPrint("Request failed with status: ${response.statusCode}.");
  } else {
    final res = jsonDecode(response.body);
    return res;
  }
}
