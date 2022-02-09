import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:teacher_app/screens/page_number3_folder/page_number3.dart';

class PageNumber6LastSection extends StatelessWidget {
  const PageNumber6LastSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _LastestDeposits(
          ontap: () {
            Navigator.of(context).pushNamed(PageNumber3.pageRouts);
          },
        ),
        _LastestDeposits(
          title: "ابو عبد الله عادل العتيبي",
        ),
        _LastestDeposits(
          title: "الفاروق محمد عمر",
        ),
      ],
    );
  }
}

class _LastestDeposits extends StatelessWidget {
  const _LastestDeposits({
    Key? key,
    this.title,
    this.ontap,
  }) : super(key: key);
  final String? title;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Parent(
        style: ParentStyle()
          ..background.color(Colors.white)
          ..margin(horizontal: 20, bottom: 8)
          ..padding(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        ..background.color(Colors.transparent)
                        ..border(all: 1, color: Colors.grey),
                      child: Icon(Icons.arrow_downward),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title ?? "عبد الرحمن وليد",
                          style: TextStyle(
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            fontSize: 12,
                            color: Color(0xff616161),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "اجمالي المبلغ",
                              style: TextStyle(
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.bold,
                                fontSize: 7,
                                color: Color(0xffaaaaaa),
                              ),
                            ),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.15),
                            Text(
                              "1500",
                              style: TextStyle(
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.w900,
                                fontSize: 12,
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
                    ..margin(top: 5)
                    ..padding(horizontal: 15, vertical: 3)
                    ..borderRadius(all: 20)
                    ..fontWeight(FontWeight.bold)
                    ..textColor(Colors.grey)
                    ..background.color(Theme.of(context).primaryColor)
                    ..fontSize(8),
                )
              ],
            ),
            SizedBox(height: 18)
          ],
        ),
      ),
    );
  }
}
