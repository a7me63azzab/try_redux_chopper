library built_login_input_data;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:try_chopper/Redux/src/Models/serializers/serializers.dart';

part 'login_input_data.g.dart';

abstract class BuiltLoginInputData
    implements Built<BuiltLoginInputData, BuiltLoginInputDataBuilder> {
  // fields go here
  String get identifier;
  String get password;
  String get device_type;
  String get device_token;

  BuiltLoginInputData._();

  factory BuiltLoginInputData([updates(BuiltLoginInputDataBuilder b)]) =
      _$BuiltLoginInputData;

  String toJson() {
    return json.encode(
        serializers.serializeWith(BuiltLoginInputData.serializer, this));
  }

  static BuiltLoginInputData? fromJson(String jsonString) {
    return serializers.deserializeWith(
        BuiltLoginInputData.serializer, json.decode(jsonString));
  }

  static Serializer<BuiltLoginInputData> get serializer =>
      _$builtLoginInputDataSerializer;
}
