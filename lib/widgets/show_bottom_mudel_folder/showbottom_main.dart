import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:teacher_app/widgets/show_bottom_mudel_folder/show_mudel_bottom_my_button.dart';
import 'package:teacher_app/widgets/txt_item.dart';

Widget ShowBottomMudel(context) => Container(
      padding: EdgeInsets.only(bottom: 65),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Parent(
            style: ParentStyle()..margin(horizontal: 10, top: 30, bottom: 30),
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
                      margin: EdgeInsets.only(bottom: 12),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          TxtItem(
                            title: "تقييم الطالب",
                            size: 18,
                            color: Colors.black,
                            marginBottom: 20,
                          ),
                          Positioned(
                            top: 28,
                            child: TxtItem(
                              title: "قييم الطالب حسب ما تراه",
                              size: 10,
                              color: Colors.grey,
                              marginRight: 5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                TxtItem(
                  title: "هل الطالب فهم الحصة",
                  color: Colors.black,
                  size: 16,
                ),
              ],
            ),
          ),
          ShowMudelBottomMyButton(),
          SizedBox(height: 100),
          Row(
            children: [
              SizedBox(width: 30),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: TxtItem(
                    title: "اكمال التقييم",
                    size: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(width: 30),
            ],
          ),
        ],
      ),
    );
