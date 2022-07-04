import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignController extends GetxController {
  var googleSignIn = GoogleSignIn();
  var googleAccount = Rx<GoogleSignInAccount?>(null);

  login() async {
    googleAccount.value = await googleSignIn.signIn();
    return true;
  }

  logout() {
    googleSignIn.signOut();
  }
}
