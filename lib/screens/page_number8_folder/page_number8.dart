import 'package:flutter/material.dart';
import 'package:teacher_app/screens/page_number8_folder/widgets/page_number8_first_section.dart';
import 'package:teacher_app/screens/page_number8_folder/widgets/page_number8_second_section.dart';
import 'package:teacher_app/widgets/app_bar.dart';
import 'package:teacher_app/widgets/stack_item.dart';

class PageNumber8 extends StatelessWidget {
  static const String pageRouts = "PageNumber8";
  double mmm = 1032;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: AppBarTitle(),
        leading: AppBarLeading(),
        actions: AppBarAction(context),
      ),
      body: StackItem(
        widget: ListView(
          children: [
            SizedBox(height: 20),
            PageNumber8FirstSectionItem(),
            SizedBox(height: 10),
            PageNumber8SeconSectionItem(),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                color: Colors.white,
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
