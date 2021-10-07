// {
//     "status": "true",
//     "message": "تم تسجيل الخروج بنجاح",
//     "data": null
// }

library logout_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:try_chopper/Redux/src/Models/serializers/serializers.dart';

part 'logout_model.g.dart';

abstract class LogoutModel implements Built<LogoutModel, LogoutModelBuilder> {
  // fields go here
  String get status;
  String get message;
  Null? get data;

  LogoutModel._();

  factory LogoutModel([updates(LogoutModelBuilder b)]) = _$LogoutModel;



  String toJson() {
    return json.encode(serializers.serializeWith(LogoutModel.serializer, this));
  }

  static LogoutModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        LogoutModel.serializer, json.decode(jsonString));
  }

  static Serializer<LogoutModel> get serializer => _$logoutModelSerializer;
}
