import 'package:chopper/chopper.dart';
import 'package:chopper_built_value/chopper_built_value.dart';
import 'package:try_chopper/Redux/src/Models/LoginModel/built_login.dart';
import 'package:try_chopper/Redux/src/Models/LoginModel/login_input_data.dart';
import 'package:try_chopper/Redux/src/Models/LogoutData/logout_data_model.dart';
import 'package:try_chopper/Redux/src/Models/built_error.dart';
import 'package:try_chopper/Redux/src/Models/logout_model/logout_model.dart';
import 'package:try_chopper/Redux/src/Models/serializers/serializers.dart';
import 'package:try_chopper/data/network_connection_interceptor.dart';
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

  //@Header("foo") String bar

  @Post(
    path: 'auth/logout',
    headers: {
      "Content-Type": "application/json",
      "Accept": "application/json",
    },
  )
  Future<Response<LogoutModel>> userLogout(
      @Body() LogoutDataModel body,
      @Header('Authorization') String authToken,
      @Header('Accept-Language') String lang);

  static AuthApiService create() {
    final client = ChopperClient(
      baseUrl: "https://nagd.elsaed.aait-d.com",
      services: [
        _$AuthApiService(),
      ],
      // converter: BuiltValueConverter(serializers),
      converter: BuiltValueConverter(serializers),
      errorConverter:
          BuiltValueConverter(serializers, errorType: BuiltErrorResponse),
      interceptors: [
        HttpLoggingInterceptor(),
        CheckNetworkConnectionInterceptor(),
        // MobileDataInterceptor(),
      ],
    );

    return _$AuthApiService(client);
  }
}
