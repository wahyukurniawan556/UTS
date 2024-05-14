import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flight Booking App',
      home: FlightBookingPage(),
    );
  }
}

class FlightBookingPage extends StatefulWidget {
  @override
  _FlightBookingPageState createState() => _FlightBookingPageState();
}

class _FlightBookingPageState extends State<FlightBookingPage> {
  int _selectedFlightType = 0;
  List<String> _flightTypes = ['One-way', 'Round-trip', 'Multi-city'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flights'),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Flight Type Selector
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(_flightTypes.length, (index) {
                return ChoiceChip(
                  label: Text(_flightTypes[index]),
                  selected: _selectedFlightType == index,
                  onSelected: (bool selected) {},
                );
              }),
            ),
            // Flight Detail Form
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'From',
                      hintText: 'Bandung (BDO)',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'To',
                      hintText: 'Denpasar (DPS)',
                    ),
                  ),
                  // Add Date Pickers and Passenger Details...
                  ElevatedButton(
                    onPressed: () {
                      // Implement Search Functionality...
                    },
                    child: Text('Search'),
                  ),
                ],
              ),
            ),
            // Recent Searches Section
            // Add Recent Searches...
            // Lower Price Section
            // Add Lower Price Offers...
          ],
        ),
      ),
    );
  }
}
