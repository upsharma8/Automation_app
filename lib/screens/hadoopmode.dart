import 'package:docker_app/screens/dockerconfig.dart';
import 'package:docker_app/screens/ippass.dart';
import 'package:docker_app/screens/loginmode.dart';
import 'package:flutter/material.dart';

class MyHadoopMode extends StatefulWidget {
  final tech;
  MyHadoopMode({Key key, @required this.tech}) : super(key: key);
  @override
  _MyHadoopModeState createState() => _MyHadoopModeState();
}

class _MyHadoopModeState extends State<MyHadoopMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Master And Slave Configuration"),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyLoginMode(
                        tech: "Master",
                      ),
                    ));
              },
              title: Text('Master Configuration'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyLoginMode(
                        tech: "Slave",
                      ),
                    ));
              },
              title: Text('Slave Configuration'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
    );
  }
}
