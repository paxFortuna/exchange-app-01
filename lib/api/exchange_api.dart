import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/exchange_result.dart';

class ExchangeApi {
  Future<ExchangeResult> getExchangeResult(String code) async {
    Uri url = Uri.parse(
        'https://v6.exchangerate-api.com/v6/95fc577304bbec77d7aa457c/latest/$code');

    http.Response response = await http.get(url);

    String jsonString = response.body;

    Map<String, dynamic> json = jsonDecode(jsonString);
    return ExchangeResult.fromJson(json);
  }
}