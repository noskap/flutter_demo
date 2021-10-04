import 'package:flutter/material.dart';

class BigDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      color: Color(0xff344955),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        height: 56.0,
        child: Row(
          children: <Widget>[
            Spacer(),
            IconButton(
              onPressed: showMenu(context),
              icon: Icon(Icons.menu),
              color: Colors.white,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  final List<ListTile> items = [
    ListTile(
      title: Text(
        "Inbox",
        style: TextStyle(color: Colors.white),
      ),
      leading: Icon(
        Icons.inbox,
        color: Colors.white,
      ),
      onTap: () {},
    ),
    ListTile(
      title: Text(
        "Starred",
        style: TextStyle(color: Colors.white),
      ),
      leading: Icon(
        Icons.star_border,
        color: Colors.white,
      ),
      onTap: () {},
    ),
    ListTile(
      title: Text(
        "Sent",
        style: TextStyle(color: Colors.white),
      ),
      leading: Icon(
        Icons.send,
        color: Colors.white,
      ),
      onTap: () {},
    ),
    ListTile(
      title: Text(
        "Trash",
        style: TextStyle(color: Colors.white),
      ),
      leading: Icon(
        Icons.delete_outline,
        color: Colors.white,
      ),
      onTap: () {},
    ),
    ListTile(
      title: Text(
        "Spam",
        style: TextStyle(color: Colors.white),
      ),
      leading: Icon(
        Icons.error,
        color: Colors.white,
      ),
      onTap: () {},
    ),
    ListTile(
      title: Text(
        "Drafts",
        style: TextStyle(color: Colors.white),
      ),
      leading: Icon(
        Icons.mail_outline,
        color: Colors.white,
      ),
      onTap: () {},
    ),
  ];

  void Function() showMenu(BuildContext context) {
    return () {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(color: Color(0xff232f34)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(height: 36),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                      color: Color(0xff344955),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment(0, 0),
                      children: <Widget>[
                        Positioned(
                          top: -36,
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)), border: Border.all(color: Color(0xff232f34), width: 10)),
                            child: Center(
                              child: ClipOval(
                                child: Image.asset(
                                  "lib/common/assets/app-icon.png",
                                  fit: BoxFit.cover,
                                  height: 36,
                                  width: 36,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(child: ListView(physics: AlwaysScrollableScrollPhysics(), children: items))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    };
  }
}
