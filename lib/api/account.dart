import 'common.dart';
import 'package:flutter/material.dart';

Future<List<dynamic>> getAccountList() async {
  const params = {
    'reseller_seq': '0',
    'addCompany': 'true',
  };

  final res = await callApi('account', params);

  return res;
}
