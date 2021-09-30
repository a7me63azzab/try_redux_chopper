library build_login;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

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

  static Serializer<BuiltUser> get serializer => _$builtUserSerializer;
}

abstract class BuiltBranch implements Built<BuiltBranch, BuiltBranchBuilder> {
  // fields go here
  int get id;
  String get name;

  BuiltBranch._();

  factory BuiltBranch([updates(BuiltBranchBuilder b)]) = _$BuiltBranch;

  static Serializer<BuiltBranch> get serializer => _$builtBranchSerializer;
}

abstract class BuiltAuthToken
    implements Built<BuiltAuthToken, BuiltAuthTokenBuilder> {
  // fields go here
  String get token_type;
  String get access_token;
  BuiltAuthToken._();

  factory BuiltAuthToken([updates(BuiltAuthTokenBuilder b)]) = _$BuiltAuthToken;

  static Serializer<BuiltAuthToken> get serializer =>
      _$builtAuthTokenSerializer;
}
