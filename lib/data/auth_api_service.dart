import 'package:chopper/chopper.dart';
import 'package:chopper_built_value/chopper_built_value.dart';
import 'package:try_chopper/Redux/src/Models/LoginModel/built_login.dart';
import 'package:try_chopper/Redux/src/Models/LoginModel/login_input_data.dart';

import 'package:try_chopper/Redux/src/Models/serializers/serializers.dart';

part 'auth_api_service.chopper.dart';

@ChopperApi(baseUrl: '/api/')
abstract class AuthApiService extends ChopperService {
  @Post(
    path: 'auth/login',
    headers: {
      "Accept-Language": "ar",
      "Content-Type": "application/json",
      "Accept": "application/json",
    },
  )
  Future<Response<BuiltLogin>> userLogin(
    @Body() BuiltLoginInputData body,
  );

  static AuthApiService create() {
    final client = ChopperClient(
      baseUrl: "https://nagd.elsaed.aait-d.com",
      services: [
        _$AuthApiService(),
      ],
      // converter: BuiltValueConverter(serializers),
      converter: BuiltValueConverter(serializers),
      interceptors: [
        HttpLoggingInterceptor(),
      ],
    );

    return _$AuthApiService(client);
  }
}
