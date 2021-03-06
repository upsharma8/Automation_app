import 'package:docker_app/screens/awslogin.dart';
import 'package:docker_app/screens/dockerconfig.dart';
import 'package:docker_app/screens/ippass.dart';
import 'package:flutter/material.dart';

class MyLoginMode extends StatefulWidget {
  final tech;
  MyLoginMode({Key key, @required this.tech}) : super(key: key);
  @override
  _MyLoginModeState createState() => _MyLoginModeState();
}

class _MyLoginModeState extends State<MyLoginMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mode of Login"),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyAWSlog(
                        tech: widget.tech,
                      ),
                    ));
              },
              title: Text('AWS Mode'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyIp(
                        tech: widget.tech,
                      ),
                    ));
              },
              title: Text('Local Instance Mode'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
    );
  }
}
