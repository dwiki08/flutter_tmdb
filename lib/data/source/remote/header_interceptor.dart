import 'dart:async';

import 'package:chopper/chopper.dart';

class HeaderInterceptor implements Interceptor {
  HeaderInterceptor(this.token);

  final String token;

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(
      Chain<BodyType> chain) async {
    Request modifiedRequest = chain.request;
    modifiedRequest =
        applyHeader(modifiedRequest, 'Authorization', 'Bearer $token');
    modifiedRequest =
        applyHeader(modifiedRequest, 'content-type', 'application/json');
    return chain.proceed(modifiedRequest);
  }
}
