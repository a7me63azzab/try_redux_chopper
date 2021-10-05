library login_state;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:try_chopper/Redux/src/Models/LoginModel/built_login.dart';
import 'package:try_chopper/Redux/src/Models/serializers/serializers.dart';

part 'login_states.g.dart';

abstract class LoginState implements Built<LoginState, LoginStateBuilder> {
  // fields go here
  bool get isLoading;
  bool get hasError;
  String? get error;
  BuiltLogin? get loginData;

  LoginState._();

  factory LoginState([updates(LoginStateBuilder b)]) = _$LoginState;

  factory LoginState.initial() {
    return LoginState((p) => p
      ..isLoading = false
      ..hasError = false
      ..error = null
      ..loginData = null);
  }

  String toJson() {
    return json.encode(serializers.serializeWith(LoginState.serializer, this));
  }

  static LoginState? fromJson(String jsonString) {
    return serializers.deserializeWith(
        LoginState.serializer, json.decode(jsonString));
  }

  static Serializer<LoginState> get serializer => _$loginStateSerializer;
}
