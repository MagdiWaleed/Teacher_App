import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:teacher_app/screens/page_number6_folder/widgets/page_number6_first_section.dart';
import 'package:teacher_app/screens/page_number6_folder/widgets/page_number6_last_section.dart';
import 'package:teacher_app/screens/page_number6_folder/widgets/page_number6_second_section.dart';
import 'package:teacher_app/widgets/app_bar.dart';
import 'package:teacher_app/widgets/txt_item.dart';

class PageNumber6 extends StatelessWidget {
  static const String pageRouts = "PageNumber6";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: AppBarTitle(),
        leading: AppBarLeading(),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: AppBarAction(context),
      ),
      body: ListView(
        children: [
          SizedBox(height: 10),
          PageNumber6FirstSection(),
          SizedBox(height: 35),
          PageNumber6SecondSection(),
          TxtItem(
            title: "احدث الايداعات",
            color: Colors.black,
            marginRight: 20,
            size: 17,
          ),
          SizedBox(height: 10),
          PageNumber6LastSection()
        ],
      ),
    );
  }
}
