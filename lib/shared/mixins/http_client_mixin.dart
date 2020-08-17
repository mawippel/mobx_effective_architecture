import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_effective_architecture/shared/providers/http_client.dart';

mixin HttpClientMixin {
  Dio getClient() {
    return GetIt.I.get<HttpClient>().client;
  }
}
