import 'package:flutter/material.dart';
import 'package:teacher_app/widgets/txt_item.dart';

class PageNumber1011SecondSection extends StatelessWidget {
  const PageNumber1011SecondSection(
      {Key? key, this.title, this.subtitle, this.icon})
      : super(key: key);
  final String? title;
  final String? subtitle;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 20),
        _NumberOfOrder(),
        Spacer(flex: 10),
        _NumberOfOrder(
          title: title,
          subtitle: subtitle,
          icon: icon,
        ),
        Spacer(flex: 8)
      ],
    );
  }
}

class _NumberOfOrder extends StatelessWidget {
  const _NumberOfOrder(
      {Key? key, this.icon, this.title, this.subtitle, this.positionedTop})
      : super(key: key);
  final IconData? icon;
  final String? title;
  final String? subtitle;
  final double? positionedTop;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 13),
          child: Icon(
            Icons.backpack_outlined,
            color: Colors.grey,
            size: 20,
          ),
        ),
        Stack(
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
                size: 8,
              ),
            )
          ],
        ),
      ],
    );
  }
}
