library built_error;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:try_chopper/Redux/src/Models/serializers/serializers.dart';

part 'built_error.g.dart';

abstract class BuiltErrorResponse
    implements Built<BuiltErrorResponse, BuiltErrorResponseBuilder> {
  // fields go here
  String get status;
  String get message;
  Null? get data;

  BuiltErrorResponse._();

  factory BuiltErrorResponse([updates(BuiltErrorResponseBuilder b)]) =
      _$BuiltErrorResponse;

  String toJson() {
    return json
        .encode(serializers.serializeWith(BuiltErrorResponse.serializer, this));
  }

  static BuiltErrorResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        BuiltErrorResponse.serializer, json.decode(jsonString));
  }

  static Serializer<BuiltErrorResponse> get serializer =>
      _$builtErrorResponseSerializer;
}
