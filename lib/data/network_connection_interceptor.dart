import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:connectivity/connectivity.dart';

class CheckNetworkConnectionInterceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) async {
    if (!await checkInternetConnection()) {
      throw NoInternetConnectionException();
    }

    return request;
  }

  Future<bool> checkInternetConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }
}

class NoInternetConnectionException implements Exception {
  final message = 'Please check your internet connection';
  @override
  String toString() => message;
}
