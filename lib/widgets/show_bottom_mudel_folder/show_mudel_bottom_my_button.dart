import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:teacher_app/widgets/txt_item.dart';

class ShowMudelBottomMyButton extends StatelessWidget {
  const ShowMudelBottomMyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 5),
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor,
                padding: EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: TxtItem(
              title: "نعم",
              size: 12,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(child: _TxtButtons()),
        SizedBox(width: 10),
        Expanded(child: _TxtButtons(title: "نوعا ما")),
        SizedBox(width: 5),
      ],
    );
  }
}

class _TxtButtons extends StatelessWidget {
  const _TxtButtons({
    Key? key,
    this.title,
    this.ontap,
  }) : super(key: key);
  final String? title;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.grey,
      borderRadius: BorderRadius.circular(8),
      onTap: ontap ??
          () {
            print("object");
          },
      child: Txt(
        title ?? "لا",
        style: TxtStyle()
          ..background.color(Colors.transparent)
          ..fontFamily("Cairo")
          ..fontWeight(FontWeight.bold)
          ..border(all: 1, color: Colors.yellow[900]!)
          ..padding(vertical: 10)
          ..borderRadius(all: 8)
          ..fontSize(12)
          ..alignmentContent.center(true),
      ),
    );
  }
}
