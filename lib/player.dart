import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Player extends StatefulWidget {
  const Player({Key? key}) : super(key: key);

  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          title: Text('Listening Word List 2001-3000'),
        ),
        body: Container(
            child: Column(
          children: [
            ElevatedButton(
                child: Text('Play'),
                onPressed: () {
                  print('tocando');
                })
          ],
        )),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(height: 50.0),
        ));
  }
}
