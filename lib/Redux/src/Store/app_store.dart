
library app_state;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:try_chopper/Redux/src/Models/serializers/serializers.dart';
import 'package:try_chopper/Redux/src/States/home_state.dart';
import 'package:try_chopper/Redux/src/States/login_states.dart';
import 'package:try_chopper/Redux/src/States/post_state.dart';

part 'app_store.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  // fields go here
  HomeState get homeState;
  PostState get postState;
  LoginState get loginState;
  String? get error;

  AppState._();

  factory AppState([updates(AppStateBuilder b)]) = _$AppState;

  factory AppState.initial() {
    return AppState((p) => p
      ..homeState = HomeState.initial().toBuilder()
      ..loginState = LoginState.initial().toBuilder()
      ..postState = PostState.initial().toBuilder()
      ..error = null);
  }

  String toJson() {
    return json.encode(serializers.serializeWith(AppState.serializer, this));
  }

  static AppState? fromJson(String? jsonString) {
    if (jsonString == null) {
      return null;
    }
    return serializers.deserializeWith(
        AppState.serializer, json.decode(jsonString));
  }

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
