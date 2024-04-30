import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../core/utils/user_collection.dart';
import '../../../data/store/user_store.dart';
import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<void> login() async {
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    if (googleUser != null) {
      GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );
      UserCredential userCredential =
          await firebaseAuth.signInWithCredential(credential);
      User? user = userCredential.user;
      if (user != null) {
        userCollection.doc(user.uid).set({
          'uid': user.uid,
          "name": user.displayName,
          'email': user.email,
          'profile_pic': user.photoURL,
          'created_at': DateTime.now(),
        }).then(
          (value) => UserStore.to.saveProfile(user).then(
                (value) => Get.offAllNamed(Routes.HOME),
              ),
        );
      }
    }
  }
}
