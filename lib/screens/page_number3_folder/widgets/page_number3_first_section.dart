import 'package:division/division.dart';
import 'package:flutter/material.dart';

class PageNumber3FirstSectionItem extends StatelessWidget {
  const PageNumber3FirstSectionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 15),
        Expanded(
          child: Parent(
            style: ParentStyle()
              ..height(200)
              ..padding(bottom: 20)
              ..background.color(Colors.white)
              ..alignmentContent.center(true),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    Txt(
                      "10",
                      style: TxtStyle()
                        ..textColor(Colors.blue)
                        ..fontSize(50)
                        ..fontWeight(FontWeight.bold),
                    ),
                    Positioned(
                      top: 42,
                      child: Txt(
                        "ساعة",
                        style: TxtStyle()
                          ..textColor(Colors.blue)
                          ..fontSize(19)
                          ..fontFamily("Cairo"),
                      ),
                    ),
                  ],
                ),
                Txt(
                  "باقة شهر",
                  style: TxtStyle()
                    ..textColor(Colors.blue)
                    ..fontSize(20)
                    ..margin(top: 10)
                    ..fontFamily("Cairo")
                    ..fontWeight(FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        SizedBox(width: 15),
        Expanded(
          child: Parent(
            style: ParentStyle()
              ..background.color(Colors.blue)
              ..padding(bottom: 45, top: 30)
              ..height(200)
              ..alignmentContent.topCenter(true),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Txt(
                  "700",
                  style: TxtStyle()
                    ..textColor(Colors.white)
                    ..fontSize(45)
                    ..fontWeight(FontWeight.bold),
                ),
                Spacer(flex: 30),
                Txt(
                  "متوقع الدخل",
                  style: TxtStyle()
                    ..textColor(Colors.white)
                    ..fontSize(18)
                    ..fontFamily("Cairo")
                    ..fontWeight(FontWeight.w600),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
