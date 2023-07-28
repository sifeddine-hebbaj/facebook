import 'package:flutter/material.dart';
import 'package:helloworld/sec.dart';

import 'main.dart';

void main() {
  runApp(sign());
}

class sign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  void initState() {
    username.text = ""; //innitail value of text field
    password.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("create compte"),
          backgroundColor: Color.fromARGB(255, 39, 143, 255),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1611162618071-b39a2ec055fb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80'),
                  fit: BoxFit.cover)),
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                  controller: username,
                  decoration: InputDecoration(
                    labelText: "Username", //babel text
                    hintText: "Enter your Username", //hint text
                    prefixIcon: Icon(Icons.people), //prefix iocn
                    hintStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold), //hint text style
                    labelStyle: TextStyle(
                        fontSize: 13,
                        color:
                            Color.fromARGB(255, 255, 255, 255)), //label style
                  )),

              Container(height: 20),
              TextField(
                  controller: username,
                  decoration: InputDecoration(
                    labelText: "email",
                    hintText: "Enter your Email", //babel text
                    prefixIcon: Icon(Icons.email_rounded), //prefix iocn
                    hintStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold), //hint text style
                    labelStyle: TextStyle(
                        fontSize: 13,
                        color:
                            Color.fromARGB(255, 255, 255, 255)), //label style
                  )),

              Container(height: 20),
              //space between text field

              TextField(
                  controller: password,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: "Password",
                    hintText: "Enter you password",
                    hintStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                    labelStyle: TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  )),
              TextField(
                  controller: password,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: "Password",
                    hintText: "Confirm your password",
                    hintStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                    labelStyle: TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  )),

              Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    child: Text('ok'),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.teal,
                      onSurface: Colors.grey,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyApp()));
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    child: Text('return pages'),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.teal,
                      onSurface: Colors.grey,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyApp()));
                    },
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
