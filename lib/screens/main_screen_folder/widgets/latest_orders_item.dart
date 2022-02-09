import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:teacher_app/screens/page_number7_folder/page_number7.dart';

class LatestOrderItem extends StatelessWidget {
  const LatestOrderItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Parent(
      style: ParentStyle()
        ..borderRadius(all: 5)
        ..background.color(Colors.white)
        ..margin(horizontal: 20)
        ..padding(top: 30, right: 25, left: 10),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          InkWell(
            splashColor: Colors.grey,
            child: _BuildListTaile(),
            onTap: () {
              Navigator.of(context).pushNamed(PageNumber7.pageRouts);
            },
          ),
          _BuildListTaile(),
          _BuildListTaile(),
          _BuildListTaile(),
        ],
      ),
    );
  }
}

class _BuildListTaile extends StatelessWidget {
  const _BuildListTaile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Parent(
      style: ParentStyle(),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Parent(
                    style: ParentStyle()
                      ..borderRadius(all: 100)
                      ..height(40)
                      ..margin(top: 10, bottom: 5, left: 10)
                      ..width(40)
                      ..background.color(Colors.white)
                      ..border(all: 1, color: Colors.grey),
                    child: Txt(" "),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "عبد الرحمن وليد",
                        style: TextStyle(
                          fontFamily: "Cairo",
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color(0xff616161),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "الرياض",
                            style: TextStyle(
                              fontFamily: "Cairo",
                              fontWeight: FontWeight.bold,
                              fontSize: 8,
                              color: Color(0xffaaaaaa),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "رياضيات*فيزياء",
                            style: TextStyle(
                              fontFamily: "Cairo",
                              fontWeight: FontWeight.bold,
                              fontSize: 8,
                              color: Color(0xffaaaaaa),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Txt(
                "20 ساعة",
                style: TxtStyle()
                  ..fontFamily("Cairo")
                  ..padding(horizontal: 10, vertical: 3)
                  ..borderRadius(all: 20)
                  ..fontWeight(FontWeight.bold)
                  ..textColor(Colors.grey)
                  ..background.color(Theme.of(context).primaryColor)
                  ..fontSize(9),
              )
            ],
          ),
          Row(
            children: [
              Expanded(child: Divider(thickness: 1)),
              SizedBox(width: 10),
            ],
          )
        ],
      ),
    );
  }
}
