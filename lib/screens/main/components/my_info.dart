import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // aspectRatio: 1.23,
      child: Container(
        padding: EdgeInsets.all(15),
        // color: Color(0xFF242430),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.sports_football_rounded,
                  size: 36,
                  color: contentTextColor,
                ),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  child: Text(
                    "Manchester",
                    style: TextStyle(
                      color: Color.fromRGBO(25, 28, 38, 1),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
