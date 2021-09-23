library build_user_data;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:try_chopper/model/serializers.dart';

part 'built_user_data.g.dart';

abstract class BuiltUserData
    implements Built<BuiltUserData, BuiltUserDataBuilder> {
  // fields go here
  int get userId;
  String get userName;
  String get userPhone;
  String get userMail;

  BuiltUserData._();

  factory BuiltUserData([updates(BuiltUserDataBuilder b)]) = _$BuiltUserData;

  String toJson() {
    return json.encode(serializers.serializeWith(BuiltUserData.serializer, this));
  }

  static BuiltUserData? fromJson(String jsonString) {
    return serializers.deserializeWith(BuiltUserData.serializer, json.decode(jsonString));
  }

  static Serializer<BuiltUserData> get serializer => _$builtUserDataSerializer;
}



