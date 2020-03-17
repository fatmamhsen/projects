import 'dart:ui';

import 'package:flutter/material.dart';


class Pyramids extends StatefulWidget {
  @override
  _PyramidsState createState() => _PyramidsState();
}

class _PyramidsState extends State<Pyramids> {
  bool _dark;

  @override
  void initState() {
    super.initState();
    _dark = false;
  }

  Brightness _getBrightness() {
    return _dark ? Brightness.dark : Brightness.light;
  }



  @override
  Widget build(BuildContext context) {
    return Theme(
      isMaterialAppTheme: true,
      data: ThemeData(
        brightness: _getBrightness(),
      ),

      child: Scaffold(
        backgroundColor: _dark ? null : Colors.grey.shade300,
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          elevation: 0,
          brightness: _getBrightness(),
          iconTheme: IconThemeData(color: _dark ? Colors.black : Colors.white),
          backgroundColor: Colors.teal,
          centerTitle: true,
          title: Text(
            'معالم سياحيه',
            style: TextStyle(
              color: _dark ? Colors.black : Colors.white,
              fontSize: 20.0,
              fontFamily: 'Lemonada',
            ),
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.add_location), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}



