import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:teacher_app/screens/page_number3_folder/widgets/page_number3_button_item.dart';
import 'package:teacher_app/screens/page_number8_folder/widgets/page_number8_button_item.dart';
import 'package:teacher_app/widgets/showalert_timer_folder/showalert_timer_main.dart';
import 'package:teacher_app/widgets/txt_item.dart';

class PageNumber8SeconSectionItem extends StatelessWidget {
  const PageNumber8SeconSectionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Parent(
      style: ParentStyle()
        ..alignmentContent.topRight()
        ..padding(all: 10)
        ..margin(horizontal: 20)
        ..borderRadius(topRight: 10, topLeft: 10)
        ..background.color(Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              TxtItem(
                title: "تفاصيل الطلب",
                color: Colors.black,
                size: 17,
              ),
              Spacer(
                flex: 2,
              ),
              TxtItem(
                title: "رقم الطلب 021655484520",
                size: 9,
                color: Colors.grey,
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: 12),
          TxtItem(
            title: "اسم الطالب ولي الامر",
            size: 11,
          ),
          TxtItem(
            title: "دانية طلال محمد ابراهيم احمد",
            color: Colors.grey,
            size: 11,
          ),
          SizedBox(height: 20),
          Divider(thickness: 1),
          TxtItem(
              title: "وقت الحصة",
              color: Colors.black,
              size: 12,
              marginRight: 3),
          SizedBox(height: 5),
          Row(
            children: [
              _MyRows(),
              Spacer(flex: 5),
              _MyRows(
                title: "52154665",
                icon: Icons.access_time_rounded,
              ),
              Spacer(flex: 4),
            ],
          ),
          SizedBox(height: 5),
          Divider(thickness: 1),
          SizedBox(height: 50),
          PageNumber8ButtonsItem(
              titleOfButton: "بدء الحصة",
              size: 16,
              sizedBoxWidth: 20,
              onPressd: () {
                showDialog(
                    context: context,
                    builder: (ctx) => ShowAlertTimerMine(context));
              }),
        ],
      ),
    );
  }
}

class _MyRows extends StatelessWidget {
  const _MyRows({Key? key, this.icon, this.title}) : super(key: key);
  final IconData? icon;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon ?? Icons.backpack_outlined,
          color: Colors.grey,
          size: 20,
        ),
        SizedBox(width: 3),
        TxtItem(
          title: title ?? "الاربعاء 2022/5/31",
          size: 8,
          color: Colors.grey,
        )
      ],
    );
  }
}
