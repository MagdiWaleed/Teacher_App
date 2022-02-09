import 'package:flutter/material.dart';
import 'package:teacher_app/widgets/txt_item.dart';

class PageNumber8ButtonsItem extends StatelessWidget {
  final String? titleOfButton;
  final VoidCallback? onPressd;
  final double? size;
  final double? sizedBoxWidth;
  PageNumber8ButtonsItem({
    this.onPressd,
    this.titleOfButton,
    this.size,
    this.sizedBoxWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: (ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.only(top: 10, bottom: 8),
              primary: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: onPressd ?? () {},
            child: TxtItem(
              title: titleOfButton,
              color: Colors.black,
              size: size ?? 14,
            ),
          )),
        ),
        SizedBox(width: sizedBoxWidth ?? 0),
      ],
    );
  }
}
