import 'package:google_sign_in/google_sign_in.dart';
import 'package:split_it/modules/login/models/user_model.dart';

abstract class LoginService {
  Future<UserModel> googleSignIn();
}

class LoginServiceImplementation implements LoginService {
  @override
  Future<UserModel> googleSignIn() async {
    GoogleSignIn googleSignIn = GoogleSignIn(
      scopes: ['email'],
    );

    final account = await googleSignIn.signIn();
    return UserModel.google(account!);
  }
}
