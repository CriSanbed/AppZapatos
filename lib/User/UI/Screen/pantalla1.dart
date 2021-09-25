import 'package:app_zapatos/User/UI/Widgets/botonink.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:app_zapatos/User/UI/Widgets/gradiente.dart';
import 'package:app_zapatos/User/Bloc/bloc_user.dart';
import 'package:app_zapatos/User/UI/Widgets/google_button.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class Pantalla1 extends StatelessWidget {
  //constantes
  late UserBloc blocUser;

  static const List<String> _opciones = [
    "New Release",
    "Actual Release",
    "Old Release"
  ];

  String opcion = _opciones[0];

  //Pantalla1({Key? key}) : super(key: key);

  @override
  Widget build1(BuildContext context) {
    blocUser = BlocProvider.of(context);
    return _controlSession();
  }

  Widget _controlSession() {
    return StreamBuilder(
        stream: blocUser.authStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData || snapshot.hasError) {
            return Pantalla1();
          } else {
            return Pantalla1();
          }
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Gradiente(),
          Column(
            children: [
              //STACK PARA EL COMBOBOX
              Stack(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 35.0),
                      alignment: Alignment.topCenter,
                      width: 250.0,
                      height: 50,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            const Text('RELEASE',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white)),
                            DropdownButton(
                              value: opcion,
                              onChanged: (string) => opcion,
                              items: _opciones.map((string) {
                                return DropdownMenuItem(
                                  child: Text(string),
                                  value: string,
                                );
                              }).toList(),
                            ),
                          ])),
                ],
              ),
              //STACK PARA LA CARD
              Stack(
                children: [
                  Card(
                    margin: const EdgeInsets.only(top: 35.0),
                    elevation: 9,
                    color: Colors.black38,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Column(
                      children: [
                        //CONTAINER PARA LA IMAGEN
                        Container(
                          height: 300,
                          width: 350,
                          margin: const EdgeInsets.only(top: 5.0),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/img/zapatilla1.jpg")),
                              shape: BoxShape.rectangle),
                        ),
                        //CONTAINER PARA EL TITULO
                        Container(
                          height: 40.0,
                          margin: const EdgeInsets.only(top: 1.0),
                          padding: const EdgeInsets.all(3),
                          child: const Text(
                            '''React Miller            \$130''',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        //CONTAINER PARA EL SUBTITULO
                        Container(
                          height: 80.0,
                          padding: const EdgeInsets.all(5),
                          child: const Text(
                            'Made for dependability on your long runs!!, its a beatiful design',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 24, color: Colors.blueGrey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //STACK PARA EL TEXTO MAS BOTON
              Stack(
                children: [
                  Container(
                    height: 100,
                    width: 300,
                    margin: const EdgeInsets.only(top: 25.0),
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        const Expanded(
                          child: Text(
                            '''You might also like''',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                        MaterialButton(
                          minWidth: 50.0,
                          height: 50.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          onPressed: () {},
                          color: Colors.white30,
                          child: const Text('View All',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: BotonInk(''),
                  ),

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
                              })
                      )
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
