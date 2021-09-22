import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:try_chopper/data/mobile_data_interceptor.dart';
import 'package:try_chopper/data/network_connection_interceptor.dart';

// Source code generation in Dart works by creating a new file which contains a "companion class".
// In order for the source gen to know which file to generate and which files are "linked", you need to use the part keyword.
part 'post_api_service.chopper.dart';

@ChopperApi(baseUrl: '/posts')
abstract class PostApiService extends ChopperService {
  @Get()
  Future<Response> getPosts();

  @Get(path: '/{id}')
  // Query parameters are specified the same way as @Path
  // but obviously with a @Query annotation
  Future<Response> getPost(@Path('id') int id);

  // Put & Patch requests are specified the same way - they must contain the @Body
  @Post()
  Future<Response> postPost(
    @Body() Map<String, dynamic> body,
  );

  static PostApiService create() {
    final client = ChopperClient(
      baseUrl: "https://jsonplaceholder.typicode.com",
      services: [
        _$PostApiService(),
      ],
      converter: JsonConverter(),
      interceptors: [
        HeadersInterceptor({'Cache-Control': 'no-cache'}),
        HttpLoggingInterceptor(),
        CurlInterceptor(),
        MobileDataInterceptor(),
        CheckNetworkConnectionInterceptor(),
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
