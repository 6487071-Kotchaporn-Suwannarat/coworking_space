import 'package:flutter/material.dart';
import 'cancel_reserve.dart';

class ConfirmCancelPage extends StatelessWidget {
  final String data;

  ConfirmCancelPage({
    super.key,
    @required this.data = '',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirm cancel booking'),
        backgroundColor: Color.fromARGB(255, 184, 207, 255),
      ),
      backgroundColor: Color(0xff627498),
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          padding: EdgeInsets.all(12),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.red, width: 4.0),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Text(
            "The booking has been cancelled.",
            style: TextStyle(fontSize: 18, color: Colors.redAccent),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () => Navigator.pushNamed((context), "/home"),
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => Navigator.pushNamed((context), "/search"),
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => Navigator.pushNamed((context), "/cancel"),
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () => Navigator.pushNamed((context), "/profile"),
            ),
          ],
        ),
      ),
    );
  }
}
