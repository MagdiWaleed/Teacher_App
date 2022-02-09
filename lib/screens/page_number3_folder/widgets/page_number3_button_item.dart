import 'package:flutter/material.dart';
import 'package:teacher_app/widgets/txt_item.dart';

class PageNumber3ButtonsItem extends StatelessWidget {
  final String? titleOfButton;
  final VoidCallback? onPressd;
  PageNumber3ButtonsItem({this.onPressd, this.titleOfButton});
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
            onPressed: onPressd ?? () {
              
            },
            child: TxtItem(
              title: titleOfButton,
              color: Colors.black,
            ),
          )),
        ),
      ],
    );
  }
}
