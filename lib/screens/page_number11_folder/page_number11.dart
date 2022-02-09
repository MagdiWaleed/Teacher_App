import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:teacher_app/screens/page_number3_folder/page_number3.dart';
import 'package:teacher_app/widgets/app_bar.dart';
import 'package:teacher_app/widgets/page_number10_11_first_section.dart';
import 'package:teacher_app/widgets/page_number10_11_last_section.dart';
import 'package:teacher_app/widgets/page_number10_11_second_section.dart';
import 'package:teacher_app/widgets/txt_item.dart';

class PageNumber11 extends StatelessWidget {
  static const String pageRouts = "PageNumber11";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              PageNumber1011FirstSection(),
              PageNumber1011SecondSection(),
              SizedBox(height: 15),
              Stack(
                alignment: Alignment.topRight,
                clipBehavior: Clip.none,
                children: [
                  TxtItem(
                    title: "اسم الطالب",
                    marginRight: 30,
                  ),
                  Positioned(
                    top: 20,
                    child: TxtItem(
                      title: "دانية طلال محمد ابراهيم",
                      marginRight: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              PageNumber1011LastSection(
                lineUnder: Container(),
                ontap: () =>
                    Navigator.of(context).pushNamed(PageNumber3.pageRouts),
                Elevation: 10,
                CircularMarginTop: 0,
                CircularSize: 40,
                marginVertical: 8,
                SizedBoxBottom: 20,
              ),
              PageNumber1011LastSection(
                lineUnder: Container(),
                Elevation: 10,
                CircularMarginTop: 0,
                CircularSize: 40,
                marginVertical: 8,
                SizedBoxBottom: 20,
              ),
              PageNumber1011LastSection(
                lineUnder: Container(),
                Elevation: 10,
                CircularMarginTop: 0,
                CircularSize: 40,
                marginVertical: 8,
                SizedBoxBottom: 20,
              ),
              PageNumber1011LastSection(
                lineUnder: Container(),
                Elevation: 10,
                CircularMarginTop: 0,
                CircularSize: 40,
                marginVertical: 8,
                SizedBoxBottom: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
