import 'package:chopper/chopper.dart';
import 'package:chopper_built_value/chopper_built_value.dart';
import 'package:flutter/material.dart';
import 'package:try_chopper/data/mobile_data_interceptor.dart';
import 'package:try_chopper/data/network_connection_interceptor.dart';
import 'package:try_chopper/model/built_post.dart';
import 'package:built_collection/built_collection.dart';
import 'package:try_chopper/model/serializers.dart';
// Source code generation in Dart works by creating a new file which contains a "companion class".
// In order for the source gen to know which file to generate and which files are "linked", you need to use the part keyword.
part 'post_api_service.chopper.dart';

@ChopperApi(baseUrl: '/posts')
abstract class PostApiService extends ChopperService {
  @Get()
  Future<Response<BuiltList<BuiltPost>>> getPosts();

  @Get(path: '/{id}')
  // Query parameters are specified the same way as @Path
  // but obviously with a @Query annotation
  Future<Response<BuiltPost>> getPost(@Path('id') int? id);

  // Put & Patch requests are specified the same way - they must contain the @Body
  @Post()
  Future<Response<BuiltPost>> postPost(
    @Body() BuiltPost body,
  );

  static PostApiService create() {
    final client = ChopperClient(
      baseUrl: "https://jsonplaceholder.typicode.com",
      services: [
        _$PostApiService(),
      ],
      // converter: BuiltValueConverter(serializers),
      converter: BuiltValueConverter(serializers),
      interceptors: [
        // HeadersInterceptor({'Cache-Control': 'no-cache'}),
        HttpLoggingInterceptor(),
        // CurlInterceptor(),
        // MobileDataInterceptor(),
        // CheckNetworkConnectionInterceptor(),
        // (Request request) async {
        //   if (request.method == HttpMethod.Get) {
        //     chopperLogger.info("------ Post request ------");
        //   }

        //   return request;
        // },
      ],
    );

    return _$PostApiService(client);
  }
}
