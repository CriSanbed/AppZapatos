import 'package:app_zapatos/User/UI/Screen/pantalla1.dart';
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
                                onPressed: () {
                                  showModalBottomSheet<void>(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        height: 200,
                                        color: Colors.blueGrey,
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              const Text('Desea regresar..?',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold
                                                  )),
                                              ElevatedButton(
                                                child: const Text('REGRESAR'),
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Pantalla1()),
                                                  );
                                                }
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
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
                                onPressed: () {
                                  showModalBottomSheet<void>(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        height: 200,
                                        color: Colors.black26,
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              const Text('Desea compartir..?',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold
                                                  )),
                                              ElevatedButton(
                                                child: const Text('COMPARTIR'),
                                                onPressed: () =>
                                                    Navigator.pop(context),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
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
                                onPressed: () {
                                  showModalBottomSheet<void>(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        height: 200,
                                        color: Colors.deepOrangeAccent,
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              const Text('Producto agregado a TUS ME GUSTA!!!',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold
                                                  )),
                                              ElevatedButton(
                                                child: const Text('VOLVER'),
                                                onPressed: () => Navigator.pop(context),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
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
                    onPressed: () {
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 200,
                            color: Colors.greenAccent,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  const Text(
                                      'Producto agregado a carrito..!!!',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold
                                    )),
                                  ElevatedButton(
                                    child: const Text('VOLVER'),
                                    onPressed: () => Navigator.pop(context),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
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
