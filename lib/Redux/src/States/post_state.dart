library post_state;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:try_chopper/Redux/src/Models/home_model/built_post.dart';
import 'package:try_chopper/Redux/src/Models/serializers/serializers.dart';

part 'post_state.g.dart';

abstract class PostState implements Built<PostState, PostStateBuilder> {
  // fields go here
  bool get isLoading;
  bool get hasError;
  String? get error;
  BuiltPost? get post;

  PostState._();

  factory PostState([updates(PostStateBuilder b)]) = _$PostState;

  factory PostState.initial() {
    return PostState((p) => p
      ..isLoading = false
      ..error = null
      ..hasError = false
      ..post = null);
  }

  String toJson() {
    return json.encode(serializers.serializeWith(PostState.serializer, this));
  }

  static PostState? fromJson(String jsonString) {
    return serializers.deserializeWith(
        PostState.serializer, json.decode(jsonString));
  }

  static Serializer<PostState> get serializer => _$postStateSerializer;
}
