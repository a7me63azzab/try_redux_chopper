// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$PostApiService extends PostApiService {
  _$PostApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PostApiService;

  @override
  Future<Response<BuiltList<BuiltPost>>> getPosts() {
    final $url = '/posts';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltList<BuiltPost>, BuiltPost>($request);
  }

  @override
  Future<Response<BuiltPost>> getPost(int? id) {
    final $url = '/posts/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltPost, BuiltPost>($request);
  }

  @override
  Future<Response<BuiltPost>> postPost(BuiltPost body) {
    final $url = '/posts';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<BuiltPost, BuiltPost>($request);
  }
}
