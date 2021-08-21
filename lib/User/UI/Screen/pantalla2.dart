import 'package:app_zapatos/User/UI/Widgets/gradiente.dart';
import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        children: [
          Gradiente(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //STACK PARA LOS ICONOS SUPERIORES
              Stack(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 5),
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Ink(
                              decoration: const ShapeDecoration(
                                color: Colors.brown,
                                shape: CircleBorder(),
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.arrow_back),
                                color: const Color(0xF4EBEAF3),
                                iconSize: 35.0,
                                onPressed: () {},
                              )),
                          Ink(
                              decoration: const ShapeDecoration(
                                color: Colors.brown,
                                shape: CircleBorder(),
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.alt_route_sharp),
                                color: const Color(0xF4EBEAF3),
                                iconSize: 35.0,
                                onPressed: () {},
                              )),
                          Ink(
                              decoration: const ShapeDecoration(
                                color: Colors.brown,
                                shape: CircleBorder(),
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.volunteer_activism),
                                color: const Color(0xF4EA3C0B),
                                iconSize: 35.0,
                                onPressed: () {},
                              ))
                        ],
                      )),
                ],
              ),

              //STACK PARA EL TITULO
              Stack(
                children: [
                  Container(
                    height: 40.0,
                    alignment: Alignment.topCenter,
                    margin: const EdgeInsets.only(top: 10.0),
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      'React Miller            \$130',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  //CONTAINER PARA LA IMAGEN
                  Container(
                    height: 300,
                    //width: 350,
                    alignment: Alignment.topCenter,
                    margin: const EdgeInsets.only(top: 40.0),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/img/zapatilla2.png")),
                        shape: BoxShape.rectangle),
                  ),
                  //CONTAINER PARA EL SUBTITULO
                  Container(
                    height: 100.0,
                    alignment: Alignment.topCenter,
                    margin: const EdgeInsets.only(top: 400.0),
                    child: const Text(
                      'Made for dependability on your long runs!!, its a beatiful design offers a locked-in fit and a durable feel',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24, color: Colors.blueGrey),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  MaterialButton(
                    minWidth: 300.0,
                    height: 50.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    onPressed: () {},
                    color: Colors.redAccent,
                    child: const Text('Ad to cart',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
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
