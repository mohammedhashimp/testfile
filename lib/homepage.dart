// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/resultpage.dart';

void main() => runApp(const BottomNavigationBarExampleApp());

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade300,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard),
            label: 'Leader Board',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Score',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        unselectedItemColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 5, 50, 80),
                borderRadius: BorderRadius.circular(20.0),
              ),
              width: 650.0,
              height: 230.0,
              child: Column(
                children: [
                  // Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  //   Padding(
                  //     padding: const EdgeInsets.only(top: 20.0, left: 10),
                  //     child: Text(
                  //       'Hello..!',
                  //       textAlign: TextAlign.start,
                  //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  //     ),
                  //   ),
                  //   Padding(
                  //     padding: const EdgeInsets.only(top: 10.0, left: 10),
                  //     child: Container(
                  //         width: 80,
                  //         height: 70,
                  //         decoration: BoxDecoration(
                  //           shape: BoxShape.circle,
                  //           image: DecorationImage(
                  //             //MainAxisAlignment.end,
                  //               image: AssetImage('assets/images/profileq.png'),
                  //               fit: BoxFit.cover),
                  //         )),
                  //   ),
      
                  // ]),
                  //  Row(
      
                  //     children: [Container(height: 50,width: 200,
                  //     color: Color.fromARGB(255, 5, 50, 80),
                  //     child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                  //     Text("  Hashim ",
                  //     style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                  //     ),
                  //     ],),
      
                  //     ),
                  //     ],
                  //   ),
                  ListTile(
                    title: Text(
                      "Hello..! ",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle:  Text(
                        'Hashim',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      trailing: CircleAvatar(backgroundImage:  AssetImage('assets/images/profileq.png'),),
                    ),
                
      
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    children: [
                      InkWell(
                        // onTap: () {setState(() {
                        //   Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(score)),
                        //   );
                        // });
                        // },
                        child: Container(
                          height: 35,
                          width: 200,
                          margin: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Result",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
             Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
             Row(
               children: [
                 Text("  Select Category",
                 style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.black),
                 ),
               ],
             ),
             SizedBox(height: 20,),
             Container(
              decoration: BoxDecoration(
                            color: Color.fromARGB(255, 5, 50, 80),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
               height: 60,
               width: 365,
               //color: const Color.fromARGB(255, 0, 255, 119),
               child: const Center(child:
                Text('General knowledge',
               style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
             ),
              SizedBox(height: 15,),
             Container(
              decoration: BoxDecoration(
                            color: Color.fromARGB(255, 5, 50, 80),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
               height: 60,
               width: 365,
               //color: Colors.amber[500],
               child: const Center(child: 
               Text('Science',
               style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
             ),
              SizedBox(height: 15,),
             Container(
              decoration: BoxDecoration(
                            color: Color.fromARGB(255, 5, 50, 80),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
               height: 60,
               width: 365,
               //color: Colors.amber[100],
                child: const Center(child:
                 Text('Sports',
                 style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
               ),
               SizedBox(height: 15,),
             Container(
              decoration: BoxDecoration(
                            color: Color.fromARGB(255, 5, 50, 80),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
               height: 60,
               width: 365,
               //color: Colors.amber[500],
               child: const Center(child:
                Text('Social',
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
             ),
              ],
             )
          ],
          ),
      ),
  );
  }
}
