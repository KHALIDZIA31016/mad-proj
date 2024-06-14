import 'package:flutter/material.dart';

class AddAssignmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Assignment'),
        backgroundColor: Colors.teal, // added app bar background color
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Subject',
                border: OutlineInputBorder(), // added border
                filled: true, // added filled background
                fillColor: Colors.grey[200], // added filled color
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(), // added border
                filled: true, // added filled background
                fillColor: Colors.grey[200], // added filled color
              ),
              maxLines: 3, // added max lines for multi-line input
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Due Date',
                border: OutlineInputBorder(), // added border
                filled: true, // added filled background
                fillColor: Colors.grey[200], // added filled color
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Notes',
                border: OutlineInputBorder(), // added border
                filled: true, // added filled background
                fillColor: Colors.grey[200], // added filled color
              ),
              maxLines: 3, // added max lines for multi-line input
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Add Assignment'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.teal, // added button text color
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
                Navigator.pushNamed(context, '/set-deadlines');
              },
              child: Text('Set Deadlines'),
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
