import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class KycUpgradePagePart0 extends StatefulWidget {
  @override
  _KycUpgradePagePart0State createState() => _KycUpgradePagePart0State();
}

class _KycUpgradePagePart0State extends State<KycUpgradePagePart0> {
  File passport_image_file;
  File utility_image_file;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "KYC Stage 1 registration",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue
                        // letterSpacing: 0.1,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Kindly upload the following documents",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                        // letterSpacing: 0.1,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),

          // SizedBox(height: 5),
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: SizedBox(
                      width: 300,
                      height: 60,
                      child: OutlineButton(
                        key: Key("OUTLINE BUTTON"),
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        onPressed: () async {
                          PickedFile pickedFile = await ImagePicker()
                              .getImage(source: ImageSource.gallery);
                          if (pickedFile != null) {
                            final File file = File(pickedFile.path);
                            setState(() {
                              passport_image_file = file;
                            });
                          }
                        },
                        color: Colors.black,
                        child: passport_image_file == null
                            ? Text(
                                "Passport",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.3),
                              )
                            : Icon(Icons.done, color: Colors.green, size: 40.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: SizedBox(
                      width: 300,
                      height: 60,
                      child: OutlineButton(
                        key: Key("OUTLINE BUTTON"),
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        onPressed: () {
                          // Navigator.pushReplacement(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (BuildContext context) => LogInScreen(),
                          //   ),
                          // );
                        },
                        color: Colors.black,
                        child: Text(
                          "Utility bill showing your address",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.3),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: SizedBox(
                      width: 300,
                      height: 60,
                      child: FlatButton(
                        key: Key("OUTLINE BUTTON"),
                        // borderSide: BorderSide(color: Colors.black, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: () {
                          // Navigator.pushReplacement(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (BuildContext context) => LogInScreen(),
                          //   ),
                          // );
                        },
                        color: Colors.blue,
                        child: Text(
                          "Upload",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.3),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 110),
        ],
      ),
    );
  }
}
