import 'package:division/division.dart';
import 'package:flutter/material.dart';

class PageNumber9SubjectsItem extends StatelessWidget {
  final String title1;
  final String subtitle1;
  final String title2;
  final String subtitle2;
  final String? title3;
  final String subtitle3;
  final Widget widget;
  final String titleOfSubject;

  PageNumber9SubjectsItem(
      {required this.title1,
      required this.subtitle1,
      required this.title2,
      this.title3,
      required this.subtitle2,
      required this.subtitle3,
      required this.widget,
      required this.titleOfSubject});

  @override
  Widget build(BuildContext context) {
    return Parent(
      style: ParentStyle()
        ..background.color(Colors.white)
        ..margin(horizontal: 20)
        ..padding(right: 10)
        ..borderRadius(all: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 30),
              Text(titleOfSubject,
                  style: Theme.of(context).textTheme.headline1),
            ],
          ),
          SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _Details(subtitle: subtitle1, title: title1),
              _Details(subtitle: subtitle2, title: title2),
              _Details(
                subtitle: subtitle3,
                title: title3,
                widget: widget,
              ),
            ],
          ),
          SizedBox(height: 20),
          Txt(
            "مشاهدة الطلب",
            style: TxtStyle()
              ..margin(right: 40)
              ..fontSize(10)
              ..fontWeight(FontWeight.bold)
              ..fontFamily("Cairo"),
          ),
          SizedBox(height: 20)
        ],
      ),
    );
  }
}

class _Details extends StatelessWidget {
  const _Details({
    this.title,
    required this.subtitle,
    this.widget,
    Key? key,
  }) : super(key: key);
  final String? title;
  final String subtitle;
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Txt(
          subtitle,
          style: TxtStyle()
            ..fontFamily("Cairo")
            ..textColor(Colors.grey)
            ..fontWeight(FontWeight.w900)
            ..fontSize(8),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            widget ??
                Txt(
                  title ?? "",
                  style: TxtStyle()
                    ..fontFamily("Cairo")
                    ..fontWeight(FontWeight.w900)
                    ..fontSize(9),
                ),
          ],
        ),
      ],
    );
  }
}
