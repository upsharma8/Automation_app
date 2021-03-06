import 'package:docker_app/screens/dockerconfig.dart';
import 'package:docker_app/screens/hadoopmode.dart';
import 'package:docker_app/screens/ippass.dart';
import 'package:docker_app/screens/loginmode.dart';
import 'package:flutter/material.dart';

class MyTech extends StatefulWidget {
  @override
  _MyTechState createState() => _MyTechState();
}

class _MyTechState extends State<MyTech> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Docker Help"),
      ),
      body: ListView(
        children: <Widget>[
          Card(child: ListTile(title: Text('Technologies List'))),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyLoginMode(
                        tech: "Docker",
                      ),
                    ));
              },
              title: Text('Docker Configuration'),
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
                        tech: "WebServer",
                      ),
                    ));
              },
              title: Text('WebServer Configuration'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyHadoopMode(
                        tech: "Hadoop",
                      ),
                    ));
              },
              title: Text('Hadoop Configuration'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Kubernetes Configuration'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('AWS Configuration'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(size: 72.0),
              title: Text('Three-line ListTile'),
              subtitle:
                  Text('A sufficiently long subtitle warrants three lines.'),
              trailing: Icon(Icons.more_vert),
              isThreeLine: true,
            ),
          ),
        ],
      ),
    );
  }
}
