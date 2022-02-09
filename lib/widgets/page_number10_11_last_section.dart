import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:teacher_app/widgets/txt_item.dart';

class PageNumber1011LastSection extends StatelessWidget {
  const PageNumber1011LastSection(
      {Key? key,
      this.ontap,
      this.Elevation,
      this.lineUnder,
      this.marginVertical,
      this.CircularSize,
      this.CircularMarginTop,
      this.SizedBoxBottom})
      : super(key: key);
  final VoidCallback? ontap;
  final double? Elevation;
  final Widget? lineUnder;
  final double? marginVertical;
  final double? CircularSize;
  final double? CircularMarginTop;
  final double? SizedBoxBottom;
  @override
  Widget build(BuildContext context) {
    return Parent(
      style: ParentStyle()
        ..padding(vertical: marginVertical)
        ..margin(bottom: SizedBoxBottom ?? 0)
        ..elevation(Elevation ?? 0, opacity: .2)
        ..background.color(Colors.white),
      child: InkWell(
          splashColor: Colors.grey[200],
          onTap: ontap ?? () {},
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        right: 15, left: 15, top: CircularMarginTop ?? 10),
                    child: Icon(
                      Icons.check_circle_outline_rounded,
                      color: Theme.of(context).primaryColor,
                      size: CircularSize ?? 35,
                    ),
                  ),
                  Expanded(
                      child: _DetailsOfOrder(
                    title: "تاريخ الجلسة",
                    subtitle: "2002/3/02",
                    marginRightSubtitle: 3,
                  )),
                  Expanded(
                      child: _DetailsOfOrder(
                    title: "بداية الجلسة",
                    marginRightTitle: 2,
                    subtitle: "1:25 ص",
                  )),
                  Expanded(
                      child: _DetailsOfOrder(
                    title: "نهاية الجلسة",
                    marginRightTitle: 5,
                    subtitle: "2:25 م",
                  )),
                ],
              ),
              lineUnder ??
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 50, right: 60),
                    child: Divider(
                      thickness: 1,
                    ),
                  )
            ],
          )),
    );
  }
}

class _DetailsOfOrder extends StatelessWidget {
  const _DetailsOfOrder(
      {Key? key,
      this.icon,
      this.marginRightTitle,
      this.title,
      this.marginRightSubtitle,
      this.subtitle,
      this.positionedTop})
      : super(key: key);
  final IconData? icon;
  final String? title;
  final double? marginRightSubtitle;
  final String? subtitle;
  final double? positionedTop;
  final double? marginRightTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TxtItem(
          title: title ?? "رقم الطلب",
          marginRight: marginRightTitle ?? 1,
          size: 10,
          width: FontWeight.w900,
          color: Colors.black,
        ),
        TxtItem(
          title: subtitle ?? "12345612",
          color: Colors.grey,
          size: 8,
          marginRight: marginRightSubtitle ?? 0,
        )
      ],
    );
  }
}
