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
  // 10.90.9.68 -> 기기로 직접 돌리면 localhost가 기기 자체를 가리킴. 제대로 테스트할 때에는 직접 주소 작성해주어야함
  final url = Uri.http('localhost:4000', '/api/$path', params);
  http.Response response = await http.get(url);

  if (response.statusCode != 200) {
    debugPrint("Request failed with status: ${response.statusCode}.");
  } else {
    Map<String, dynamic> res = jsonDecode(response.body);
    return res;
  }
}
