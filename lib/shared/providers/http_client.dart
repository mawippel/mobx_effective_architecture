import 'package:dio/dio.dart';

class HttpClient {

  HttpClient(this.client, String baseUrl) {
    client.options.baseUrl = baseUrl;
    client.options.connectTimeout = 5000;
  }

  final Dio client;
  
}