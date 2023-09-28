import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:shopifyy/screens/home.dart';
import 'package:shopifyy/screens/startScreen.dart';
import 'package:shopifyy/screens/welcome.dart';

class AuthController extends GetxController {
  static AuthController get instance => Get.find();
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    // TODO: implement onReady
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
    super.onReady();
  }

  _setInitialScreen(User? user) {
    user == null ? Get.offAll(Start()) : Get.offAll(HomePage());
  }

  Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      print(e.code);
    }
  }

  Future<void> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      print(e.code);
    }
  }

  Future<void> logout() async {
    await _auth.signOut();
  }
}
