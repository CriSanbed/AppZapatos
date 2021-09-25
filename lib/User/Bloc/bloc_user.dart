import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:app_zapatos/User/Repository/auth_repository.dart';


// CREANDO LA CLASE
class UserBloc implements Bloc {
  // defino una variable que contenga la clase AuthRepository
  final _authRepository = AuthRepository();
  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();

  Stream<User?>? get authStatus => streamFirebase;

  Future<UserCredential> signIn() {
    return _authRepository.signInFirebase();
  }

  @override
  void dispose() {}
}
