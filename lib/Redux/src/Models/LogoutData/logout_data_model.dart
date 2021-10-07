library logout_data_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:try_chopper/Redux/src/Models/serializers/serializers.dart';

part 'logout_data_model.g.dart';

abstract class LogoutDataModel
    implements Built<LogoutDataModel, LogoutDataModelBuilder> {
  // fields go here
  String get device_type;
  String get device_token;

  LogoutDataModel._();

  factory LogoutDataModel([updates(LogoutDataModelBuilder b)]) =
      _$LogoutDataModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(LogoutDataModel.serializer, this));
  }

  static LogoutDataModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        LogoutDataModel.serializer, json.decode(jsonString));
  }

  static Serializer<LogoutDataModel> get serializer =>
      _$logoutDataModelSerializer;
}
