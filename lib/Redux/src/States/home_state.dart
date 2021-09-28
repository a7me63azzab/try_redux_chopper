import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:built_collection/built_collection.dart';
import 'package:try_chopper/Redux/src/Models/home_model/built_post.dart';

@immutable
class HomeState extends Equatable {
  final bool isLoading;
  final bool hasError;
  final dynamic error;
  final BuiltList<BuiltPost> allPosts;

  HomeState(
      {required this.isLoading,
      required this.hasError,
      required this.error,
      required this.allPosts});

  factory HomeState.initial() {
    return HomeState(
        isLoading: false,
        hasError: false,
        error: null,
        allPosts: BuiltList<BuiltPost>());
  }

  HomeState copyWith(
      {bool? isLoading,
      bool? hasError,
      dynamic error,
      BuiltList<BuiltPost>? allPosts}) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
      hasError: hasError ?? this.hasError,
      error: error ?? this.error,
      allPosts: allPosts ?? this.allPosts,
    );
  }

  @override
  List<Object?> get props => [isLoading, hasError, error, allPosts];
}
