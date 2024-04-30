import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/theme/layouts.dart';
import '../../../core/theme/my_text_styles.dart';
import '../../../core/values/images.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return blankLayout(
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(LocalImages.loginImage, height: 250),
            Text(
              "Share Your Files Easily With 'Vai Brothers'.",
              style: MyTextStyles.titleText,
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: controller.login,
              child: SizedBox(
                width: Get.width * 0.65,
                child: const Text(
                  "Login With Google",
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
