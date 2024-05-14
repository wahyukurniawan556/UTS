import 'package:flutter/material.dart';
import 'booking_page.dart'; // Pastikan Anda mengimpor halaman kedua

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel App'),
      ),
      body: ListView(
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FlightBookingPage()),
              );
            },
            child: Text('booking'),
          ),
          // Greeting and Location
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                      text: 'Hi, Kretya!\n', style: TextStyle(fontSize: 24)),
                  TextSpan(
                      text: "Let's travel with us!\n",
                      style: TextStyle(fontSize: 16)),
                  TextSpan(
                      text: 'Bandung, Indonesia',
                      style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ),
          // Transportation Icons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(icon: Icon(Icons.flight), onPressed: () {}),
              IconButton(icon: Icon(Icons.train), onPressed: () {}),
              IconButton(icon: Icon(Icons.directions_bus), onPressed: () {}),
              IconButton(icon: Icon(Icons.directions_car), onPressed: () {}),
              IconButton(icon: Icon(Icons.motorcycle), onPressed: () {}),
            ],
          ),
          // Most Popular Destination Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Most Popular Destination',
                    style: TextStyle(fontSize: 20)),
                // Destination Cards...
              ],
            ),
          ),
          // Special Offer Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Special offer for you!', style: TextStyle(fontSize: 20)),
                // Offer Cards...
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(
              icon: Icon(Icons.confirmation_number), label: 'Ticket'),
        ],
      ),
    );
  }
}
