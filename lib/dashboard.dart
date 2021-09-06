import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listening Word List 2001-3000'),
      ),
      body: Container(
        margin: const EdgeInsets.all(30.0),
        padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 150.0),
        child: Container(
            //decoration: BoxDecoration(border: Border.all()),
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
                child: Text('Play'),
                onPressed: () {
                  print('tocando');
                }),
            MaterialButton(
                onPressed: () {
                  showAlertDialog(context);
                },
                padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                clipBehavior: Clip.none,
                enableFeedback: true,
                autofocus: false,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                color: Colors.deepOrange,
                textColor: Colors.white,
                child: Text(
                  'Alert',
                  style: TextStyle(fontSize: 15.0),
                )),
          ],
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  Widget cancelaButton = TextButton(
    child: Text("Cancelar"),
    onPressed: () {},
  );
  Widget continuaButton = TextButton(
    child: Text("Continar"),
    onPressed: null,
  );

  //configura o AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("AlertDialog"),
    content: Text("Deseja continuar aprendendo Flutter ?"),
    actions: [
      cancelaButton,
      continuaButton,
    ],
  );

  //exibe o diálogo
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
