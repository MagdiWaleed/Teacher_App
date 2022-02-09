import 'dart:async';

import 'package:flutter/material.dart';
import 'package:teacher_app/widgets/txt_item.dart';

class TimerDetails extends StatefulWidget {
  const TimerDetails({Key? key}) : super(key: key);

  @override
  State<TimerDetails> createState() => _TimerDetailsState();
}

class _TimerDetailsState extends State<TimerDetails> {
  static const int MaxSeconds = 59;
  int second = MaxSeconds;
  int hour = 5;

  Timer? timer;

  Future<void> startTimer() async {
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      setState(() {
        if (second > 0) {
          second--;
        } else {
          timer?.cancel();
        }
      });
    });
  }

  @override
  void initState() {
    // startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor.withOpacity(.3),
            radius: 100,
          ),
          TxtItem(
            title: "$hour:$second",
            color: Colors.black,
            size: 50,
            width: FontWeight.w600,
          ),
          Positioned(
            top: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TxtItem(
                  title: "مضى من الحصة",
                  color: Colors.grey,
                  size: 12,
                ),
                SizedBox(height: 70),
                TxtItem(
                  title: "دقيقة         ساعة",
                  color: Colors.grey,
                  size: 12,
                )
              ],
            ),
          ),
          Container(
            height: 250,
            width: 250,
            child: CircularProgressIndicator(
              backgroundColor: Colors.grey,
              color: Colors.black,
              value: second / MaxSeconds,
              strokeWidth: 10,
            ),
          )
        ],
      ),
    );
  }
}
