import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  var _darkNotifier = ValueNotifier(ThemeMode.light);
  var mode = ThemeMode.light;
  Home({Key? key}) : super(key: key);
  Home.dark(this._darkNotifier, this.mode);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ola gente'),
        ),
        body: Container(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                  child: Text('theme mode'),
                  onPressed: () => _darkNotifier.value = mode == ThemeMode.light
                      ? ThemeMode.dark
                      : ThemeMode.light),
              ElevatedButton(
                  child: Text('player'),
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      '/player',
                      (route) => true,
                    );
                  }),
              ElevatedButton(
                  child: Text('dashboard'),
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      '/dashboard',
                      (route) => true,
                    );
                  })
            ])
          ]),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(height: 50.0),
        ));
  }
}
