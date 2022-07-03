import 'package:flutter/material.dart';
import 'package:timezone_project/controller/timezone_controller.dart';
import 'package:timezone_project/view/detail_view.dart';

GestureDetector buildCard(BuildContext context, int index, TimeZoneController timeZoneController) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DetailViewPage()));
    },
    child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 40, left: 20),
          child: Card(
            elevation: 5,
            color: Theme.of(context).bottomAppBarColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: const EdgeInsets.only(left: 20) ,child: Text(timeZoneController.timezoneList[index].timezone)),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            right: 26, bottom: 0, top: 0,
            child: SizedBox(
              height: 32,
              width: 32,
              child: RawMaterialButton(
                fillColor: Theme.of(context).bottomAppBarColor,
                shape: CircleBorder(
                  side: BorderSide(
                    width: 2,
                    color: Theme.of(context).primaryColor,
                  )
                ),
                onPressed: () {},
                child: Icon(Icons.arrow_forward_ios, size: 18, color: Theme.of(context).canvasColor),
              ),
            ),
        ),
      ],
    ),
  );
}