import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:teacher_app/screens/page_number2_folder/widgets/page_number2_last_section.dart';
import 'package:teacher_app/widgets/app_bar.dart';
import 'package:teacher_app/widgets/page_number10_11_second_section.dart';
import 'package:teacher_app/widgets/txt_item.dart';

class PageNumber2 extends StatelessWidget {
  static const String pageRouts = "PageNumber2";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: AppBarTitle(),
          actions: AppBarAction(context),
          leading: AppBarLeading(),
        ),
        body: ListView(
          children: [
            SizedBox(height: 10),
            Parent(
              style: ParentStyle()
                ..background.color(Colors.white)
                ..elevation(12, opacity: .3),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TxtItem(
                    title: "الطلبات",
                    size: 17,
                    marginRight: 20,
                  ),
                  TxtItem(
                    title:
                        "يركز تطبيق طالب على جودة التعليم وجودة وصول المعلومة للطلاب",
                    size: 8,
                    marginRight: 20,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 25),
                  PageNumber1011SecondSection(),
                  SizedBox(height: 30),
                  TxtItem(
                    title: "تفاصيل الطلب",
                    marginRight: 17,
                    size: 17,
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            PageNumber2LastSection()
          ],
        ));
  }
}
