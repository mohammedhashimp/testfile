import 'package:flutter/material.dart';
import 'package:flutter_application_2/quiz_screen.dart';
//import 'package:flutter_application_2/homepage.dart'; 



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 50, 80),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome to 'QuizB'",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) =>QuizScreen())));
                // Add functionality for the button here
              },
              child: Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
