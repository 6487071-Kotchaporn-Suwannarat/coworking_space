import 'package:flutter/material.dart';
import 'cancel_reserve.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding:
                    EdgeInsets.only(left: 30.0), // Added padding to the left
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 35.0),
                    Text("Hi Kim Jisoo, where you",
                        style: TextStyle(fontSize: 22)),
                    SizedBox(height: 8.0),
                    Text("wanna work today?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22)),
                    SizedBox(height: 16.0),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
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
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 24.0),
                    Text("Categories",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildCategoryBox(Icons.wifi, "Wifi"),
                        _buildCategoryBox(Icons.local_cafe, "Coffee"),
                        _buildCategoryBox(Icons.meeting_room, "Meeting Room"),
                      ],
                    ),
                    SizedBox(height: 32.0),
                    Text("Nearest spaces",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    SizedBox(height: 10.0),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Card(
                // Set the shape of the card using a rounded rectangle border with a 8 pixel radius
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                // Set the clip behavior of the card
                clipBehavior: Clip.antiAliasWithSaveLayer,
                // Define the child widgets of the card
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Display an image at the top of the card that fills the width of the card and has a height of 160 pixels
                    Image.asset(
                      "assets/images/co1.png",
                      height: 160,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    // Add a container with padding that contains the card's title, text, and buttons
                    Container(
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // Display the card's title using a font size of 24 and a dark grey color
                          Text(
                            "A1 Workpair Room",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.grey[800],
                            ),
                          ),
                          // Add a space between the title and the text
                          Container(height: 10),
                          // Display the card's text using a font size of 15 and a light grey color
                          Text(
                            "• Wifi • Coffee • Meeting Room",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[700],
                            ),
                          ),
                          // Add a row with two buttons spaced apart and aligned to the right side of the card
                          Row(
                            children: <Widget>[
                              // Add a spacer to push the buttons to the right side of the card
                              const Spacer(),
                              // Add a text button labeled "SHARE" with transparent foreground color and an accent color for the text
                              TextButton(
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.transparent,
                                ),
                                child: const Text(
                                  "SELECT",
                                  style: TextStyle(color: Colors.redAccent),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, "/details");
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Add a small space between the card and the next widget
                    Container(height: 5),
                  ],
                ),
              ),
               SizedBox(height: 16.0),
              Card(
                // Set the shape of the card using a rounded rectangle border with a 8 pixel radius
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                // Set the clip behavior of the card
                clipBehavior: Clip.antiAliasWithSaveLayer,
                // Define the child widgets of the card
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Display an image at the top of the card that fills the width of the card and has a height of 160 pixels
                    Image.asset(
                      "assets/images/co1.png",
                      height: 160,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    // Add a container with padding that contains the card's title, text, and buttons
                    Container(
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // Display the card's title using a font size of 24 and a dark grey color
                          Text(
                            "A2 Workpair Room",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.grey[800],
                            ),
                          ),
                          // Add a space between the title and the text
                          Container(height: 10),
                          // Display the card's text using a font size of 15 and a light grey color
                          Text(
                            "• Wifi • Coffee • Meeting Room",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[700],
                            ),
                          ),
                          // Add a row with two buttons spaced apart and aligned to the right side of the card
                          Row(
                            children: <Widget>[
                              // Add a spacer to push the buttons to the right side of the card
                              const Spacer(),
                              // Add a text button labeled "SHARE" with transparent foreground color and an accent color for the text
                              TextButton(
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.transparent,
                                ),
                                child: const Text(
                                  "SELECT",
                                  style: TextStyle(color: Colors.redAccent),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, "/details");
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Add a small space between the card and the next widget
                    Container(height: 5),
                  ],
                ),
              ),
               SizedBox(height: 16.0),
              Card(
                // Set the shape of the card using a rounded rectangle border with a 8 pixel radius
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                // Set the clip behavior of the card
                clipBehavior: Clip.antiAliasWithSaveLayer,
                // Define the child widgets of the card
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Display an image at the top of the card that fills the width of the card and has a height of 160 pixels
                    Image.asset(
                      "assets/images/co1.png",
                      height: 160,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    // Add a container with padding that contains the card's title, text, and buttons
                    Container(
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // Display the card's title using a font size of 24 and a dark grey color
                          Text(
                            "A3 Workpair Room",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.grey[800],
                            ),
                          ),
                          // Add a space between the title and the text
                          Container(height: 10),
                          // Display the card's text using a font size of 15 and a light grey color
                          Text(
                            "• Wifi • Coffee • Meeting Room",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[700],
                            ),
                          ),
                          // Add a row with two buttons spaced apart and aligned to the right side of the card
                          Row(
                            children: <Widget>[
                              // Add a spacer to push the buttons to the right side of the card
                              const Spacer(),
                              // Add a text button labeled "SHARE" with transparent foreground color and an accent color for the text
                              TextButton(
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.transparent,
                                ),
                                child: const Text(
                                  "SELECT",
                                  style: TextStyle(color: Colors.redAccent),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, "/details");
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Add a small space between the card and the next widget
                    Container(height: 5),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
            ],
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
