import 'package:chopper/chopper.dart';

class CustomErrorConverter implements Converter {
  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(Response response) {
    var body = response.body;
    // Convert body to BodyType however you like
    return response.copyWith<BodyType>(body: body);
  }

  @override
  Request convertRequest(Request request) {
    var body = request.body;
    // Convert body to String however you like
    return request.copyWith(body: body);
  }
}
