library build_login;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:try_chopper/Redux/src/Models/serializers/serializers.dart';

part 'built_login.g.dart';

abstract class BuiltLogin implements Built<BuiltLogin, BuiltLoginBuilder> {
  // fields go here
  String get status;
  String get message;
  BuiltUser get data;

  BuiltLogin._();

  factory BuiltLogin([updates(BuiltLoginBuilder b)]) = _$BuiltLogin;

  static Serializer<BuiltLogin> get serializer => _$builtLoginSerializer;
}

abstract class BuiltUser implements Built<BuiltUser, BuiltUserBuilder> {
  // fields go here
  int get id;
  String get user_type;
  String get identity_number;
  String get username;
  bool get is_notified;
  BuiltBranch get branch;
  String get address;
  String get phone;
  String get profile_image;
  String get created_at;
  BuiltAuthToken get token;

  BuiltUser._();

  factory BuiltUser([updates(BuiltUserBuilder b)]) = _$BuiltUser;

  String toJson() {
    return json.encode(serializers.serializeWith(BuiltUser.serializer, this));
  }

  static BuiltUser? fromJson(String jsonString) {
    return serializers.deserializeWith(
        BuiltUser.serializer, json.decode(jsonString));
  }

  static Serializer<BuiltUser> get serializer => _$builtUserSerializer;
}

abstract class BuiltBranch implements Built<BuiltBranch, BuiltBranchBuilder> {
  // fields go here
  int get id;
  String get name;

  BuiltBranch._();

  factory BuiltBranch([updates(BuiltBranchBuilder b)]) = _$BuiltBranch;

  String toJson() {
    return json.encode(serializers.serializeWith(BuiltBranch.serializer, this));
  }

  static BuiltBranch? fromJson(String jsonString) {
    return serializers.deserializeWith(
        BuiltBranch.serializer, json.decode(jsonString));
  }

  static Serializer<BuiltBranch> get serializer => _$builtBranchSerializer;
}

abstract class BuiltAuthToken
    implements Built<BuiltAuthToken, BuiltAuthTokenBuilder> {
  // fields go here
  String get token_type;
  String get access_token;
  BuiltAuthToken._();

  factory BuiltAuthToken([updates(BuiltAuthTokenBuilder b)]) = _$BuiltAuthToken;

  String toJson() {
    return json
        .encode(serializers.serializeWith(BuiltAuthToken.serializer, this));
  }

  static BuiltAuthToken? fromJson(String jsonString) {
    return serializers.deserializeWith(
        BuiltAuthToken.serializer, json.decode(jsonString));
  }

  static Serializer<BuiltAuthToken> get serializer =>
      _$builtAuthTokenSerializer;
}
