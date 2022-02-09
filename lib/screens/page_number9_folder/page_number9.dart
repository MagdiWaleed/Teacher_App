import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:teacher_app/widgets/app_bar.dart';
import './widgets/page_number9_orders.dart';
import './widgets/page_number9_subjects_item.dart';
import './widgets/stack_page_number9_item.dart';

class PageNumber9 extends StatelessWidget {
  static const String pageRouts = "PageNumber9";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          title: AppBarTitle(),
          leading: AppBarLeading(),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: AppBarAction(context)),
      body: StackPageNumber9Item(
        widget: ListView(
          children: [
            PageNumber9Orders(),
            SizedBox(height: 10),
            PageNumber9SubjectsItem(
              titleOfSubject: "حصة الرياضيات",
              title1: "طلال محمد ابراهيم",
              subtitle1: "المدرس",
              subtitle2: "حالة الحصة",
              title2: "حضوري",
              subtitle3: "     اكتمال الحصة",
              widget: Txt(
                "الحصة جارية الان",
                style: TxtStyle()
                  ..padding(horizontal: 8)
                  ..borderRadius(all: 15)
                  ..fontWeight(FontWeight.w800)
                  ..fontSize(8)
                  ..margin(left: 10)
                  ..fontFamily("Cairo")
                  ..background.color(Theme.of(context).primaryColor),
              ),
            ),
            SizedBox(height: 10),
            PageNumber9SubjectsItem(
              titleOfSubject: "حصة الرياضيات",
              title1: "طلال محمد ابراهيم",
              subtitle1: "المدرس",
              subtitle2: "حالة الحصة",
              title2: "حضوري",
              subtitle3: "     اكتمال الحصة",
              widget: Txt(
                "انتهت",
                style: TxtStyle()
                  ..padding(horizontal: 32)
                  ..borderRadius(all: 15)
                  ..fontWeight(FontWeight.w800)
                  ..fontSize(8)
                  ..margin(left: 10)
                  ..fontFamily("Cairo")
                  ..background.color(Colors.red),
              ),
            ),
            SizedBox(height: 20),
            PageNumber9SubjectsItem(
              titleOfSubject: "حصة الفيزياء",
              title1: "طلال محمد ابراهيم",
              subtitle1: "المدرس",
              subtitle2: "حالة الحصة",
              title2: "حضوري",
              subtitle3: "              اكتمال الحصة",
              widget: Container(
                width: 130,
                child: Txt(
                  "الوقت المتبقي لبدأ الحصة ساعتان",
                  style: TxtStyle()
                    ..padding(horizontal: 8, right: 15)
                    ..borderRadius(all: 12)
                    ..fontWeight(FontWeight.w800)
                    ..fontSize(8)
                    ..alignmentContent.centerLeft()
                    ..margin(left: 10)
                    ..fontFamily("Cairo")
                    ..background.color(Colors.grey[300]!),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
