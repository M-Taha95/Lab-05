import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:mysearchapp/Models/URL.dart';
import 'package:mysearchapp/Screens/SocialMedia.dart';
import 'package:url_launcher/url_launcher.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 147, 192, 214),
          appBar: AppBar(
            actions: [
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Social_Media();
                      },
                    ));
                  },
                  icon: Icon(Icons.skip_next),
                  label: Text("Next"))
            ],
            bottom: TabBar(tabs: [
              IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
              IconButton(onPressed: () {}, icon: Icon(Ionicons.cafe)),
              IconButton(onPressed: () {}, icon: Icon(Ionicons.share_social)),
            ]),
            title: Text("Social media"),
          ),
          body: TabBarView(children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    trailing: Icon(Icons.add),
                    title:
                        Text("Nescafe 3In1 Coffee Mix 20G Sachet, 40 Pieces"),
                    subtitle: Text("AED 48.77"),
                    leading: Image(
                        image: NetworkImage(
                            "https://m.media-amazon.com/images/I/81lojChubvL._AC_SL1500_.jpg")),
                  ),
                  Divider(
                    height: 100,
                  ),
                  ListTile(
                    trailing: Icon(Icons.add),
                    title: Text(
                        "Alain Bottled Drinking Water Mega Offer Pack, 1.5 Litre (Pack Of 12)"),
                    subtitle: Text("AED 8.96"),
                    leading: Image(
                        image: NetworkImage(
                            "https://m.media-amazon.com/images/I/71jsvQfe3wL._AC_SL1200_.jpg")),
                  ),
                  Divider(
                    height: 100,
                  ),
                  ListTile(
                    trailing: Icon(Icons.add),
                    title: Text(
                        "Fine Facial Tissues-Classic Euphoria, 150 x 2 Ply, Pack of 5, 750 counts"),
                    subtitle: Text("AED 13.05"),
                    leading: Image(
                        image: NetworkImage(
                            "https://m.media-amazon.com/images/I/815E5H5ZhAL._AC_SL1500_.jpg")),
                  ),
                  Divider(
                    height: 100,
                  ),
                  ListTile(
                    trailing: Icon(Icons.add),
                    title: Text(
                        "Indomie Green Chilli Fried Noodles, 5 X 80 G (Pack Of 1)"),
                    subtitle: Text("AED 9.20"),
                    leading: Image(
                        image: NetworkImage(
                            "https://m.media-amazon.com/images/I/81NQxTez8vL._AC_SL1500_.jpg")),
                  ),
                  Divider(
                    height: 100,
                  ),
                  ListTile(
                    trailing: Icon(Icons.add),
                    title: Text(
                        "Nestle Kitkat Mini Moments Desserts Chocolate 255g"),
                    subtitle: Text("AED 29.00"),
                    leading: Image(
                        image: NetworkImage(
                            "https://m.media-amazon.com/images/I/81tuwv4xcYL._AC_SL1500_.jpg")),
                  ),
                  Divider(
                    height: 100,
                  ),
                  ListTile(
                    trailing: Icon(Icons.add),
                    title: Text(
                        "Doritos, Nacho Cheese Tortilla Chips, 21 grams x 12 pieces"),
                    subtitle: Text("AED 11.75"),
                    leading: Image(
                        image: NetworkImage(
                            "https://m.media-amazon.com/images/I/71+9d05zc0L._AC_SL1500_.jpg")),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    trailing: Icon(Icons.add),
                    subtitle: Text("AED 666.21"),
                    title: Text("De'Longhi Dedica Coffee Machine"),
                    leading: Image(
                        image: NetworkImage(
                            "https://m.media-amazon.com/images/I/61R2vN8pzhL._AC_SL1500_.jpg")),
                  ),
                  Divider(
                    height: 100,
                  ),
                  ListTile(
                    trailing: Icon(Icons.add),
                    subtitle: Text("AED 4,201.58"),
                    title: Text(
                        "De'Longhi Bean To Cup Coffee Machine Perfecta Evo"),
                    leading: Image(
                        image: NetworkImage(
                            "https://m.media-amazon.com/images/I/61oPRIysryL._AC_SL1200_.jpg")),
                  ),
                  Divider(
                    height: 100,
                  ),
                  ListTile(
                    trailing: Icon(Icons.add),
                    subtitle: Text("AED 424.99"),
                    title: Text("De'Longhi Nescafé Dolce Gusto Min"),
                    leading: Image(
                        image: NetworkImage(
                            "https://m.media-amazon.com/images/I/812UB0N-wpL._AC_SL1500_.jpg")),
                  ),
                  Divider(
                    height: 100,
                  ),
                  ListTile(
                    trailing: Icon(Icons.add),
                    subtitle: Text("AED 349.00"),
                    title: Text("IMONS Portable Esresso Machine,Self-heating"),
                    leading: Image(
                        image: NetworkImage(
                            "https://m.media-amazon.com/images/I/51bYMQljuAL._AC_SL1000_.jpg")),
                  ),
                  Divider(
                    height: 100,
                  ),
                  ListTile(
                    trailing: Icon(Icons.add),
                    subtitle: Text("AED 359.90"),
                    title:
                        Text("Coffee Machine Genio S Plus Coffee Machine Red"),
                    leading: Image(
                        image: NetworkImage(
                            "https://m.media-amazon.com/images/I/518uC6esd4L._AC_SL1080_.jpg")),
                  ),
                  Divider(
                    height: 100,
                  ),
                  ListTile(
                    trailing: Icon(Icons.add),
                    subtitle: Text("AED 189.00"),
                    title: Text(
                        "CRussell Hobbs Buckingham Coffee Maker Filter Coffee Machine"),
                    leading: Image(
                        image: NetworkImage(
                            "https://m.media-amazon.com/images/I/71Ji3MyPG0L._AC_SL1500_.jpg")),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                URLClass(
                  myfunction: Facebook_function,
                  myplatformIcon: Icons.facebook,
                  myplatformSub: "create a new account",
                  myplatformTitle: "Facebook",
                ),
                URLClass(
                  myfunction: LinkedIn_function,
                  myplatformIcon: Ionicons.logo_linkedin,
                  myplatformSub: "create a new account",
                  myplatformTitle: "LinkedIn",
                ),
                URLClass(
                  myfunction: Instagram_function,
                  myplatformIcon: Ionicons.logo_instagram,
                  myplatformSub: "create a new account",
                  myplatformTitle: "Instagram",
                ),
                URLClass(
                  myfunction: Snapchat_function,
                  myplatformIcon: Ionicons.logo_snapchat,
                  myplatformSub: "create a new account",
                  myplatformTitle: "Snapchat",
                ),
                URLClass(
                  myfunction: Whatsapp_function,
                  myplatformIcon: Ionicons.logo_whatsapp,
                  myplatformSub: "create a new account",
                  myplatformTitle: "Whatsapp",
                ),
              ],
            ),
          ])),
    );
  }
}
