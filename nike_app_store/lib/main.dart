import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyAdaptingApp());



class MyAdaptingApp extends StatelessWidget {
  @override
  Widget build(context) {
    // Either Material or Cupertino widgets work in either Material or Cupertino
    // Apps.
    return MaterialApp(
      title: 'Adaptive Music App',
      theme: ThemeData(
        // Use the green theme for Material widgets.
        primarySwatch: Colors.green,
      ),
      builder: (context, child) {
        return CupertinoTheme(
          // Instead of letting Cupertino widgets auto-adapt to the Material
          // theme (which is green), this app will use a different theme
          // for Cupertino (which is blue by default).
          data: CupertinoThemeData(),
          child: Material(child: child),
        );
      },
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(context) {
    ScreenUtil.instance = ScreenUtil(
        width: 1125,
        height: 2436,
        allowFontScaling: true
    )..init(context);
    return MaterialApp(
      title: 'Adaptive Music App',
      theme: ThemeData(
        // Use the green theme for Material widgets.
        primarySwatch: Colors.green,
      ),
      builder: (context, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        top: ScreenUtil().setHeight(40),
                        left: ScreenUtil().setWidth(40),
                        right: ScreenUtil().setWidth(40)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(),
                          onPressed: (){},
                        ),
                        Image.asset("assets/images/portrait.jpg",
                          width: ScreenUtil().setWidth(160),
                          height: ScreenUtil().setHeight(160),
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                ],
              )),
        );
      },
    );
  }
  }


