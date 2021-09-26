import 'package:app_zapatos/User/UI/Screen/pantalla1.dart';
import 'package:app_zapatos/User/UI/Screen/pantalla2.dart';
import 'package:app_zapatos/User/UI/Widgets/gradiente_login.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:app_zapatos/User/Bloc/bloc_user.dart';
import 'package:app_zapatos/User/UI/Widgets/text_input.dart';

// import 'package:app_documentar/User/UI/Screen/profile.dart';
import 'package:app_zapatos/User/UI/Widgets/google_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

//CREANDO LA CLASE
class Login extends StatelessWidget {
  //constantes
  late UserBloc blocUser;
  final _controllerUsername = TextEditingController();
  final _controllerPassword = TextEditingController();

  // usando BlocProvider
  @override
  Widget build(BuildContext context) {
    blocUser = BlocProvider.of(context);
    return _controlSession();
  }

  Widget _controlSession() {
    return StreamBuilder(
        stream: blocUser.authStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData || snapshot.hasError) {
            return loginApp();
          } else {
            return Pantalla1();
          }
        });
  }

  Widget loginApp() {
    return Scaffold(
      body: Stack(
        children: [
          GradienteLogin(),
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 70.0,
                    margin: const EdgeInsets.only(top: 50.0),
                    child: const Text(
                      "TU TIENDA DE ZAPATOS\nSHOES ONLINE",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: "Quantico",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  //CONTAINER PARA TITULO
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    margin: const EdgeInsets.only(top: 15.0),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.scaleDown,
                            image: AssetImage("assets/img/login.jpg")),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        shape: BoxShape.rectangle),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 40.0,
                    margin: const EdgeInsets.only(top: 15.0),
                    child: const Text(
                      "LOGIN",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  //CONTAINER PARA TITULO
                ],
              ),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 15.0),
                    child: TextInput(
                        hint: "Username or Email",
                        inputType: TextInputType.name,
                        controller: _controllerUsername,
                        maxLineas: 1),
                  ),
                  //CONTAINER PARA EL USERNAME
                ],
              ),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 15.0),
                    child: TextInput(
                        hint: "Password",
                        inputType: TextInputType.text,
                        controller: _controllerPassword,
                        maxLineas: 1),
                  ),
                  //CONTAINER PARA EL PASSWORD
                ],
              ),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: MaterialButton(
                        minWidth: 100.0,
                        height: 40.0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        onPressed: () {},
                        color: Colors.cyan,
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 20.0,
                    margin: const EdgeInsets.only(top: 15.0),
                    child: const Text(
                      "or",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 26),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: GoogleButton(
                        textC: 'Login with Google',
                        widthC: 300.0,
                        heightC: 40.0,
                        onPressed: () {
                          blocUser.signIn().then((UserCredential user) =>
                              print("Se ha logueado como: ${user.user}"));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
