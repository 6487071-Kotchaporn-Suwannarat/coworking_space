import 'package:flutter/material.dart';

class SpaceDetailsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Space details', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 24.0),
            Container(
              padding: EdgeInsets.only(left: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200, // set the height to 200 pixels
                        width: double.infinity, // set the width to match the parent container
                        child: Image.asset("assets/images/co.png"),
                      ),
                    ]
                  ),
                  SizedBox(height: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("A1 Workpair Room",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22)),
                      SizedBox(height: 10.0),
                      Text("Wifi • Coffee • Meeting Room"),
                      SizedBox(height: 16.0),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Space description",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                      SizedBox(height: 10.0),
                      Text("Coworking is an arrangement in which workers of different companies share an office space, allowing cost savings and convenience through the use of common infrastructures, such as equipment, utilities, and receptionist and custodial services, and in some cases refreshments and parcel acceptance services.")
                    ]
                  ),
                  SizedBox(height: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Facilities",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                    ]
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildCategoryBox(Icons.wifi, "Wifi"),
                      _buildCategoryBox(Icons.local_cafe, "Coffee"),
                      _buildCategoryBox(Icons.meeting_room, "Meeting Room"),
                    ],
                  ),
                  SizedBox(height: 30.0),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, "/booking");
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
                          child: Text("Booking", style: TextStyle(color: Color(0xffFFFFFF), fontSize: 20,)),
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
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.pushNamed(context, "/home");
              },
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.pushNamed(context, "/search");
              },
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                Navigator.pushNamed(context, "/cancel");
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.pushNamed(context, "/profile");
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryBox(IconData icon, String title) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 6.0,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Icon(
              icon,
              size: 32.0,
              color: Colors.purple,
            ),
          ),
          SizedBox(height: 8.0),
          Text(title),
        ],
      ),
    );
  }
}
