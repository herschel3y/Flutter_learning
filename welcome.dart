import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0), // Add spacing between text and buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to login page
              },
              child: Text('Login'),
            ),
            SizedBox(height: 20.0), // Add spacing between buttons
            Container(
              width: 350.0, // Set button width
              height: 50.0, // Set button height
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.0), // Add border
                borderRadius: BorderRadius.circular(10.0), // Add border radius
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to sign up page
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, // Make button background transparent
                  elevation: 0, // Remove button elevation
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Add border radius
                  ),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.black), // Set button text color
                ),
              ),
            ),
            SizedBox(height: 20.0), // Add spacing between buttons and border line
            Divider(
              height: 1.0, // Set border line height
              color: Colors.black, // Set border line color
              thickness: 1.0, // Set border line thickness
              indent: 20.0, // Set left indent of border line
              endIndent: 20.0, // Set right indent of border line
            ),
          ],
        ),
      ),
    );
  }
}
