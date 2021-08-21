import 'package:flutter/material.dart';
import 'package:app_zapatos/User/UI/Screen/pantalla1.dart';
import 'package:app_zapatos/User/UI/Screen/pantalla2.dart';


class NavBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _NavBar();
  }

}

class _NavBar extends State {
  int indexNavBar = 0;
  final List<Widget> vistasWidget = [Pantalla1(), Pantalla2(), Pantalla1()];
  void onTapped(int index) {
    setState(() {
      indexNavBar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: vistasWidget[indexNavBar],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.blueGrey, primaryColor: Colors.brown),
        child: BottomNavigationBar(
          onTap:
          onTapped,
          currentIndex: indexNavBar,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.picture_in_picture), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart), label: ""),
          ],
        ),
      ),
    );
  }
}
