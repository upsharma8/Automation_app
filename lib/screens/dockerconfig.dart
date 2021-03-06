import 'package:docker_app/screens/commands.dart';
import 'package:docker_app/screens/dockerconfig.dart';
import 'package:flutter/material.dart';

var command;

class MyDockerConfig extends StatefulWidget {
  final ip, pass, mode, username;
  MyDockerConfig({
    Key key,
    @required this.mode,
    @required this.ip,
    this.pass,
    @required this.username,
  }) : super(key: key);
  @override
  _MyDockerState createState() => _MyDockerState();
}

class _MyDockerState extends State<MyDockerConfig> {
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
                if (widget.mode == "AWS") {
                  command =
                      "sshpass -p ${widget.pass} ssh ${widget.username}@${widget.ip} systemctl status docker";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                } else {
                  command =
                      "sshpass -p ${widget.pass} ssh ${widget.ip} systemctl status docker";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                }
              },
              title: Text('Status Docker'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                if (widget.mode == "AWS") {
                  command =
                      "sshpass -p ${widget.pass} ssh ${widget.username}@${widget.ip} systemctl start docker";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                } else {
                  command =
                      "sshpass -p ${widget.pass} ssh ${widget.ip} systemctl start docker";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                }
              },
              title: Text('Start Docker'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                if (widget.mode == "AWS") {
                  command =
                      "sshpass -p ${widget.pass} ssh ${widget.username}@${widget.ip} docker images";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                } else {
                  command =
                      "sshpass -p ${widget.pass} ssh ${widget.ip} docker images";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                }
              },
              title: Text('Docker Images'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                if (widget.mode == "AWS") {
                  command =
                      "sshpass -p ${widget.pass} ssh ${widget.username}@${widget.ip} docker ps -a";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                } else {
                  command =
                      "sshpass -p ${widget.pass} ssh ${widget.ip} docker ps -a";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                }
              },
              title: Text('Docker Container'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                if (widget.mode == "AWS") {
                  command =
                      "sshpass -p ${widget.pass} ssh ${widget.username}@${widget.ip} systemctl stop docker";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                } else {
                  command =
                      "sshpass -p ${widget.pass} ssh ${widget.ip} systemctl stop docker";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                }
              },
              title: Text('Stop Docker'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                if (widget.mode == "AWS") {
                  command =
                      "sshpass -p ${widget.pass} ssh ${widget.username}@${widget.ip} yum install docker -y";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                } else {
                  command =
                      "sshpass -p ${widget.pass} ssh ${widget.ip} yum install docker -y";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                }
              },
              title: Text('Install Docker'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
    );
  }
}
