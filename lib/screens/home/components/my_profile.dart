import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';
import 'project_card.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)
        ? DesktopView()
        : Row(
            children: [
              MobileView(),
            ],
          );
  }
}

class DesktopView extends StatelessWidget {
  const DesktopView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    offset: Offset(0, 3), // Offset (horizontal, vertical)
                    blurRadius: 6, // Blur radius
                    spreadRadius: 0, // Spread radius
                  ),
                ],
                border: Border.all(
                  color: Colors.white, // Set the color of the border
                  width: 4.0, // Set the width of the border
                ),
              ),
              child: CircleAvatar(
                radius: 90,
                backgroundColor: Colors.transparent, // Set background color to transparent
                backgroundImage: AssetImage("assets/images/persie.png"),
              ),
            ),
            // child: CircleAvatar(

            //   backgroundColor: Colors.white,
            //   backgroundImage: AssetImage("assets/images/persie.png"),
            //   radius: 90,
            //   // radius: 150,
            //   // child: CircleAvatar(
            //   //   radius: 145,
            //   //   backgroundImage: AssetImage("assets/images/persie.png"),
            //   // ),
            // ),
          ),
          SizedBox(
            width: 20,
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
                    fontSize: 32,
                  ),
                ),
                Text(
                  "I am a product Designer based in Melbourne",
                  style: TextStyle(
                    color: contentTextColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    // Add your button click logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Background color
                    foregroundColor: Colors.grey, // Text color
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20), // Button padding

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Button border radius
                      side: BorderSide(
                        color: Colors.grey, // Border color
                        width: 1.0, // Increased border width
                      ),
                    ),
                    textStyle: TextStyle(fontSize: 16), // Text style
                    // Elevation (shadow)
                  ),
                  child: Text('...'), // Button text
                ),
                SizedBox(
                  width: 20,
                ),
                TextButton(
                  onPressed: () {
                    // Add your button click logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Background color
                    foregroundColor: Color.fromRGBO(25, 28, 38, 1), // Text color
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20), // Button padding

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Button border radius
                      side: BorderSide(
                        color: Colors.grey, // Border color
                        width: 1.0, // Increased border width
                      ),
                    ),
                    textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold), // Text style
                    // Elevation (shadow)
                  ),
                  child: Text('View Portfolio'), // Button text
                ),
                SizedBox(
                  width: 20,
                ),
                TextButton(
                  onPressed: () {
                    // Add your button click logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(127, 86, 218, 1), // Background color
                    foregroundColor: Colors.white, // Text color
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20), // Button padding

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Button border radius
                      // side: BorderSide(
                      //   color: Colors.grey, // Border color
                      //   width: 1.0, // Increased border width
                      // ),
                    ),
                    textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.normal), // Text style
                    // Elevation (shadow)
                  ),
                  child: Text('+  FOLLOW'), // Button text
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MobileView extends StatelessWidget {
  const MobileView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 60,
            backgroundImage: AssetImage("assets/images/persie.png"),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Olivia Rhye",
                style: TextStyle(
                  color: Color.fromRGBO(25, 28, 38, 1),
                  fontSize: 24,
                ),
              ),
              Text(
                "I am a product Designer based in Melbourne",
                style: TextStyle(
                  color: contentTextColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),

          // Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: TextButton(
                  onPressed: () {
                    // Add your button click logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.grey,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    textStyle: TextStyle(fontSize: 14),
                  ),
                  child: Text('...'),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: TextButton(
                  onPressed: () {
                    // Add your button click logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Color.fromRGBO(25, 28, 38, 1),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    textStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  child: Text('View Portfolio'),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: TextButton(
                  onPressed: () {
                    // Add your button click logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(127, 86, 218, 1),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    textStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
                  ),
                  child: Text('+ FOLLOW'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
