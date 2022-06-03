import 'package:flutter/material.dart';

void main() {
  runApp(Nav2App());
}

class Nav2App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => HomeScreen(),
        '/details': (context) => DetailScreen(),
        //'/details': (context) => DetailScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          child: Text("Avanzar"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return DetailScreen();
              }),
            );
          },
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: ElevatedButton(
        child: Text("Regresar"),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
    );
  }
}
//class DetailScreen extends StatelessWidget {
// @override
//Widget build(BuildContext context) {
//return Scaffold(
//appBar: AppBar(),
//body: Center(
// child: ElevatedButton(
//child: Text("Regresar"),
// onPressed: () {
//  Navigator.pop(context);
// },
// )),
//);
// }
//}
