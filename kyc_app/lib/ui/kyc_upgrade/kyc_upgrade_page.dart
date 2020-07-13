import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:ui';
import 'kyc_upgrade_page_part_0.dart';
import 'package:kyc_app/domain/user_profile.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

int currentIndex = 0;
PageController pageController = new PageController(initialPage: 0);

class KycUpgradePage extends StatefulWidget {
  final UserProfile userProfile;

  const KycUpgradePage({Key key, this.userProfile}) : super(key: key);
  @override
  _KycUpgradePageState createState() => _KycUpgradePageState();
}

class _KycUpgradePageState extends State<KycUpgradePage> {
  Widget pageIndexIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2),
      height: 8,
      width: 20,
      decoration: BoxDecoration(
          color: isCurrentPage ? HexColor("#090909") : HexColor("#FFFFFF"),
          shape: BoxShape.circle,
          border: Border.all(color: HexColor("#090909").withOpacity(0.1))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: SafeArea(
        child: PageView.builder(
            key: Key("PAGE VIEW"),
            controller: pageController,
            itemCount: 3,
            onPageChanged: (val) {
              setState(() {
                currentIndex = val;
              });
            },
            itemBuilder: (context, index) {
              if(currentIndex == 0){
                return KycUpgradePagePart0();
              } 
              }),
      ),
      bottomSheet: Container(
        height: 120,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 5.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      for (int i = 0; i < 3; i++)
                        currentIndex == i
                            ? pageIndexIndicator(true)
                            : pageIndexIndicator(false)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
