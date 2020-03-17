import 'dart:ui' as prefix0;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projects/mosque.dart';
import 'package:projects/museum.dart';
import 'package:projects/park.dart';
import 'package:projects/pyramids.dart';
import '../over_right_clipper.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _dark;

  @override
  void initState() {
    super.initState();
    _dark = false;
  }

  Brightness _getBrightness() {
    return _dark ? Brightness.dark : Brightness.light;
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  final Color primary = Color(0xff696b9e);
  final Color active = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Theme(
      isMaterialAppTheme: true,
      data: ThemeData(
        brightness: _getBrightness(),
      ),
      child: Scaffold(
        backgroundColor: _dark ? null : Colors.grey.shade200,
        key: _key,
        appBar: AppBar(
          elevation: 0,
          brightness: _getBrightness(),
          iconTheme: IconThemeData(color: _dark ? Colors.black : Colors.white),
          backgroundColor: Color(0xff696b9e),
          centerTitle: true,
          title: Text(
            'خدلك راوند',
            style: TextStyle(
              color: _dark ? Colors.black : Colors.white,
              fontSize: 20.0,
              fontFamily: 'Lemonada',
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add_location),
              onPressed: () {
                @override
                Widget build(BuildContext context) {
                  return ListView(
                    padding: EdgeInsets.all(32.0),
                    children: <Widget>[
                    ],
                  );
                }
              },
            ),
          ],
        ),
        drawer: _buildDrawer(),
        body: Container(
      decoration: BoxDecoration( 
        image: DecorationImage(
          image: AssetImage('images/map.jpg'),
          fit: BoxFit.cover,
        ),
      ),
//          child: BackdropFilter(
//            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/mosque.jpg'),
                          radius: 100.0,
                          child: FlatButton(
                            color: Colors.white70,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0),),
                            child: Text(
                              'المساجد',
                              style: TextStyle(
                                fontFamily: 'Lemonada',
                                fontSize: 25.0,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Mosque()));
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Expanded(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/museum.jpg',
                          ),
                          radius: 100.0,
                          child: FlatButton(
                            color: Colors.white70,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0),),
                            child: Text(
                              'المتاحف',
                              style: TextStyle(
                                fontFamily: 'Lemonada',
                                fontSize: 25.0,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Museum()));
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/pyramid.jpg'),
                          radius: 100.0,
                          child: FlatButton(
                            padding: EdgeInsets.symmetric(horizontal: 10.0 ,vertical: 6.0),
                            color: Colors.white70,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0),),
                            child: Text(
                              'المعالم السياحيه',
                              style: TextStyle(
                                fontFamily: 'Lemonada',
                                fontSize: 19.0,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pyramids()));
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Expanded(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/park.jpg'),
                          radius: 100.0,
                          child: FlatButton(
                            color: Colors.white70,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0),),
                            child: Text(
                              'الحدائق',
                              style: TextStyle(
                                fontFamily: 'Lemonada',
                                fontSize: 25.0,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Park()));
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }

  _buildDrawer() {
    return ClipPath(
      clipper: OvalRightBorderClipper(),
      child: Drawer(
        child: Container(
          padding: EdgeInsets.only(left: 16.0, right: 40),
          decoration: BoxDecoration(
              color: primary, boxShadow: [BoxShadow(color: Colors.black45)]),
          width: 300,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.moon),
                      onPressed: () {
                        setState(() {
                          _dark = !_dark;
                        });
                      },
                    ),
                  ),
                  Container(
                    height: 90,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [Colors.white, Colors.white12],
                      ),
                    ),
                    //EdgeInsets.all(20.0),
                    margin: EdgeInsets.only(top: 100.0),
                    child: CircleAvatar(
                      radius: 40.0,
                      backgroundImage: AssetImage('images/musem.jpg'),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'خدلك راوند',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'lemonada',
                    ),
                  ),
                  SizedBox(height: 30.0),
                  _buildRow(Icons.settings, "Settings"),
                  _buildDivider(),
                  _buildRow(Icons.info_outline, "About"),
                  _buildDivider(),
                  _buildRow(Icons.help, "Help"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Divider _buildDivider() {
    return Divider(
      color: active,
    );
  }

  Widget _buildRow(IconData icon, String title) {
    final TextStyle tStyle = TextStyle(color: active, fontSize: 16.0);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(children: [
        IconButton(
          onPressed: (){},
          icon: Icon(icon),
          color: active,
        ),
//        Icon(
//          icon,
//          color: active,
//        ),
        SizedBox(width: 10.0),
        Text(
          title,
          style: tStyle,
        ),
      ]),
    );
  }
}
