import 'package:app_zapatos/User/UI/Screen/pantalla1.dart';
import 'package:flutter/material.dart';
import 'package:app_zapatos/User/UI/Screen/pantalla1.dart';

class CardImg extends StatelessWidget {
  String pathImage = '';
  Widget routeLink = Pantalla1();

  CardImg(this.pathImage, this.routeLink);

  @override
  Widget build(BuildContext context) {
    final card = Stack(
      children: <Widget>[
        Container(
          height: 350,
          width: 300,
          margin: const EdgeInsets.only(top: 5, left: 20),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(pathImage)),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              shape: BoxShape.rectangle,
              boxShadow: const <BoxShadow>[
                BoxShadow(
                    color: Colors.red,
                    blurRadius: 17,
                    offset: Offset(0, 7))
              ]),
        ),
        Row(
          children: <Widget>[
            Container(
              height: 50,
              width: 100,
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.only(top: 50),
            ),
            FlatButton.icon(
              icon: const Icon(Icons.forward,
                  size: 200.0, color: Colors.transparent),
              label: const Text(
                ' ',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => routeLink),
                );
              },
            ),
          ],
        ),
      ],
    );
    return card;
  }
}
