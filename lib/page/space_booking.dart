import 'package:flutter/material.dart';
import 'summary_order.dart';
import 'package:get/get.dart';


class SpaceBookingPage extends StatefulWidget {
  @override
  _SpaceBookingPageState createState() => _SpaceBookingPageState();
}

class _SpaceBookingPageState extends State<SpaceBookingPage> {
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;
  String? _selectedRoom;
  int? _selectedGuests;
  String? _selectedTable;
  int? _selectedChairs;

  Future<DateTime?> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2100));
    return picked;
  }

  Future<TimeOfDay?> _selectTime(BuildContext context) async {
    final TimeOfDay? picked =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    return picked;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Space booking', style: TextStyle(color: Colors.black)),
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
                        height: 190, // set the height to 200 pixels
                        width: double.infinity, // set the width to match the parent container
                        child: Image.asset("assets/images/co.png"),
                      ),
                    ]
                  ),
                  SizedBox(height: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("A1 Workpair Room",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22)),
                      SizedBox(height: 10.0),
                      Text("Wifi • Coffee • Meeting Room"),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Select the number of guests: '),
                      Wrap(
                        spacing: 8.0,
                        children: [
                          ChoiceChip(
                            label: Text('1'),
                            selected: _selectedGuests == 1,
                            onSelected: (isSelected) {
                              setState(() {
                                _selectedGuests = isSelected ? 1 : null;
                              });
                            },
                          ),
                          ChoiceChip(
                            label: Text('2'),
                            selected: _selectedGuests == 2,
                            onSelected: (isSelected) {
                              setState(() {
                                _selectedGuests = isSelected ? 2 : null;
                              });
                            },
                          ),
                          ChoiceChip(
                            label: Text('3'),
                            selected: _selectedGuests == 3,
                            onSelected: (isSelected) {
                              setState(() {
                                _selectedGuests = isSelected ? 3 : null;
                              });
                            },
                          ),
                          ChoiceChip(
                            label: Text('4'),
                            selected: _selectedGuests == 4,
                            onSelected: (isSelected) {
                              setState(() {
                                _selectedGuests = isSelected ? 4 : null;
                              });
                            },
                          ),
                          ChoiceChip(
                            label: Text('5'),
                            selected: _selectedGuests == 5,
                            onSelected: (isSelected) {
                              setState(() {
                                _selectedGuests = isSelected ? 5 : null;
                              });
                            },
                          ),
                          ChoiceChip(
                            label: Text('6'),
                            selected: _selectedGuests == 6,
                            onSelected: (isSelected) {
                              setState(() {
                                _selectedGuests = isSelected ? 6 : null;
                              });
                            },
                          ),
                        ],
                      ),
                  SizedBox(height: 16.0),
                  Text('Select the number of tables: '),
                  Wrap(
                    spacing: 8.0,
                    children: [
                      ChoiceChip(
                        label: Text('1'),
                        selected: _selectedTable == '1',
                        onSelected: (isSelected) {
                          setState(() {
                            _selectedTable = isSelected ? '1' : null;
                          });
                        },
                      ),
                      ChoiceChip(
                        label: Text('2'),
                        selected: _selectedTable == '2',
                        onSelected: (isSelected) {
                          setState(() {
                            _selectedTable = isSelected ? '2' : null;
                          });
                        },
                      ),
                      ChoiceChip(
                        label: Text('3'),
                        selected: _selectedTable == '3',
                        onSelected: (isSelected) {
                          setState(() {
                            _selectedTable =
                                isSelected ? '3' : null;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Text('Select a date: '),
                  ElevatedButton(
                    onPressed: () async {
                      final DateTime? picked = await _selectDate(context);
                      if (picked != null && picked != _selectedDate) {
                        setState(() {
                          _selectedDate = picked;
                        });
                      }
                    },
                    child: Text(_selectedDate != null
                        ? 'Selected date: ${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
                        : 'Select a date'),
                  ),
                  SizedBox(height: 16.0),
                  Text('Select a time: '),
                  ElevatedButton(
                    onPressed: () async {
                      final TimeOfDay? picked =
                          await _selectTime(context);
                      if (picked != null && picked != _selectedTime) {
                        setState(() {
                          _selectedTime = picked;
                        });
                      }
                    },
                    child: Text(_selectedTime != null
                        ? 'Selected time: ${_selectedTime!.format(context)}'
                        : 'Select a time'),
                  ),
                  SizedBox(height: 30.0),
                  GestureDetector(
                    onTap: () async{
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => SpaceSummaryPage(
                            guests: _selectedGuests,
                            table: _selectedTable,
                            date: _selectedDate,
                            time: _selectedTime,
                          ),
                        ),);
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
                          child: Text("Confirm", style: TextStyle(color: Color(0xffFFFFFF), fontSize: 20,)),
                        )
                      ),
                    ),
                  ),
                ],
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
}