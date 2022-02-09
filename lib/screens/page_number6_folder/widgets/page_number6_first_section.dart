import 'package:division/division.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teacher_app/widgets/txt_item.dart';

class PageNumber6FirstSection extends StatelessWidget {
  const PageNumber6FirstSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Parent(
          style: ParentStyle()
            ..alignmentContent.topRight(true)
            ..margin(right: 40),
          child: TxtItem(
            title: "الايرادات",
            size: 18,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 50),
            TxtItem(
              title: "اجمالي الدخل",
              width: FontWeight.w900,
              size: 12,
            ),
            Spacer(),
            SizedBox(
              height: 25,
              child: VerticalDivider(
                thickness: 1,
                color: Colors.blue,
              ),
            ),
            Spacer(),
            TxtItem(
              title: "الدخل هذا الشهر",
              size: 12,
            ),
            Spacer(),
          ],
        )
      ],
    );
  }
}
