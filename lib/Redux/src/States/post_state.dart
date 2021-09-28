import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:try_chopper/Redux/src/Models/home_model/built_post.dart';

@immutable
class SinglePostState extends Equatable {
  final bool isLoading;
  final bool hasError;
  final dynamic error;
  final BuiltPost? post;

  SinglePostState(
      {required this.isLoading,
      required this.hasError,
      required this.error,
      required this.post});

  factory SinglePostState.initial() {
    return SinglePostState(
        isLoading: false,
        hasError: false,
        error: null,
        post:null);
  }

  SinglePostState copyWith(
      {bool? isLoading,
      bool? hasError,
      dynamic error,
      BuiltPost? post}) {
    return SinglePostState(
      isLoading: isLoading ?? this.isLoading,
      hasError: hasError ?? this.hasError,
      error: error ?? this.error,
      post: post ?? this.post,
    );
  }

  @override
  List<Object?> get props => [isLoading, hasError, error, post];
}
