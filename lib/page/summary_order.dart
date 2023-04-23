import 'package:flutter/material.dart';

class SpaceSummaryPage extends StatelessWidget {
  final int? guests;
  final String? table;
  final int? chairs;
  final DateTime? date;
  final TimeOfDay? time;

  SpaceSummaryPage({
    this.guests,
    this.table,
    this.chairs,
    this.date,
    this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Summary Order', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 30.0), // Added padding to the left
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 24.0),
                  Text(
                    'Booking details:',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  Text('Number of guests: $guests'),
                  SizedBox(height: 10.0),
                  Text('Number of tables: $table'),
                  SizedBox(height: 10.0),
                  Text('Date: ${date?.toString()}'),
                  SizedBox(height: 10.0),
                  Text('Time: ${time?.toString()}'),
                  SizedBox(height: 30.0),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, "/home");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40, bottom: 40),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          gradient: LinearGradient(
                            colors: const [
                             Color(0xff6E83F4),
                             Color(0xff9C7D9C),
                             Color(0xffC17754),
                            ],
                          )
                        ),
                        child: Center( 
                          child: Text("Go Back To Home", style: TextStyle(color: Color(0xffFFFFFF), fontSize: 20,)),
                        )
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}