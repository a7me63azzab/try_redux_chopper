// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$AuthApiService extends AuthApiService {
  _$AuthApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AuthApiService;

  @override
  Future<Response<BuiltLogin>> userLogin(BuiltLoginInputData body) {
    final $url = '/api/auth/login';
    final $headers = {
      'Accept-Language': 'ar',
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BuiltLogin, BuiltLogin>($request);
  }

  @override
  Future<Response<LogoutModel>> userLogout(
      LogoutDataModel body, String authToken, String lang) {
    final $url = '/api/auth/logout';
    final $headers = {
      'Authorization': authToken,
      'Accept-Language': lang,
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<LogoutModel, LogoutModel>($request);
  }
}
