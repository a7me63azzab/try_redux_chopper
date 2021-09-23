library built_post;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_post.g.dart';

abstract class BuiltPost implements Built<BuiltPost, BuiltPostBuilder> {
  // fields go here
  
  
  int? get id;
  String get title;
  String get body;

  BuiltPost._();

  factory BuiltPost([updates(BuiltPostBuilder b)]) = _$BuiltPost;

  // String toJson() {
  //   return json.encode(serializers.serializeWith(BuiltPost.serializer, this));
  // }

  // static BuiltPost fromJson(String jsonString) {
  //   return serializers.deserializeWith(BuiltPost.serializer, json.decode(jsonString));
  // }

  static Serializer<BuiltPost> get serializer => _$builtPostSerializer;
}
