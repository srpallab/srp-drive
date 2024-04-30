// ignore_for_file: overridden_fields
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/store/user_store.dart';
import '../../routes/app_pages.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  int? priority = 0;
  AuthMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    final bool isLoggedIn = UserStore.to.isLogin;
    log("Is Logged In: $isLoggedIn");
    if (isLoggedIn) {
      return const RouteSettings(name: Routes.HOME);
    } else {
      return null;
    }
  }
}
