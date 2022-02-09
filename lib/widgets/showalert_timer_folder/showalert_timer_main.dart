import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:teacher_app/widgets/show_bottom_mudel_folder/showbottom_main.dart';
import 'package:teacher_app/widgets/showalert_timer_folder/timer_details.dart';
import 'package:teacher_app/widgets/txt_item.dart';

Widget ShowAlertTimerMine(context) => Dialog(
      insetPadding: EdgeInsets.only(right: 20, left: 30, top: 80, bottom: 100),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      alignment: Alignment.center,
      child: Parent(
        style: ParentStyle()
          ..background.color(Colors.white)
          ..width(double.infinity)
          ..alignmentContent.topRight(true)
          ..borderRadius(all: 15)
          ..padding(all: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.amber,
                  margin: EdgeInsets.only(bottom: 8),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      TxtItem(
                        title: "تفاصيل الجلسة",
                        size: 18,
                        marginBottom: 20,
                      ),
                      Positioned(
                        top: 28,
                        child: TxtItem(
                          title: "يمكن معرفة بداية الجلسة ومتابعة زمن الحصة",
                          size: 10,
                          color: Colors.grey,
                          marginRight: 5,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            TxtItem(
              title: "مضى للحصة",
              marginRight: 10,
            ),
            TimerDetails(),
            SizedBox(height: 50),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: Colors.grey,
                      padding: EdgeInsets.symmetric(vertical: 7),
                      onPressed: () {
                        Navigator.pop(context);
                        showModalBottomSheet(
                            isScrollControlled: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(35),
                              ),
                            ),
                            context: context,
                            builder: (context) => ShowBottomMudel(context));
                      },
                      child: TxtItem(
                        title: "انهاء الحصة",
                        size: 17,
                        color: Colors.black,
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
