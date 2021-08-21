import 'package:flutter/material.dart';
import 'package:app_zapatos/User/UI/Widgets/navbar.dart';

class BotonInk extends StatelessWidget {
  String inkText = 'Pantalla';
  BotonInk(this.inkText);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NavBar()),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(top: 150),
        alignment: Alignment.topCenter,
        color: Colors.black26,
        constraints: const BoxConstraints.expand(height: 60),
        child: Center(
          child: Text(
            inkText,
            style: const TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
      ),
    );
  }
}