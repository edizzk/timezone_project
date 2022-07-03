import 'package:flutter/material.dart';

class DetailViewPage extends StatelessWidget {
  const DetailViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final appBarHeight = MediaQuery.of(context).size.height/10;

    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: buildAppBar(context, appBarHeight),
        body: Center(),
    );
  }

  AppBar buildAppBar(BuildContext context, double appBarHeight) {
    return AppBar(
        title: Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/7),
            child: Text("WORLD TIME", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Theme.of(context).accentColor))),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: appBarHeight,
        leading: GestureDetector(
          child: Icon(Icons.arrow_back, color: Theme.of(context).accentColor),
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
