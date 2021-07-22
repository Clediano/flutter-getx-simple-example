import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kmobx/app/routes/app_pages.dart';

class AppWidget extends StatelessWidget {
  ThemeData _getThema() {
    return Get.isDarkMode
        ? ThemeData(
            accentColor: Colors.deepPurpleAccent,
            primarySwatch: Colors.blueGrey,
            backgroundColor: Colors.blueGrey[900],
            cardColor: Colors.black87,
            fontFamily: 'Josefin Slab',
            primaryTextTheme: TextTheme(
              button: TextStyle(
                color: Colors.blueGrey[200],
                decorationColor: Colors.blueGrey[50],
              ),
              subtitle2: TextStyle(
                color: Colors.white,
              ),
              subtitle1: TextStyle(
                color: Colors.blueGrey[300],
              ),
              headline1: TextStyle(
                color: Colors.white70,
              ),
            ),
            bottomAppBarColor: Colors.black,
            iconTheme: IconThemeData(color: Colors.blueGrey[200]),
            brightness: Brightness.dark,
          )
        : ThemeData(
            accentColor: Colors.deepPurpleAccent,
            primarySwatch: Colors.blueGrey,
            backgroundColor: Colors.white,
            cardColor: Colors.blueGrey[50],
            fontFamily: 'Josefin Slab',
            primaryTextTheme: TextTheme(
              button: TextStyle(
                color: Colors.blueGrey,
                decorationColor: Colors.blueGrey[300],
              ),
              subtitle2: TextStyle(
                color: Colors.blueGrey[900],
              ),
              subtitle1: TextStyle(
                color: Colors.black,
              ),
              headline1: TextStyle(
                color: Colors.blueGrey[800],
              ),
            ),
            bottomAppBarColor: Colors.blueGrey[900],
            iconTheme: IconThemeData(color: Colors.blueGrey),
            brightness: Brightness.light,
          );
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: _getThema(),
      getPages: AppPages.routes,
      unknownRoute: AppPages.unknownRoute,
      initialRoute: AppPages.INITIAL,
    );
  }
}
