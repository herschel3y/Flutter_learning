import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  double _offsetY = 0.0;

  void _login() {
    setState(() {
      _offsetY = -200.0; // Move the card up by 200 pixels
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Page'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background_image.jpg'), // Background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            top: _offsetY,
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // Background color (green)
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20), // Button padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0), // Rounded corners
                    side: BorderSide(color: Colors.green), // Border line color
                  ),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white, // Text color (white)
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
