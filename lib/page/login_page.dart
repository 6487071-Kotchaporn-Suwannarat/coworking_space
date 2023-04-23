import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Color.fromARGB(255, 184, 207, 255),
      ),
      backgroundColor: Color(0xff627498),
      body: Stack(
        children: [
          Image.asset(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            "assets/images/login.png"
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left:60.0 ,right: 60),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(20)),
                  Text("Please login to go to home page.", style: TextStyle(color: Colors.white, fontSize: 16), textAlign: TextAlign.left,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextFormField(
                      style: TextStyle(color: Color.fromARGB(255, 245, 239, 158), fontSize: 15),
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Color(0xff4EDBC1)),),
                        labelText: 'Enter your email',
                        labelStyle: TextStyle(color:  Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextFormField(
                      style: TextStyle(color: Color.fromARGB(255, 245, 239, 158), fontSize: 15),
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Color(0xff4EDBC1)),),
                        labelText: 'Enter your password',
                        labelStyle: TextStyle(color:  Colors.white),
                      ),
                    ),
                  ),
                  
                  Spacer(),
                  GestureDetector(
                    onTap: (){
                    Navigator.pushNamed(context, "/home");
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
                            
                          )
                        ),
                        child: Center( 
                          child: Text("Login", style: TextStyle(color: Color(0xffFFFFFF), fontSize: 20,)),
                        )
                      ),
                    ),
                  ), Padding(padding: EdgeInsets.all(10)),
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}