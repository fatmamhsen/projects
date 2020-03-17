import 'package:flutter/material.dart';
//import 'package:cached_network_image/cached_network_image.dart';

class Park extends StatefulWidget {
  Park({Key key}) : super(key: key);
  // static final String path = "lib/src/pages/lists/list2.dart";

  _ParkState createState() => _ParkState();
}

class _ParkState extends State<Park> {
  final TextStyle dropdownMenuItem =
  TextStyle(color: Colors.black, fontSize: 18);

  final primary = Color(0xff696b9e);
  final secondary = Color(0xfff29a94);

  final List<Map> schoolLists = [
//    {
//      "name": "المتحف الحربي القومي",
//      "location": "صلاح سالم، قلعة، قسم الخليفة، محافظة القاهرة‬",
//      "Date": " من 9ص:5م ",
//      "Cafe": "-كبابجى المنشاوى  -أبو سليمان مكرونه -كنتاكى المقطم ",
//      "logoText":
//      "https://cdn.pixabay.com/photo/2017/03/16/21/18/logo-2150297_960_720.png"
//    },
    {
      "name": "Xaviers International",
      "location": "234 Road Kathmandu, Nepal",
      "type": "Higher Secondary School",
      "logoText":
      "https://cdn.pixabay.com/photo/2017/01/31/13/14/animal-2023924_960_720.png"
    },
    {
      "name": "Kinder Garden",
      "location": "572 Statan NY, 12483",
      "type": "Play Group School",
      "logoText":
      "https://cdn.pixabay.com/photo/2016/06/09/18/36/logo-1446293_960_720.png"
    },
    {
      "name": "WilingTon Cambridge",
      "location": "Kasai Pantan NY, 12483",
      "type": "Lower Secondary School",
      "logoText":
      "https://cdn.pixabay.com/photo/2017/01/13/01/22/rocket-1976107_960_720.png"
    },
    {
      "name": "Fredik Panlon",
      "location": "572 Statan NY, 12483",
      "type": "Higher Secondary School",
      "logoText":
      "https://cdn.pixabay.com/photo/2017/03/16/21/18/logo-2150297_960_720.png"
    },
    {
      "name": "Whitehouse International",
      "location": "234 Road Kathmandu, Nepal",
      "type": "Higher Secondary School",
      "logoText":
      "https://cdn.pixabay.com/photo/2017/01/31/13/14/animal-2023924_960_720.png"
    },
    {
      "name": "Haward Play",
      "location": "572 Statan NY, 12483",
      "type": "Play Group School",
      "logoText":
      "https://cdn.pixabay.com/photo/2016/06/09/18/36/logo-1446293_960_720.png"
    },
    {
      "name": "Campare Handeson",
      "location": "Kasai Pantan NY, 12483",
      "type": "Lower Secondary School",
      "logoText":
      "https://cdn.pixabay.com/photo/2017/01/13/01/22/rocket-1976107_960_720.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 145),
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: schoolLists.length,
                    itemBuilder: (BuildContext context, int index) {
                      return buildList(context, index);
                    }),
              ),
              Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios),
                        color: Colors.white,
                      ),
                      Text(
                        'حدئق',
                        style: TextStyle(
                          fontFamily: 'Lemonada',
                          fontSize: 24.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 110,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
//                      child: Material(
//                        elevation: 5.0,
//                        borderRadius: BorderRadius.all(Radius.circular(30)),
//                        child: TextField(
//                          // controller: TextEditingController(text: locations[0]),
//                          cursorColor: Theme.of(context).primaryColor,
//                          style: dropdownMenuItem,
//                          decoration: InputDecoration(
//                              hintText: "Search School",
//                              hintStyle: TextStyle(
//                                  color: Colors.black38, fontSize: 16),
//                              prefixIcon: Material(
//                                elevation: 0.0,
//                                borderRadius:
//                                BorderRadius.all(Radius.circular(30)),
//                                child: Icon(Icons.search),
//                              ),
//                              border: InputBorder.none,
//                              contentPadding: EdgeInsets.symmetric(
//                                  horizontal: 25, vertical: 13)),
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

  Widget buildList(BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      width: double.infinity,
      height: 150,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 3, color: secondary),
              //    image: DecorationImage(
              //          image: CachedNetworkImageProvider(schoolLists[index]['logoText']),
              //      fit: BoxFit.fill),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  schoolLists[index]['name'],
                  style: TextStyle(
                      color: primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: secondary,
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(schoolLists[index]['location'],
                        style: TextStyle(
                            color: primary, fontSize: 10, letterSpacing: .3)),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.date_range,
                      color: secondary,
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(schoolLists[index]['type'],
                      style: TextStyle(
                          color: primary, fontSize: 11, letterSpacing: .3),
                    ),
                  ],
                ),
//                SizedBox(
//                  height: 6,
//                ),
//                Row(
//                  children: <Widget>[
//                    Icon(
//                      Icons.fastfood,
//                      color: secondary,
//                      size: 15,
//                    ),
////                        SizedBox(
////                          width: 5,
////                        ),
//                    Text(schoolLists[index]['Cafe'],
//                        style: TextStyle(
//                            color: primary, fontSize: 9, letterSpacing: .3)),
//                  ],
//                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
























//import 'dart:ui';
//
//import 'package:flutter/material.dart';
//
//class Museum extends StatefulWidget {
//  @override
//  _MuseumState createState() => _MuseumState();
//}
//
//class _MuseumState extends State<Museum> {
//  bool _dark;
//
//  @override
//  void initState() {
//    super.initState();
//    _dark = false;
//  }
//
//  Brightness _getBrightness() {
//    return _dark ? Brightness.dark : Brightness.light;
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Theme(
//      isMaterialAppTheme: true,
//      data: ThemeData(
//        brightness: _getBrightness(),
//      ),
//      child: Scaffold(
//        backgroundColor: _dark ? null : Colors.grey.shade300,
//        appBar: AppBar(
//          leading: IconButton(
//            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
//            onPressed: () {
//              Navigator.pop(context);
//            },
//          ),
//          elevation: 0,
//          brightness: _getBrightness(),
//          iconTheme: IconThemeData(color: _dark ? Colors.black : Colors.white),
//          backgroundColor: Colors.teal,
//          centerTitle: true,
//          title: Text(
//            'متاحف',
//            style: TextStyle(
//              color: _dark ? Colors.black : Colors.white,
//              fontSize: 20.0,
//              fontFamily: 'Lemonada',
//            ),
//          ),
//          actions: <Widget>[
//            IconButton(icon: Icon(Icons.add_location), onPressed: () {}),
//          ],
//        ),
//        body: Container(
//          padding: EdgeInsets.all(6.0),
//          child: Card(
//            child: ListTile(
//              onTap: (){
//              },
//              title: Text(
//                'المتحف المصري',
//                style: TextStyle(
//                  fontSize: 18.0,
//                  fontFamily: 'BalooBhaijaan',
//                  //fontWeight: FontWeight.w800
//                  color: Colors.teal.shade400,
//                ),
//              ),
//              subtitle: Text(
//                'Museum',
//                style: TextStyle(
//                  fontSize: 15.0,
//                  color: Colors.grey.shade400,
//                ),
//              ),
//              leading: Icon(
//                Icons.home,
//                color: Colors.teal.shade400,
//                size: 40.0,
//              ),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}
