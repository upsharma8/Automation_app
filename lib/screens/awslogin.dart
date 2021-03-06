import 'package:docker_app/screens/Webserverconfig.dart';
import 'package:docker_app/screens/dockerconfig.dart';
import 'package:docker_app/screens/hadoop-slave.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'hadoop-master.dart';

class MyAWSlog extends StatefulWidget {
  final tech;
  MyAWSlog({Key key, @required this.tech}) : super(key: key);
  @override
  _MyAWSlogState createState() => _MyAWSlogState();
}

class _MyAWSlogState extends State<MyAWSlog> {
  String username;
  String ip;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IP AND PASSWORD"),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Image.network(
                    "https://github.com/upsharma8/images/raw/master/docker_facebook_share.png"),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  username = value;
                },
                decoration: InputDecoration(
                  hintText: "Enter User Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  ip = value;
                },
                decoration: InputDecoration(
                  hintText: "Enter IP Address",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (value) {
                  password = value;
                },
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Material(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(10),
                elevation: 10,
                child: MaterialButton(
                  minWidth: 200,
                  height: 40,
                  child: Text('Login'),
                  onPressed: () {
                    if (widget.tech == "WebServer") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyWebServer(
                              mode: "AWS",
                              ip: ip,
                              pass: password,
                              username: username,
                            ),
                          ));
                    }
                    if (widget.tech == "Docker") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyDockerConfig(
                              mode: "AWS",
                              ip: ip,
                              pass: password,
                              username: username,
                            ),
                          ));
                    }
                    if (widget.tech == "Master") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyHadoopMaster(
                              mode: "AWS",
                              ip: ip,
                              pass: password,
                              username: username,
                            ),
                          ));
                    }
                    if (widget.tech == "Slave") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyHadoopSlave(
                              mode: "AWS",
                              ip: ip,
                              pass: password,
                              username: username,
                            ),
                          ));
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
