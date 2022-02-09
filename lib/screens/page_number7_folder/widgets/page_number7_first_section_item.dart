import 'package:division/division.dart';
import 'package:flutter/material.dart';

class PageNumber7FirstSectionItem extends StatelessWidget {
  const PageNumber7FirstSectionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 15),
        Expanded(
          child: Parent(
            style: ParentStyle()
              ..height(200)
              ..background.color(Colors.white)
              ..alignmentContent.topCenter(true),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  overflow: Overflow.visible,
                  alignment: Alignment.topCenter,
                  children: [
                    Txt(
                      "10",
                      style: TxtStyle()
                        ..textColor(Colors.blue)
                        ..fontSize(38)
                        ..fontWeight(FontWeight.bold),
                    ),
                    Positioned(
                      top: 30,
                      child: Txt(
                        "ساعة",
                        style: TxtStyle()
                          ..textColor(Colors.blue)
                          ..fontSize(14)
                          ..fontFamily("Cairo"),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Txt(
                  "باقة الشهر",
                  style: TxtStyle()
                    ..textColor(Colors.blue)
                    ..fontSize(18)
                    ..fontFamily("Cairo")
                    ..fontWeight(FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: Colors.greenAccent,
                      size: 18,
                    ),
                    SizedBox(width: 2),
                    Txt(
                      "2 يوم في الاسبوع",
                      style: TxtStyle()
                        ..textColor(Colors.blue)
                        ..fontSize(8)
                        ..fontFamily("Cairo")
                        ..fontWeight(FontWeight.bold),
                    )
                  ],
                ),
                Txt(
                  "دروس يومية",
                  style: TxtStyle()
                    ..textColor(Colors.grey)
                    ..fontSize(12)
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
              ..height(200)
              ..alignmentContent.center(true),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Txt(
                  "700",
                  style: TxtStyle()
                    ..textColor(Colors.white)
                    ..fontSize(45)
                    ..fontWeight(FontWeight.bold),
                ),
                Txt(
                  "ريال",
                  style: TxtStyle()
                    ..textColor(Colors.white)
                    ..fontSize(18)
                    ..fontFamily("Cairo")
                    ..fontWeight(FontWeight.w600),
                ),
                Txt(
                  "متوقع الدخل",
                  style: TxtStyle()
                    ..textColor(Colors.white)
                    ..fontSize(18)
                    ..fontFamily("Cairo")
                    ..fontWeight(FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
