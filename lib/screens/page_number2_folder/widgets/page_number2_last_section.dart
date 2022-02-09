import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:teacher_app/widgets/txt_item.dart';

class PageNumber2LastSection extends StatelessWidget {
  const PageNumber2LastSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Parent(
      style: ParentStyle()
        ..margin(right: 10)
        ..borderRadius(all: 12)
        ..padding(right: 20, bottom: 5, top: 5)
        ..background.color(Colors.white)
        ..elevation(12, opacity: .3),
      child: Column(
        children: [
          _NumberOfOrder(
            title: "جامعي",
            subtitle: "المستوى التعليمي",
            showUnderLine: true,
          ),
          _NumberOfOrder(
            title: "منهج امريكي",
            showUnderLine: true,
            positionedTop: 20,
            icon: Icons.ac_unit,
            subtitle: "المنهج الدراسي",
          ),
          _NumberOfOrder(
            showUnderLine: true,
            title: "المتوسط الثانوي",
            subtitle: "اقوم بالتدريس",
          ),
          _NumberOfOrder(
            title: "باكستاني",
            subtitle: "المسار التعليمي",
          ),
        ],
      ),
    );
  }
}

class _NumberOfOrder extends StatelessWidget {
  const _NumberOfOrder(
      {Key? key,
      this.icon,
      this.title,
      this.subtitle,
      this.positionedTop,
      this.showUnderLine})
      : super(key: key);
  final IconData? icon;
  final String? title;
  final String? subtitle;
  final double? positionedTop;
  final bool? showUnderLine;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 10, top: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 5, top: 5),
                child: Icon(
                  icon ?? Icons.backpack_outlined,
                  color: Colors.grey,
                  size: 20,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Stack(
                  alignment: Alignment.topRight,
                  clipBehavior: Clip.none,
                  children: [
                    TxtItem(
                      title: title ?? "رقم الطلب",
                      marginRight: 1,
                      size: 10,
                      width: FontWeight.w900,
                      color: Colors.black,
                    ),
                    Positioned(
                      top: positionedTop ?? 15,
                      child: TxtItem(
                        title: subtitle ?? "12345612",
                        color: Colors.grey,
                        size: 7,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        showUnderLine == true
            ? Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 1,
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                  )
                ],
              )
            : Container()
      ],
    );
  }
}
