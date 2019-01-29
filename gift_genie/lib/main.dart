import 'package:flutter/material.dart';

//tells main to run MyApp class
void main() => runApp(MyApp());

//the my app class
class MyApp extends StatelessWidget {
  @override
  //everything in flutter comes from a widget
  Widget build(BuildContext context) {
    //first Widget is "title section
    //title section has 3 children
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0), //setting size of title section ~kinda
      child: Row(//here is the child, actually made of a list of 2 children
        children: [
          Expanded(
            /*1*/
            child: Column(//1st child is a column with two children (rows)
              crossAxisAlignment: CrossAxisAlignment.start,//allginment
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0), //allignment
                  child: Text(
                    'Sydney Shelby',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'My Gift Profile',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon( //2nd child
            Icons.assignment_ind, //profile symbol
            color: Colors.purple[500],
          ),
        ],
      ),
    );
    return MaterialApp(
      title: 'Gift Genie', //im unclear of what this is. page title?
        home: Scaffold(
          appBar: AppBar(
            title: Text('Welcome to Gift Genie'), //title on top of app bar
            backgroundColor: Colors.purple[500]
          ),
          body: Column(
            children: [
              titleSection, //calls the title section we made above
            ],
          ),
        ),
    );
  }
}
