import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:teacher_app/widgets/txt_item.dart';

class PageNumber6SecondSection extends StatefulWidget {
  @override
  State<PageNumber6SecondSection> createState() =>
      _PageNumber6SecondSectionState();
}

class _PageNumber6SecondSectionState extends State<PageNumber6SecondSection> {
  double HeightBlue1 = 20;
  double HeightBlue2 = 20;
  double HeightBlue3 = 20;
  double heightWhite1 = 20;
  double heightWhite2 = 20;
  double heightWhite3 = 20;

  Future mmm() async {
    await Future.delayed(Duration(seconds: 1), () {
      setState(() {
        HeightBlue1 = 120;
        heightWhite1 = 100;
        HeightBlue2 = 200;
        heightWhite2 = 50;
        HeightBlue3 = 100;
        heightWhite3 = 130;
      });
    });
  }

  @override
  void initState() {
    mmm();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _PageNumber6Text(),
                  SizedBox(height: 40),
                  _PageNumber6Text(),
                  SizedBox(height: 40),
                  _PageNumber6Text(),
                  SizedBox(height: 40),
                  _PageNumber6Text(),
                  SizedBox(height: 40),
                ],
              ),
            )),
        Expanded(
          flex: 4,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _PageNumber6Indictors(
                      HeightBlue1: HeightBlue1,
                      heigtWhite1: heightWhite1,
                    ),
                    _PageNumber6Indictors(
                      HeightBlue1: HeightBlue2,
                      heigtWhite1: heightWhite2,
                    ),
                    _PageNumber6Indictors(
                      HeightBlue1: HeightBlue3,
                      heigtWhite1: heightWhite3,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _PageNumber6Indictors extends StatelessWidget {
  final double? HeightBlue1;
  final double? HeightBlue2;
  final double? HeightBlue3;
  final double? heigtWhite1;
  final double? heigtWhite2;
  final double? heigtWhite3;
  final Color? color;
  _PageNumber6Indictors(
      {this.HeightBlue1,
      this.HeightBlue2,
      this.HeightBlue3,
      this.heigtWhite1,
      this.heigtWhite2,
      this.heigtWhite3,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 200,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  AnimatedContainer(
                    duration: Duration(seconds: 3),
                    curve: Curves.easeInBack,
                    color: color ?? Colors.blue,
                    height: HeightBlue1 ?? 20,
                    width: 30,
                  ),
                  AnimatedContainer(
                    duration: Duration(seconds: 3),
                    curve: Curves.easeInBack,
                    color: color ?? Colors.white,
                    height: heigtWhite1 ?? 20,
                    width: 30,
                  ),
                ],
              ),
            ),
            _Texts()
          ],
        )
      ],
    );
  }
}

class _Texts extends StatelessWidget {
  const _Texts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TxtItem(
            title: "يومية",
            color: Colors.blue,
            size: 9,
          ),
          SizedBox(),
          TxtItem(
            title: "سنوية",
            color: Colors.white,
            size: 9,
          ),
        ],
      ),
    );
  }
}

class _PageNumber6Text extends StatelessWidget {
  const _PageNumber6Text({
    Key? key,
    this.title,
  }) : super(key: key);
  final String? title;
  @override
  Widget build(BuildContext context) {
    return TxtItem(
      title: title ?? "1500 رس",
      size: 9,
    );
  }
}
