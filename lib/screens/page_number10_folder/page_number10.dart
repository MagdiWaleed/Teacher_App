import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:teacher_app/widgets/page_number10_11_first_section.dart';
import 'package:teacher_app/widgets/page_number10_11_last_section.dart';
import 'package:teacher_app/widgets/page_number10_11_second_section.dart';
import 'package:teacher_app/screens/page_number11_folder/page_number11.dart';
import 'package:teacher_app/widgets/app_bar.dart';

class PageNumber10 extends StatelessWidget {
  static const String pageRouts = "pageNumber10";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: AppBarTitle(),
        actions: AppBarAction(context),
        leading: AppBarLeading(),
      ),
      body: ListView(
        children: [
          SizedBox(height: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PageNumber1011FirstSection(),
              PageNumber1011SecondSection(
                title: "التاريخ",
                subtitle: "31/1/2223",
              ),
              SizedBox(height: 40),
              PageNumber1011LastSection(
                ontap: () =>
                    Navigator.of(context).pushNamed(PageNumber11.pageRouts),
              ),
              PageNumber1011LastSection(),
              PageNumber1011LastSection(),
              PageNumber1011LastSection(),
              PageNumber1011LastSection(),
              PageNumber1011LastSection(),
              PageNumber1011LastSection(),
            ],
          ),
        ],
      ),
    );
  }
}
