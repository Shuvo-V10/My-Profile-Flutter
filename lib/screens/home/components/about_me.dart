import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Recommendation.dart';
import 'package:flutter_profile/screens/home/components/about_me.dart';

import '../../../constants.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.symmetric(vertical: defaultPadding),

      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Experience",
            style: TextStyle(
              color: Color.fromRGBO(25, 28, 38, 1),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna",
            style: TextStyle(
              color: contentTextColor,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Divider(),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "About Me",
                      style: TextStyle(
                        color: Color.fromRGBO(25, 28, 38, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
                      style: TextStyle(
                        color: contentTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud ",
                      style: TextStyle(
                        color: contentTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   width: 100,
              // ),
              // Expanded(
              //   flex: 2,
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //       Text(
              //         "Location",
              //         style: TextStyle(
              //           color: Color.fromRGBO(25, 28, 38, 1),
              //           fontSize: 14,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //       SizedBox(
              //         height: 15,
              //       ),
              //       Row(
              //         children: [
              //           Icon(
              //             Icons.map_outlined,
              //             color: contentTextColor,
              //           ), // Map Icon
              //           SizedBox(width: 10), // Space between icon and text
              //           Text(
              //             "Melbourne Australia",
              //             style: TextStyle(
              //               color: contentTextColor,
              //               fontSize: 14,
              //               fontWeight: FontWeight.normal,
              //             ),
              //           ),
              //         ],
              //       ),
              //       SizedBox(
              //         height: 30,
              //       ),
              //       Text(
              //         "Portfolio",
              //         style: TextStyle(
              //           color: Color.fromRGBO(25, 28, 38, 1),
              //           fontSize: 14,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //       Row(
              //         children: [
              //           Text(
              //             "@oliverhye",
              //             style: TextStyle(
              //               color: Colors.purple,
              //               fontSize: 14,
              //               fontWeight: FontWeight.normal,
              //             ),
              //           ),
              //           SizedBox(width: 10),

              //           MouseRegion(
              //             cursor: SystemMouseCursors.click, // Change cursor to pointer
              //             child: GestureDetector(
              //               onTap: () {
              //                 // Handle the click action here
              //                 //print('Link icon clicked');
              //                 // Add your navigation logic or any other actions you want to perform
              //               },
              //               child: Icon(
              //                 Icons.link,
              //                 color: Colors.blue,
              //                 //size: 36,
              //               ),
              //             ),
              //           ),

              //           // Icon(
              //           //   Icons.link,
              //           //   color: Colors.blue,
              //           // ), // Map Icon
              //           // Space between icon and text
              //         ],
              //       ),
              //     ],
              //   ),
              // )
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
