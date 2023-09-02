import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_svg/svg.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.only(left: 0, top: 50, right: 0, bottom: 0),
              children: [
                MyInfo(),
                SizedBox(
                  height: 50,
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: const Text(
                    'Home',
                    style: TextStyle(color: Color.fromRGBO(41, 51, 61, 1), fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(Icons.dashboard),
                  title: const Text(
                    'Dashboard',
                    style: TextStyle(color: Color.fromRGBO(41, 51, 61, 1), fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(Icons.document_scanner),
                  title: const Text(
                    'Projects',
                    style: TextStyle(color: Color.fromRGBO(41, 51, 61, 1), fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(Icons.task),
                  title: const Text(
                    'Tasks',
                    style: TextStyle(color: Color.fromRGBO(41, 51, 61, 1), fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
              ],
            ),
          ),
          Container(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Column(
                children: [
                  //Divider(),
                  ListTile(
                    leading: Icon(Icons.support),
                    title: const Text(
                      'Support',
                      style: TextStyle(color: Color.fromRGBO(41, 51, 61, 1), fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: const Text(
                      'Settings',
                      style: TextStyle(color: Color.fromRGBO(41, 51, 61, 1), fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage("assets/images/persie.png"),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Olivia Rhye",
                          style: TextStyle(
                            color: Color.fromRGBO(25, 28, 38, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "olivia@gmail.com",
                          style: TextStyle(
                            color: contentTextColor,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ListTile(
                      leading: Icon(Icons.logout),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
