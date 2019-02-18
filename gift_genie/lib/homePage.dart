import 'package:flutter/material.dart';
import 'user.dart';

class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    List<UserUpdateEntry> entryList = new List<UserUpdateEntry>();
    //Temporary user list - for test:
    entryList.add(new UserUpdateEntry(new User("AAA", 1, 1, 1997, "Male")));
    entryList.add(new UserUpdateEntry(new User("BBB", 1, 2, 1997, "Female")));
    entryList.add(new UserUpdateEntry(new User("CCC", 1, 3, 1997, "Female")));
    entryList.add(new UserUpdateEntry(new User("DDD", 1, 4, 1997, "Male")));


    return Scaffold(
      appBar: AppBar(
          title: Text("Home"), //title on top of app bar
          backgroundColor: Colors.purple[500]
      ),
      body: new ListView.builder(
          itemCount: entryList.length,
          itemBuilder: (context, idx) {
            return entryList[idx];
          }),
    );

  }
}

class UserUpdateEntry extends StatefulWidget {

  User user;

  UserUpdateEntry(this.user);

  @override
  _UserUpdateEntryState createState() => _UserUpdateEntryState(user);

}

class _UserUpdateEntryState extends State<UserUpdateEntry> {

  User user;
  //String picUrl;

  _UserUpdateEntryState(this.user);

  void initState() {
    super.initState();
    //renderUserPic();
  }

  /*
  void renderUserPic() async {
    await user.getImageUrl();
    setState(() {
      picUrl = user.imageUrl;
    });
  }
  */

  Widget get userImage {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: new AssetImage('Images/userPic.png')),
      ),
    );
  }

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
              left: 64.0,
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

  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        height: 90.0,
        child: Stack(
          children: <Widget>[
            Positioned(
              //left: 10.0,
              child: UserUpdateEntry,
            ),
            Positioned(
              top: 7.5,
              child: userImage,
            ),
          ],
        ),
      ),
    );

  }

}
