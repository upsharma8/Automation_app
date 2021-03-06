import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

var fsconnect = FirebaseFirestore.instance;

var data = "Data is Comming";
var cmd = "date";

class MyCommand extends StatefulWidget {
  final command;
  MyCommand({Key key, @required this.command}) : super(key: key);
  @override
  _MyCommandState createState() => _MyCommandState();
}

class _MyCommandState extends State<MyCommand> {
  mydata() async {
    var url = "http://192.168.29.151/cgi-bin/date.py/?c=${widget.command}";
    var r = await http.get(url);
    print(widget.command);
    print("hello");
    print(r.statusCode);
    setState(() {
      data = r.body;
    });

    print("My data is inserted in the database Successfully");
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Linux Terminal"),
          backgroundColor: Colors.white30,
          actions: [Icon(Icons.person), Icon(Icons.more_vert)],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            width: size.width,
            height: size.height,
            child: Column(
              children: [
                FlatButton(
                  autofocus: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  color: Colors.blueAccent,
                  child: Text("Execute", style: TextStyle(color: Colors.amber)),
                  onPressed: () {
                    mydata();
                  },
                ),
                Container(
                  height: size.height * 0.6,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.blue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SingleChildScrollView(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      child: Text(
                        data,
                        style: TextStyle(color: Colors.amber),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
