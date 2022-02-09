import 'package:flutter/material.dart';
import 'package:teacher_app/screens/page_number2_folder/page_number2.dart';
import 'package:teacher_app/widgets/app_bar.dart';
import 'package:teacher_app/widgets/txt_item.dart';
import './widgets/latest_orders_item.dart';
import './widgets/teacher_details_item.dart';
import '../../widgets/stack_item.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  void chengCurrent(int value) {
    setState(() {
      currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          title: AppBarTitle(),
          leading: AppBarLeading(),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(PageNumber2.pageRouts);
                },
                icon: Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.blue,
                  size: 30,
                )),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.blue,
                  size: 30,
                ))
          ]),
      body: StackItem(
        widget: ListView(
          children: [
            const TeacherDetailsItem(),
            Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.6,
                  top: 15,
                  bottom: 8),
              child: TxtItem(
                title: "احدث الطلبات",
                size: 15,
                color: Colors.black,
              ),
            ),
            const LatestOrderItem()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: chengCurrent,
        currentIndex: currentIndex,
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.blue,
              ),
              label: "الرئيسية"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                color: Colors.blue,
              ),
              label: "بياناتي"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_none_sharp,
                color: Colors.blue,
              ),
              label: "الاشعارات"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.library_books_outlined,
                color: Colors.blue,
              ),
              label: "طلباتي")
        ],
      ),
    );
  }
}
