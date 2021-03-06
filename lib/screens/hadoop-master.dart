import 'package:docker_app/screens/commands.dart';
import 'package:docker_app/screens/dockerconfig.dart';
import 'package:flutter/material.dart';

var command;

class MyHadoopMaster extends StatefulWidget {
  final ip, pass, mode, username;
  MyHadoopMaster({
    Key key,
    @required this.mode,
    @required this.ip,
    this.pass,
    @required this.username,
  }) : super(key: key);
  @override
  _MyHadoopMasterState createState() => _MyHadoopMasterState();
}

class _MyHadoopMasterState extends State<MyHadoopMaster> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hadoop Config Help"),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              onTap: () {
                if (widget.mode == "AWS") {
                  command =
                      "sshpass -p ${widget.pass} scp hadoop-1.2.1-1.x86_64.rpm ${widget.username}@${widget.ip}:/";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                } else {
                  command =
                      "sshpass -p ${widget.pass} scp hadoop-1.2.1-1.x86_64.rpm ${widget.username}@${widget.ip}:/";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                }
              },
              title: Text('Copy Hadoop package'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                if (widget.mode == "AWS") {
                  command =
                      "sshpass -p ${widget.pass} scp jdk-8u171-linux-x64.rpm ${widget.username}@${widget.ip}:/";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                } else {
                  command =
                      "sshpass -p ${widget.pass} scp jdk-8u171-linux-x64.rpm ${widget.username}@${widget.ip}:/";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                }
              },
              title: Text('Copy JDK Package'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                if (widget.mode == "AWS") {
                  command =
                      "sshpass -p ${widget.pass} ssh ${widget.username}@${widget.ip} rpm -ivh /jdk-8u171-linux-x64.rpm";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                } else {
                  command =
                      "sshpass -p ${widget.pass} ssh ${widget.username}@${widget.ip} rpm -ivh /jdk-8u171-linux-x64.rpm";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                }
              },
              title: Text('Install JDK Package'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                if (widget.mode == "AWS") {
                  command =
                      "sshpass -p ${widget.pass} ssh ${widget.username}@${widget.ip} rpm -ivh /hadoop-1.2.1-1.x86_64.rpm --force";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                } else {
                  command =
                      "sshpass -p ${widget.pass} ssh ${widget.username}@${widget.ip} rpm -ivh /hadoop-1.2.1-1.x86_64.rpm --force";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                }
              },
              title: Text('Install Hadoop Package'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
    );
  }
}
