import 'package:flutter/material.dart';
import 'package:flutter_application_2/homepage.dart'; // Import your Question and Answer classes
import 'package:flutter_application_2/screen.dart';



class ResultPage extends StatelessWidget {
  final int score;

  ResultPage(this.score);

  @override
  Widget build(BuildContext context) {
    bool isPassed = false;

    if (score >= 5 * 0.6) {
      // passed if 60%
      isPassed = true;
    }
    String title = isPassed ? "Passed" : "Failed !!";

    return Scaffold(
      backgroundColor: Colors.white,  
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title + "  Score is $score",style: TextStyle(
                color: isPassed ? Colors.green : Colors.redAccent,
                fontSize: 30, fontWeight: FontWeight.bold, 
              ),
            ),SizedBox(height: 10),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
  children: [
    ElevatedButton(onPressed: (){
      Navigator.push(context,MaterialPageRoute(builder: ((context) =>BottomNavigationBarExample ())));
    },
      child: const Text('Home', textAlign: TextAlign.center),
    ),const SizedBox(width: 25),
    ElevatedButton(onPressed: (){
      Navigator.push(context,MaterialPageRoute(builder: ((context) => HomeScreen())));
    },
      child: const Text('Restart', textAlign: TextAlign.center),

                ),
              ],
            ),
          ],
        )
      ) 
    );
  }
}

// Define your questionList somewhere in your code
List<dynamic> questionList = []; // Replace this with your actual question list