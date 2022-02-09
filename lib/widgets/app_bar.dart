import 'package:division/division.dart';
import 'package:flutter/material.dart';

Widget AppBarTitle() => (Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Stack(
        children: [
          Txt(
            "طالب",
            style: TxtStyle()
              ..fontWeight(FontWeight.w900)
              ..fontSize(25)
              ..textColor(Colors.blue)
              ..padding(left: 20)
              ..margin(bottom: 30)
              ..fontFamily("Cairo"),
          ),
          Positioned(
            top: 35,
            child: Txt(
              "العلم للجميع",
              style: TxtStyle()
                ..fontWeight(FontWeight.bold)
                ..fontSize(11)
                ..textColor(Colors.blue)
                ..fontFamily("Cairo"),
            ),
          )
        ],
      ),
    ));

Widget AppBarLeading() => Txt("",
    style: TxtStyle()
      ..borderRadius(all: 15)
      ..margin(top: 10, bottom: 10, right: 20)
      ..background.color(Colors.blue));

List<Widget> AppBarAction(context) => [
      IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_forward_outlined,
            size: 30,
            color: Theme.of(context).secondaryHeaderColor,
          ))
    ];
