import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pill Reminder',
      theme: ThemeData(
        primarySwatch: Colors.teal, // Use a different primary color
        visualDensity: VisualDensity.adaptivePlatformDensity, // Adjust spacing
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
        title: Text('Pill Reminder'),
        centerTitle: true, // Center the app bar title
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add a decorative image (replace with your image asset)
            Image.asset(
              'assets/images/white.jpg',
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Use ElevatedButton with rounded corners and custom color
                ElevatedButton(
                  onPressed: () => _showNotImplementedDialog(context),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text('Add Medicine'),
                ),
                SizedBox(width: 20),
                // Use TextButton with different style
                TextButton(
                  onPressed: () => _showNotImplementedDialog(context),
                  child: Text(
                    'Delete Medicine',
                    style: TextStyle(color: Colors.redAccent), // Use accent color
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Placeholder function to display a message when buttons are clicked
  void _showNotImplementedDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Feature not implemented yet'),
        content: Text('This functionality is not implemented yet.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}
