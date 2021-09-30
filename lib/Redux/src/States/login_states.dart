import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:try_chopper/Redux/src/Models/LoginModel/built_login.dart';
import 'package:try_chopper/Redux/src/Models/home_model/built_post.dart';

@immutable
class LoginState extends Equatable {
  final bool isLoading;
  final bool hasError;
  final dynamic error;
  final BuiltLogin? loginData;

  LoginState(
      {required this.isLoading,
      required this.hasError,
      required this.error,
      required this.loginData});

  factory LoginState.initial() {
    return LoginState(
        isLoading: false,
        hasError: false,
        error: null,
        loginData:null);
  }

  LoginState copyWith(
      {bool? isLoading,
      bool? hasError,
      dynamic error,
      BuiltLogin? loginData}) {
    return LoginState(
      isLoading: isLoading ?? this.isLoading,
      hasError: hasError ?? this.hasError,
      error: error ?? this.error,
      loginData: loginData ?? this.loginData,
    );
  }

  @override
  List<Object?> get props => [isLoading, hasError, error, loginData];
}
