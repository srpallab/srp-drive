import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import 'storage_keys.dart';
import 'storage_service.dart';

class UserStore extends GetxController {
  static UserStore get to => Get.find();
  final RxBool _isLogin = false.obs;
  final Rx<User?> profile = Rx<User?>(FirebaseAuth.instance.currentUser);
  bool get isLogin => _isLogin.value;

  @override
  void onInit() {
    super.onInit();
    if (profile.value != null) _isLogin.value = true;
  }

  Future<String> getProfile() async {
    return StorageService.to.getString(StorageKeys.STORAGE_USER_PROFILE_KEY);
  }

  Future<void> saveProfile(User user) async {
    _isLogin.value = true;
    await StorageService.to.setString(
      StorageKeys.STORAGE_USER_PROFILE_KEY,
      jsonEncode(user),
    );
    profile.value = user;
  }
}
