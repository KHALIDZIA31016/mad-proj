import 'package:flutter/material.dart';

class UpdateAssignmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Assignment'),
        backgroundColor: Colors.tealAccent, // added app bar background color
        centerTitle: true, // added center title
        elevation: 0, // removed app bar shadow
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Example fields to update assignment
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
                labelText: 'New Details',
                border: OutlineInputBorder(), // added border
                filled: true, // added filled background
                fillColor: Colors.grey[200], // added filled color
                prefixIcon: Icon(Icons.edit), // added prefix icon
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Update'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.tealAccent, // added button text color
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
                Navigator.pushNamed(context, '/delete');
              },
              child: Text('Delete Assignment'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.redAccent, // added button text color
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
