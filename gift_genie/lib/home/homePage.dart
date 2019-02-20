import 'package:flutter/material.dart';
import '../user.dart';

class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  double _imageWidth = 512;
  double _imageHeight = 220;

  //Temporary user list - for test:
  List<User> entryList = [
  new User("AAA", 1, 1, 1997, "Male"),
  new User("BBB", 1, 2, 1997, "Female"),
  new User("CCC", 1, 3, 1997, "Female"),
  new User("DDD", 1, 4, 1997, "Male"),
  new User("AAA", 1, 1, 1997, "Male"),
  new User("BBB", 1, 2, 1997, "Female"),
  new User("CCC", 1, 3, 1997, "Female"),
  new User("DDD", 1, 4, 1997, "Male"),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: new Stack(
        children: <Widget>[
          _buildImage(),
          _buildHeader(),
          _buildProfileRow(),
          _buildBottomPart(),
          _buildTimeline(),
        ],
      ),
    );
    }

  //TODO User can choose pic themselves
  Widget _buildImage() {
    return new ClipPath(
      clipper: new DiagonalClipper(),
      child: new Image.asset(
        'Images/background.jpg',
        height: _imageHeight,
        width: _imageWidth,
        fit: BoxFit.fill,
        colorBlendMode: BlendMode.srcOver,
        color: new Color.fromARGB(50, 20, 10, 40),
      ),
    );
  }

  Widget _buildHeader() {
    return new Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 32.0),
      child: new Row(
        children: <Widget>[
          new Icon(Icons.menu, size: 32.0, color: Colors.white),
          new Expanded(
            child: new Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: new Text(
                "Timeline",
                style: new TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
          new Icon(Icons.linear_scale, color: Colors.white),
        ],
      ),
    );
  }

  Widget _buildProfileRow() {
    return new Padding(
      padding: new EdgeInsets.only(left: 16.0, top: _imageHeight / 2.5),
      child: new Row(
        children: <Widget>[
          new CircleAvatar(
            minRadius: 28.0,
            maxRadius: 28.0,
            backgroundColor: Colors.white,
            backgroundImage: new AssetImage('Images/userPic.png'),
          ),
          new Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Text(
                  'Syd Shelby',
                  style: new TextStyle(
                      fontSize: 26.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
                new Text(
                  'Project Leader',
                  style: new TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomPart() {
    return new Padding(
      padding: new EdgeInsets.only(top: _imageHeight),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildMyTasksHeader(),
          _buildEntryList(),
        ],
      ),
    );
  }

  Widget _buildMyTasksHeader() {
    return new Padding(
      padding: new EdgeInsets.only(left: 64.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            'My Tasks',
            style: new TextStyle(fontSize: 34.0),
          ),
          new Text(
            'FEBRUARY 20, 2019',
            style: new TextStyle(color: Colors.grey, fontSize: 12.0),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeline() {
    return new Positioned(
      top: _imageHeight - 55,
      bottom: 0.0,
      left: 32.0,
      child: new Container(
        width: 1.0,
        color: Colors.grey[300],
      ),
    );
  }

  Widget _buildEntryList() {
    return new Expanded(
      child: new ListView(
        children: entryList.map((user) => new UserUpdateEntry(user: user)).toList(),
      ),
    );
  }

}

class UserUpdateEntry extends StatefulWidget {

  final User user;
  final double _radius = 20;
  String time = "3pm";

  UserUpdateEntry({Key key, this.user}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new _UserUpdateEntryState();
  }

}

class _UserUpdateEntryState extends State<UserUpdateEntry> {

  void initState() {
    super.initState();
    //renderUserPic();
  }
  
  Widget get userImage {
    return Container(
      width: widget._radius,
      height: widget._radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: new AssetImage('Images/userPic.png')),
      ),
    );
  }

  /*
  Widget get UserUpdateEntry {
    return Container(
      width: 380,
      height: 100,
      child: Card(
        color: Colors.grey[200],
        child: Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              left: 90.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(widget.user.name,
                    style: Theme.of(context).textTheme.headline),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                    )
                  ],
                )
              ],
            )
        ),
      ),
    );
  }
  */

  Widget build(BuildContext context) {

    return new Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: new Row(
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.symmetric(horizontal: 32.0 - widget._radius / 2),
            child: new Container(
              height: widget._radius,
              width: widget._radius,
              decoration: new BoxDecoration(shape: BoxShape.circle),
              child: userImage,
            ),
          ),
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  widget.user.name,
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Text(
                  widget.user.status,
                  style: new TextStyle(fontSize: 12.0, color: Colors.grey),
                )
              ],
            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: new Text(
              widget.time,
              style: new TextStyle(fontSize: 12.0, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }

}

class DiagonalClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    Path path = new Path();
    path.lineTo(0.0, size.height - 60.0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
