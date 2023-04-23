import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        backgroundColor: Color.fromARGB(255, 184, 207, 255),
      ),
      backgroundColor: Color(0xff627498),
      body: Stack(
        children: [
          Image.asset(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            "assets/images/register.png"
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              /*
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                )
              ),*/
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left:60.0 ,right: 60),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(20)),
                  Text("Fill in your profile to become a member.", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 16), textAlign: TextAlign.center,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextFormField(
                      style: TextStyle(color: Color.fromARGB(255, 245, 239, 158), fontSize: 15),
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width: 2, color: Color(0xff4EDBC1)), ),
                        //border: UnderlineInputBorder(),
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
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width: 2, color: Color(0xff4EDBC1)),),
                        //border: UnderlineInputBorder(),
                        labelText: 'Enter your password',
                        labelStyle: TextStyle(color:  Colors.white),
                      ),
                    ),
                  ),      
                  Spacer(),
                  GestureDetector(
                    onTap: (){
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
                            
                          )
                        ),
                        child: Center( 
                          child: Text("Register", style: TextStyle(color: Color(0xffFFFFFF), fontSize: 20,)),
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