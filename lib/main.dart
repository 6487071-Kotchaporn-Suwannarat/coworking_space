import 'package:flutter/material.dart';
import 'page/register_page.dart';
import 'page/home_page.dart';
import 'page/login_page.dart';
import 'page/profile_page.dart';
import 'page/cancel_reserve.dart';
import 'page/confirm_cancel.dart';
import 'page/space_booking.dart';
import 'page/space_details.dart';
import 'page/summary_order.dart';
import 'page/search.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Workly Space',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: <String, WidgetBuilder> {
        "/register" : (BuildContext context) => RegisterPage(),
        "/login" : (BuildContext context) => LoginPage(),
        "/home" : (BuildContext context) => HomePage(),
        "/booking" : (BuildContext context) => SpaceBookingPage(),
        "/details" : (BuildContext context) => SpaceDetailsPage(),
        "/summary" : (BuildContext context) => SpaceSummaryPage(),
        "/cancel" : (BuildContext context) => CancelPage(),
        "/comfirmcancel" : (BuildContext context) => ConfirmCancelPage(),
        "/profile" : (BuildContext context) => ProfilePage(),
         "/search" : (BuildContext context) => SelectCoworking(),
      },
      //initialRoute: "/home",
      initialRoute: "/register",
    );
  }
}