import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:connectivity/connectivity.dart';

class MobileDataInterceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) async {
    final connectivityResult = await Connectivity().checkConnectivity();

    final isMobile = connectivityResult == ConnectivityResult.mobile;

    final isLargFile = request.url.contains(RegExp(r'(/large|/video|/posts)'));

    if (isMobile && isLargFile) {
      throw MobileDataCostException();
    }

    

    return request;
  }
}

class MobileDataCostException implements Exception {
  final message =
      'Downloading large files on a mobile data connection may incur costs.';

  @override
  String toString() => message;
}
