import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget{
  @override // ignore: invalid_override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    ScreenUtil.instance = ScreenUtil(
        width: 1125,
        height: 2436,
        allowFontScaling: true
    )..init(context);
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
                      // icon: Icon(CustomIcons.menu),
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
  }

}