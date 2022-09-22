import 'package:flutter/material.dart';
import 'package:mysearchapp/Screens/Discover.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            actions: [
              Center(
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Discover();
                        },
                      ));
                    },
                    icon: Icon(Icons.pages),
                    label: Text("Next")),
              )
            ],
            title: Row(
              children: [Text("Home Page"), Icon(Icons.home)],
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2017/01/27/01/02/texture-2012078_1280.jpg"))),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: Image(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2016/11/14/17/39/person-1824144_1280.png")),
                    radius: 50,
                  ),
                  Card(
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(height: 25),
                  Center(
                    child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            hintText: "Enter your email",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 30),
                            label: Text(""))),
                  ),
                  Divider(height: 30),
                  Center(
                    child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.visibility_off),
                            hintText: "No less than 8 digits",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 30),
                            label: Text("Enter your Password"))),
                  ),
                  Divider(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.fingerprint),
                        radius: 35,
                      ),
                      Row(
                        children: [
                          SizedBox(width: 15),
                          CircleAvatar(
                            child: Icon(Icons.dialpad),
                            radius: 35,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 15),
                          CircleAvatar(
                            child: Text("Enter"),
                            radius: 35,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
