import 'package:division/division.dart';
import 'package:flutter/material.dart';

class PageNumber9Orders extends StatelessWidget {
  const PageNumber9Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(width: 30),
            Text(
              "الطلبات",
              style: Theme.of(context).textTheme.headline4,
            )
          ],
        ),
        Parent(
          style: ParentStyle()..margin(horizontal: 20, top: 25),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: MaterialButton(
                  onPressed: () {},
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "الكل",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontFamily: "Cairo",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                flex: 2,
                child: InkWell(
                  onTap: () {
                    print("ok");
                  },
                  child: Parent(
                    style: ParentStyle()
                      ..border(all: 2, color: Colors.lightBlue[300]!)
                      ..borderRadius(all: 8)
                      ..alignmentContent.center(true)
                      ..padding(vertical: 9),
                    child: Text(
                      "الطلبات الحالية",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                flex: 2,
                child: InkWell(
                  onTap: () {
                    print("ok");
                  },
                  child: Parent(
                    style: ParentStyle()
                      ..border(all: 2, color: Colors.lightBlue[300]!)
                      ..borderRadius(all: 8)
                      ..alignmentContent.center(true)
                      ..padding(vertical: 9),
                    child: Text(
                      "المكتملة",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
