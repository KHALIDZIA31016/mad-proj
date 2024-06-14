import 'package:flutter/material.dart';

class PrioritizeTasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prioritize Tasks'),
        backgroundColor: Colors.orangeAccent, // added app bar background color
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Example fields to prioritize tasks
            TextField(
              decoration: InputDecoration(
                labelText: 'Task',
                border: OutlineInputBorder(), // added border
                filled: true, // added filled background
                fillColor: Colors.grey[200], // added filled color
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Priority',
                border: OutlineInputBorder(), // added border
                filled: true, // added filled background
                fillColor: Colors.grey[200], // added filled color
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Set Priority'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.orangeAccent, // added button text color
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
                Navigator.pushNamed(context, '/update');
              },
              child: Text('Update Assignment'),
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
