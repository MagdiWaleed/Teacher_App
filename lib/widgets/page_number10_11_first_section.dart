import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:teacher_app/widgets/txt_item.dart';

class PageNumber1011FirstSection extends StatelessWidget {
  const PageNumber1011FirstSection({Key? key, this.Circular}) : super(key: key);
  final Widget? Circular;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Circular ??
            Container(
              margin: EdgeInsets.only(left: 5, right: 10, top: 20),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: LinearGradient(
                      colors: [
                        Colors.lightBlue[300]!,
                        Theme.of(context).primaryColor
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [.1, .8])),
            ),
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topRight,
          children: [
            TxtItem(
              marginRight: 10,
              title: "الجلسات",
              color: Colors.black,
            ),
            Positioned(
              top: 22,
              child: TxtItem(
                title: "تصفح الجلسات الخاصو بالطلب 12345678",
                size: 8,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
