import 'package:flutter/material.dart';
import 'user.dart';

//tells main to run MyApp class
void main() => runApp(MyApp());

//the my app class
class MyApp extends StatelessWidget {
  @override
  //everything in flutter comes from a widget
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Gift Genie', //im unclear of what this is. page title?
      home: HomePage(title: "Welcome to Gift Genie",)
    );
  }
}

class HomePage extends StatefulWidget {

  final String title;

  HomePage({Key key, this.title}): super(key: key);

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  @override

  Widget build(BuildContext context) {

    //Title Section - 1
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0), //setting size of title section ~kinda

      child: new Row(//here is the child, actually made of a list of 2 children
        children: [
          new Expanded(
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

    //Button Section - 2
    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(icon, color: color),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.calendar_today, 'CALENDAR'),
          buildButtonColumn(Icons.list, 'LIST'),
          buildButtonColumn(Icons.contacts, 'CONTACTS'),
          buildButtonColumn(Icons.share, 'PROFILE'),
        ],
      ),
    );


    //Friend History Section - 3
    //Row buildUpdateRow()

    return Scaffold(
      appBar: AppBar(
          title: Text(widget.title), //title on top of app bar
          backgroundColor: Colors.purple[500]
      ),
      body: new ListView(
        children: [
          titleSection, //calls the title section we made above
          buttonSection,
        ],
      ),

    );

  }
}

class UserUpdateEntry extends StatefulWidget {

  final User user;

  UserUpdateEntry(this.user);

  @override
  _UserUpdateEntryState createState() => _UserUpdateEntryState(user);

}

class _UserUpdateEntryState extends State<UserUpdateEntry> {

  User user;

  _UserUpdateEntryState(this.user);

  Widget build(BuildContext context) {

    return Text(widget.user.name);

  }

}
