import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:teacher_app/screens/page_number7_folder/widgets/page_number7_first_section_item.dart';
import 'package:teacher_app/screens/page_number7_folder/widgets/page_number7_last_section_item.dart';
import 'package:teacher_app/widgets/app_bar.dart';
import '/widgets/stack_item.dart';

class PageNumber7 extends StatelessWidget {
  static const String pageRouts = "PageNumber7";
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
      body: StackItem(
        widget: ListView(
          children: [
            SizedBox(height: 20),
            PageNumber7FirstSectionItem(),
            SizedBox(height: 20),
            Parent(
              style: ParentStyle()
                ..background.color(Colors.white)
                ..width(double.infinity)
                ..alignmentContent.topRight(true)
                ..margin(right: 13, left: 22)
                ..borderRadius(all: 12)
                ..padding(right: 30, bottom: 30, top: 10),
              child: Text(
                "باقة الشهر",
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            SizedBox(height: 20),
            PageNumber7LastSectionItem(),
          ],
        ),
      ),
    );
  }
}
