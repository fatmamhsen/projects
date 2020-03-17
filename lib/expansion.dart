//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart' ;
//import 'package:flutter/material.dart' as prefix0;
//
//
//
//class AlertDialog extends StatefulWidget {
//  @override
//  _AlertDialogState createState() => _AlertDialogState();
//}
//
//class _AlertDialogState extends State<AlertDialog> {
//  Future<void> OpenAlert() async{
//    return showDialog(
//        context: context,
//      barrierDismissible: false,
//      builder: (BuildContext context){
//          return prefix0.AlertDialog(
//              title: Text('Accept'),
//              content: Text('Do you sure !'),
//              actions: <Widget>[
//          FlatButton(
//          child: Text('OK'),
//        onPressed: () => Navigator.pop(context , 'Ok'),
//        ),
//        FlatButton(
//        child: Text('Cancel'),
//        onPressed: () => Navigator.pop(context , 'Cancel'),
//        ),
//        ],
//        );
//      }
//    );
//  }
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Center(
//        child: Container(
//          child:
//
//
//
//
//
//
//
//        ),
//      ),
//    );
//  }
//}
//
//
//
////
////class AlertDialog{
//
////],
////},
//
//
//
//
//
//
//
//
//
//class AlertDialoge{
//  final String title = '';
//  final String content = '';
//}
//
//
//
//
//
//
//
//
//
//
//
////class Dialogs extends StatelessWidget {
////  const Dialogs({Key key}) : super(key: key);
////  @override
////  Widget build(BuildContext context) {
////    return ListView(
////      padding: EdgeInsets.all(32.0),
////      children: <Widget>[
////        RaisedButton(
////          color: Colors.red,
////          child: Text('hey'),
////          onPressed: (){
////            showDialog<String>(
////                context: context,
////                builder: (BuildContext context) => AlertDialog(
////                title: Text('Alart'),
////                content: Text('1.2'),
////                    actions: <Widget>[
////                      FlatButton(
////                        child: Text('Cancel'),
////                        onPressed: () => Navigator.pop(context,'cancel'),
////                      ),
////                      FlatButton(
////                        child: Text('OK'),
////                        onPressed: () => Navigator.pop(context, 'ok'),
////                      ),
////                    ],
////              ),
////            );
////          },
////        ),
////      ],
////    );
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
////import 'package:flutter/material.dart';
////
////class ExpansionTile extends StatelessWidget {
////  const ExpansionTile({Key key, Text title, List<Widget> children}) : super(key: key);
////  @override
////  Widget build(BuildContext context) {
////    return MaterialApp(
////      home: Container(
////        child: Column(
////          children: <Widget>[
////          ListView.builder(
////              itemBuilder: (BuildContext context , int index) => EntryItem(data[index]),
////              itemCount: data.length,
////           ),
////          ],
////        ),
////      ),
////    );
////  }
////}
////
////class Entry {
////  const Entry(this.title , [this.children = const <Entry>[]]);
////  final String title;
////  final List<Entry> children ;
////}
////
////const List<Entry> data = <Entry>[
////  Entry(
////  'chapter A' ,
////    <Entry>[
////      Entry('Sectio 0'),
////      Entry('Section 1'),
////    ],
////
////  ),
////];
////
////class EntryItem extends StatelessWidget{
////  const EntryItem(this.entry);
////  final Entry entry;
////
////  Widget _buildTiles(Entry root) {
////    if(root.children.isEmpty) return ListTile(title: Text(root.title),);
////    return ExpansionTile(
////      key: PageStorageKey<Entry>(root),
////      title: Text(root.title),
////      children: root.children.map(_buildTiles).toList(),
////    );
////  }
////  @override
////  Widget build(BuildContext context) {
////    return _buildTiles(entry);
////  }
////}
////
////
////
////
////
