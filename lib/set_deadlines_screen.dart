import 'package:flutter/material.dart';

class SetDeadlinesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set Deadlines'),
        backgroundColor: Colors.purpleAccent, // added app bar background color
        centerTitle: true, // added center title
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Example fields to set deadlines
            TextField(
              decoration: InputDecoration(
                labelText: 'Assignment',
                border: OutlineInputBorder(), // added border
                filled: true, // added filled background
                fillColor: Colors.grey[200], // added filled color
                prefixIcon: Icon(Icons.assignment), // added prefix icon
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Deadline',
                border: OutlineInputBorder(), // added border
                filled: true, // added filled background
                fillColor: Colors.grey[200], // added filled color
                prefixIcon: Icon(Icons.calendar_today), // added prefix icon
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Set Deadline'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.purpleAccent, // added button text color
                padding: EdgeInsets.all(16), // added button padding
                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(10), // added button border radius
                ),
              ),
            ),
            SizedBox(height: 10), // added space between buttons
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/prioritize');
              },
              child: Text('Prioritize Tasks'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blueAccent, // added button text color
                padding: EdgeInsets.all(16), // added button padding
                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(10), // added button border radius
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
