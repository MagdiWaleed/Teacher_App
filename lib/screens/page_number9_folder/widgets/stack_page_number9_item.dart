import 'package:flutter/material.dart';

class StackPageNumber9Item extends StatelessWidget {
  final Widget widget;
  StackPageNumber9Item({required this.widget});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Theme.of(context).secondaryHeaderColor,
              height: MediaQuery.of(context).size.height * .30,
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
