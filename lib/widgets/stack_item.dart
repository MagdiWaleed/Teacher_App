import 'package:flutter/material.dart';

class StackItem extends StatelessWidget {
  final Widget widget;
  StackItem({required this.widget});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Theme.of(context).primaryColor,
              height: MediaQuery.of(context).size.height * .33,
            ),
            Expanded(
              child: Container(
                color: Colors.black.withOpacity(.04),
              ),
            )
          ],
        ),
        widget
      ],
    );
  }
}
