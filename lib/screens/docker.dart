import 'package:flutter/material.dart';

class MyDocker extends StatefulWidget {
  @override
  _MyDockerState createState() => _MyDockerState();
}

class _MyDockerState extends State<MyDocker> {
  List<String> entries = <String>[
    'Web Server Configuration',
    'Docker Configuration',
    'Hadoop Configuration',
    'docker stop',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Docker Help"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.amber,
            child: Center(
                child: FlatButton(
              child: Text('Entry ${entries[index]}'),
              onPressed: () {
                Navigator.pushNamed(context, "commands");
              },
            )),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
