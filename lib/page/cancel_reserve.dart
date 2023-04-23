import 'package:flutter/material.dart';
import 'confirm_cancel.dart';

class CancelPage extends StatelessWidget {
  const CancelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cancel booking'),
        backgroundColor: Color.fromARGB(255, 184, 207, 255),
      ),
      backgroundColor: Color(0xff627498),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 70, left: 60, right: 60)),
            CircleAvatar(
              radius: 135,
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/originals/7e/1c/ca/7e1ccac8df7b2b81c5d30648c64bd7c9.jpg'),
            ),
            Text(''),
            Text(''),
            Padding(padding: EdgeInsets.only(top: 5, left: 60, right: 60)),
            Text(
              "You must cancel before 1 day in the system before entering the area.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(''),
            Text(''),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/comfirmcancel");
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Container(
                    height: 62,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        gradient: LinearGradient(
                          colors: const [
                            Color(0xff6E83F4),
                            Color(0xff9C7D9C),
                            Color(0xffC17754),
                          ],
                        )),
                    child: Center(
                      child: Text("Zone A1",
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 20,
                          )),
                    )),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 8)),
          ],
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
