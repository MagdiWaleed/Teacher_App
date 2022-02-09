import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:teacher_app/screens/page_number6_folder/page_number6.dart';
import 'package:teacher_app/widgets/txt_item.dart';
import '/screens/page_number9_folder/page_number9.dart';

class TeacherDetailsItem extends StatelessWidget {
  const TeacherDetailsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Parent(
          style: ParentStyle()
            ..background.color(Colors.white)
            ..borderRadius(all: 12)
            ..padding(right: 20, left: 5, top: 50, bottom: 20)
            ..margin(horizontal: 20, top: 50),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TxtItem(
                title: "طلال محمد ابراهيم",
                size: 17,
                marginLift: 15,
                width: FontWeight.bold,
              ),
              TxtItem(
                title: "دكتورة في التدريس",
                size: 12,
                color: Colors.black,
                marginLift: 15,
                width: FontWeight.w700,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(PageNumber6.pageRouts);
                    },
                    child: _Columns(
                      title: "ايراداتي",
                      subTitle: "1500",
                      rs: "رس",
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(PageNumber9.pageRouts);
                    },
                    child: _Columns(
                      title: "طلب",
                      subTitle: "50",
                    ),
                  ),
                  _Columns(title: "عدد الساعات", subTitle: "20")
                ],
              )
            ],
          ),
        ),
        Positioned(
          child: CircleAvatar(backgroundColor: Colors.grey, radius: 37),
          top: 5,
        )
      ],
    );
  }
}

class _Columns extends StatelessWidget {
  const _Columns({
    required this.title,
    required this.subTitle,
    this.rs,
  });
  final String title;
  final String subTitle;
  final String? rs;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(
              subTitle,
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Cairo",
                  color: Colors.black.withOpacity(.25)),
            ),
            Text(
              rs ?? "",
              style:
                  TextStyle(fontSize: 12, color: Colors.black.withOpacity(.25)),
            )
          ],
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headline1,
        )
      ],
    );
  }
}
