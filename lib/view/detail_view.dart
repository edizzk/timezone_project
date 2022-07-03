import 'package:flutter/material.dart';
import 'package:timezone_project/widget/text_widget.dart';

import '../widget/clock_container.dart';

class DetailViewPage extends StatelessWidget {
  const DetailViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final appBarHeight = MediaQuery.of(context).size.height/10;
    final accentColor = Theme.of(context).accentColor;

    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: buildAppBar(context, appBarHeight),
        body: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height/20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                clockContainer(context, "13"),
                textWithSize(":", accentColor, 54, isBold: true),
                clockContainer(context, "48"),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/20),
            textWithSize("Abidjan", accentColor, 24, isBold: true),
            SizedBox(height: MediaQuery.of(context).size.height/80),
            textWithSize("Africa", accentColor, 20),
            SizedBox(height: MediaQuery.of(context).size.height/80),
            textWithSize("Çarşamba, GMT +01:00", accentColor, 20),
            SizedBox(height: MediaQuery.of(context).size.height/80),
            textWithSize("Haziran 8, 2022", accentColor, 20),
          ],
        ),
    );
  }

  AppBar buildAppBar(BuildContext context, double appBarHeight) {
    final accentColor = Theme.of(context).accentColor;
    return AppBar(
        title: Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/7),
            child: Text("WORLD TIME", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: accentColor))),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: appBarHeight,
        leading: GestureDetector(
          child: Icon(Icons.arrow_back, color: accentColor),
          onTap: () {Navigator.pop(context);},
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
            color: Theme.of(context).bottomAppBarColor,
          ),
        ),
      );
  }
}
