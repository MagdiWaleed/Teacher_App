import 'package:flutter/material.dart';
import 'package:teacher_app/screens/page_number10_folder/page_number10.dart';
import 'package:teacher_app/screens/page_number11_folder/page_number11.dart';
import 'package:teacher_app/screens/page_number2_folder/page_number2.dart';
import 'package:teacher_app/screens/page_number3_folder/page_number3.dart';
import 'package:teacher_app/screens/page_number6_folder/page_number6.dart';
import 'package:teacher_app/screens/page_number7_folder/page_number7.dart';
import 'package:teacher_app/screens/page_number8_folder/page_number8.dart';
import 'package:teacher_app/screens/page_number9_folder/page_number9.dart';
import '../screens/main_screen_folder/main_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
} ////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
/////////////////////////تم تسمية هذه الصفحات //////////////////////////////////////
/////////////////وفقا لترتيبها داخل الموقع التالي  //////////////////////////////////////
/// https://xd.adobe.com/view/880f7d30-978c-4700-85ab-51e2e803e874-dd5c/screen/3ce9472b-b530-41cf-b0aa-47f4a1ddad4c///
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////ما عدا صفحة 3 و 9 ///////////////////////////////////////////////////////

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Teacher App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xff00ffff),
        secondaryHeaderColor: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontFamily: "Cairo",
              fontWeight: FontWeight.bold),
          headline2: TextStyle(
            fontSize: 17,
            color: Colors.blue,
            fontFamily: "Cairo",
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            fontSize: 12,
            color: Colors.white,
            fontFamily: "Cairo",
            fontWeight: FontWeight.bold,
          ),
          headline3: TextStyle(
              fontFamily: "Cairo", fontSize: 12, fontWeight: FontWeight.w700),
        ),
      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar', ''),
      ],
      home: MainScreen(),
      routes: {
        PageNumber9.pageRouts: (context) => PageNumber9(),
        PageNumber7.pageRouts: (context) => PageNumber7(),
        PageNumber6.pageRouts: (context) => PageNumber6(),
        PageNumber3.pageRouts: (context) => PageNumber3(),
        PageNumber8.pageRouts: (context) => PageNumber8(),
        PageNumber10.pageRouts: (context) => PageNumber10(),
        PageNumber11.pageRouts: (context) => PageNumber11(),
        PageNumber2.pageRouts: (context) => PageNumber2(),
      },
    );
  }
}
