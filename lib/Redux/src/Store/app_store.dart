import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:try_chopper/Redux/src/States/home_state.dart';
import 'package:try_chopper/Redux/src/States/login_states.dart';
import 'package:try_chopper/Redux/src/States/post_state.dart';

@immutable
class AppState extends Equatable {
  final HomeState homeState;
  final SinglePostState singlePostState;
  final LoginState loginState;
  final Exception? error;

  AppState({
    required this.homeState,
    required this.singlePostState,
    required this.loginState,
    required this.error,
  });

  factory AppState.initial() {
    return AppState(
      homeState: HomeState.initial(),
      singlePostState: SinglePostState.initial(),
      loginState: LoginState.initial(),
      error: null,
    );
  }

  @override
  List<Object?> get props => [homeState, singlePostState, loginState,error];
}
