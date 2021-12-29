import 'package:flutter/material.dart';
import 'common.dart';

Future<void> info(Map<String, dynamic> params) {
  return callApi('session/info', params);
}

Future<dynamic> login(String? redirectUrl) async {
  final res = await callApi('session/login_info', {
    'redirect': redirectUrl,
  });

  String uri = res['url'].split("//")[1];
  int idx = uri.indexOf('/');
  String authority = uri.substring(0, idx);
  String unencodedPath = uri.substring(idx);

  String url = Uri.https(authority, unencodedPath, res['qs']).toString();
  debugPrint(url);
  // http.Response loginResp = await http.get(url);
  return url;
}
