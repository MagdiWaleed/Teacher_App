import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:teacher_app/screens/page_number3_folder/page_number3.dart';
import 'package:teacher_app/screens/page_number8_folder/page_number8.dart';

class PageNumber7LastSectionItem extends StatelessWidget {
  const PageNumber7LastSectionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Parent(
      style: ParentStyle()
        ..background.color(Colors.white)
        ..margin(horizontal: 20)
        ..borderRadius(all: 12)
        ..padding(right: 15, top: 15, left: 30, bottom: 20)
        ..alignmentContent.topRight(true),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "تفاصيل الطلب",
                style: Theme.of(context).textTheme.headline1,
              ),
              Spacer(),
              Txt(
                "رقم الطالب 1324587898",
                style: TxtStyle()
                  ..fontFamily("Cairo")
                  ..fontSize(10)
                  ..textColor(Colors.grey),
              )
            ],
          ),
          SizedBox(height: 30),
          Txt(
            "اسم الطالب/ولي الامر",
            style: TxtStyle()
              ..fontSize(10)
              ..fontWeight(FontWeight.bold)
              ..fontFamily("Cairo")
              ..textColor(Colors.blue),
          ),
          Txt(
            "دانيو طلال محمد ابراهيم",
            style: TxtStyle()
              ..fontWeight(FontWeight.bold)
              ..fontSize(10)
              ..fontFamily("Cairo")
              ..textColor(Colors.grey),
          ),
          Row(
            children: [
              Expanded(
                child: Txt(
                  "وقت الحصة",
                  style: TxtStyle()
                    ..fontWeight(FontWeight.bold)
                    ..fontFamily("Cairo")
                    ..fontSize(12),
                ),
              ),
              Expanded(
                child: Txt(
                  "الاربعاء 2022/9/15",
                  style: TxtStyle()
                    ..fontWeight(FontWeight.bold)
                    ..fontSize(10)
                    ..fontFamily("Cairo")
                    ..textColor(Colors.grey),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Txt(
                  "نوع التدريس",
                  style: TxtStyle()
                    ..fontWeight(FontWeight.bold)
                    ..fontFamily("Cairo")
                    ..fontSize(12),
                ),
              ),
              Expanded(
                child: Txt(
                  "حضوري",
                  style: TxtStyle()
                    ..fontWeight(FontWeight.bold)
                    ..fontFamily("Cairo")
                    ..fontSize(12),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Txt(
                  "المرحلة الدراسية",
                  style: TxtStyle()
                    ..fontWeight(FontWeight.bold)
                    ..fontFamily("Cairo")
                    ..fontSize(12),
                ),
              ),
              Expanded(
                child: Txt(
                  "ابتدائي",
                  style: TxtStyle()
                    ..fontWeight(FontWeight.bold)
                    ..fontFamily("Cairo")
                    ..fontSize(12),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Txt(
                  "الحصة مجانية",
                  style: TxtStyle()
                    ..fontWeight(FontWeight.bold)
                    ..fontFamily("Cairo")
                    ..fontSize(12),
                ),
              ),
              Expanded(
                child: Txt(
                  "ابتدائي",
                  style: TxtStyle()
                    ..fontWeight(FontWeight.bold)
                    ..fontFamily("Cairo")
                    ..fontSize(12),
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    padding: EdgeInsets.symmetric(vertical: 10),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(PageNumber8.pageRouts);
                  },
                  child: Text(
                    "ادفع",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    padding: EdgeInsets.symmetric(vertical: 10),
                  ),
                  onPressed: () {},
                  child: Text(
                    "ادفع",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
