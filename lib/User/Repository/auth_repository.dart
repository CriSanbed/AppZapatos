import 'package:app_zapatos/User/Repository/auth_firebase.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final _authFirebase = AuthFirebase();

  //llamo al metodo signIn de la clase AuthFirebase
  Future<UserCredential> signInFirebase() => _authFirebase.singIn();
}
