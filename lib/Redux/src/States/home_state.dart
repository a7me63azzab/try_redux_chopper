library home_state;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:try_chopper/Redux/src/Models/home_model/built_post.dart';
import 'package:try_chopper/Redux/src/Models/serializers/serializers.dart';

part 'home_state.g.dart';

abstract class HomeState implements Built<HomeState, HomeStateBuilder> {
  // fields go here
  bool get isLoading;
  bool get hasError;
  String? get error;
  BuiltList<BuiltPost>? get allPosts;

  HomeState._();

  factory HomeState([updates(HomeStateBuilder b)]) = _$HomeState;


  factory HomeState.initial() {
    return HomeState((p) => p
      ..isLoading = false
      ..hasError = false
      ..error = null
      ..allPosts = ListBuilder<BuiltPost>());
  }



  String toJson() {
    return json.encode(serializers.serializeWith(HomeState.serializer, this));
  }

  static HomeState? fromJson(String jsonString) {
    return serializers.deserializeWith(
        HomeState.serializer, json.decode(jsonString));
  }

  static Serializer<HomeState> get serializer => _$homeStateSerializer;
}
