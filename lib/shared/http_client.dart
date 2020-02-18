import 'package:dio/dio.dart';

class HttpClient {

  HttpClient(this.client, String BASE_URL) {
    client.options.baseUrl = BASE_URL;
    client.options.connectTimeout = 5000;
  }

  final Dio client;
  
}