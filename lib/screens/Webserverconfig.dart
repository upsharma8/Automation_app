import 'package:docker_app/screens/commands.dart';
import 'package:docker_app/screens/dockerconfig.dart';
import 'package:flutter/material.dart';

var command;

class MyWebServer extends StatefulWidget {
  final ip, pass, mode, username;
  MyWebServer({
    Key key,
    @required this.mode,
    @required this.ip,
    this.pass,
    @required this.username,
  }) : super(key: key);
  @override
  _MyWebServerState createState() => _MyWebServerState();
}

class _MyWebServerState extends State<MyWebServer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Web Server Config Help"),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text('Technologies List'),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                if (widget.mode == "AWS") {
                  command =
                      "sshpass -p ${widget.pass} ssh ${widget.username}@${widget.ip} systemctl status httpd";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                } else {
                  command =
                      "sshpass -p ${widget.pass} ssh ${widget.ip} systemctl status httpd";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                }
              },
              title: Text('Status Httpd'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                if (widget.mode == "AWS") {
                  command =
                      "sshpass -p ${widget.pass} ssh ${widget.username}@${widget.ip} systemctl start httpd";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                } else {
                  command =
                      "sshpass -p ${widget.pass} ssh ${widget.ip} systemctl start httpd";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                }
              },
              title: Text('Start Httpd'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                if (widget.mode == "AWS") {
                  command =
                      "sshpass -p ${widget.pass} ssh ${widget.username}@${widget.ip} systemctl stop httpd";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                } else {
                  command =
                      "sshpass -p ${widget.pass} ssh ${widget.ip} systemctl stop httpd";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                }
              },
              title: Text('Stop httpd'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                if (widget.mode == "AWS") {
                  command =
                      "sshpass -p ${widget.pass} ssh ${widget.username}@${widget.ip} yum install httpd -y";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new MyCommand(command: command)),
                  );
                } else {
                  command =
                      "sshpass -p ${widget.pass} ssh ${widget.ip} yum install httpd";
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new MyCommand(command: command),
                    ),
                  );
                }
              },
              title: Text('Install Httpd'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
    );
  }
}
