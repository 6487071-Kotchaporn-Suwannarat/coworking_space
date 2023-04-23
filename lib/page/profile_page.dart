import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Color.fromARGB(255, 184, 207, 255),
      ),
      backgroundColor: Color(0xff627498),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(10)),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage("assets/images/ji2.jpg"),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Text(
              "Kim Jisoo",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email, color: Colors.white),
                Padding(padding: EdgeInsets.all(5)),
                Text(
                  "kimjisoo@example.com",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone, color: Colors.white),
                Padding(padding: EdgeInsets.all(5)),
                Text(
                  "+1 (555) 123-4567",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/login");
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
                    child: Text(
                      "Logout",
                      style: TextStyle(color: Color(0xffFFFFFF), fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
          ],
        ),
      ),
    );
  }
}
