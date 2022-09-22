import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:mysearchapp/Models/URL.dart';
import 'package:mysearchapp/Screens/Home.dart';
import 'package:url_launcher/url_launcher.dart';

class Social_Media extends StatelessWidget {
  const Social_Media({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 94, 208, 161),
          appBar: AppBar(
            actions: [
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Home_Page();
                      },
                    ));
                  },
                  icon: Icon(Icons.skip_next),
                  label: Text("Home"))
            ],
            bottom: TabBar(tabs: [
              IconButton(onPressed: () {}, icon: Icon(Icons.person)),
              IconButton(onPressed: () {}, icon: Icon(Ionicons.fast_food)),
              IconButton(onPressed: () {}, icon: Icon(Ionicons.cash_outline)),
            ]),
            title: Text("IT Companies"),
          ),
          body: TabBarView(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.person,
                        ),
                        radius: 30,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "ALL",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "IMAGES",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.menu))
                    ],
                  ),
                ),
                Container(
                  height: 180,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2015/10/31/12/54/google-1015751_1280.png"))),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.photo_camera),
                                suffixIcon: Icon(Icons.search),
                                hintText: "What is in your mind ?",
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 30),
                                label: Text(""))),
                      ),
                    ),
                    Text("Google offered in : العربية"),
                  ],
                ),
              ],
            ),
            ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Container(
                  child: Image(
                      image: NetworkImage(
                          "https://us.123rf.com/450wm/rouslan/rouslan1902/rouslan190200016/131040531-moscow-russia-february-12-2019-big-mac-hamburger-menu-in-mcdonald.jpg?ver=6")),
                ),
                Row(
                  children: [
                    Icon(Icons.add),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      "McChicken™ ",
                      style: TextStyle(fontSize: 25, color: Colors.yellow),
                    )
                  ],
                ),
                Container(
                  child: Image(
                      image: NetworkImage(
                          "https://storage.eu.content-cdn.io/cdn-cgi/image/width=300,height=300,quality=75,format=auto,fit=cover,g=top/am-resources/3dc06f42-e909-43ba-9e47-a5782d07e34c/Images/ProductImages/Source/Festive%20Bucket.PNG")),
                ),
                Row(
                  children: [
                    Icon(Icons.add),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      "Grand Feast 21-Mix ",
                      style: TextStyle(fontSize: 25, color: Colors.yellow),
                    )
                  ],
                ),
                Divider(
                  height: 15,
                ),
                Container(
                  child: Image(
                      image: NetworkImage(
                          "https://stories.starbucks.com/uploads/2021/02/SBX20200225-SpringBeverages-FeatureHorizontal.jpg")),
                ),
                Row(
                  children: [
                    Icon(Icons.add),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      "Starbuks form 3.75 JOD ",
                      style: TextStyle(fontSize: 25, color: Colors.yellow),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                URLClass(
                  myfunction: Apple_function,
                  myplatformIcon: Ionicons.logo_apple,
                  myplatformSub: "IOS",
                  myplatformTitle: "Apple",
                ),
                URLClass(
                  myfunction: Microsoft_function,
                  myplatformIcon: Ionicons.logo_microsoft,
                  myplatformSub: "Widows",
                  myplatformTitle: "MicroSoft",
                ),
                URLClass(
                  myfunction: Amazon_function,
                  myplatformIcon: Ionicons.logo_amazon,
                  myplatformSub: "e-commercial",
                  myplatformTitle: "Amazon",
                ),
                URLClass(
                  myfunction: Google_function,
                  myplatformIcon: Ionicons.logo_google,
                  myplatformSub: "Search Engine",
                  myplatformTitle: "Google",
                ),
              ],
            ),
          ])),
    );
  }
}
