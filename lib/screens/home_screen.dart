import 'package:flutter/material.dart';
import 'chats_screen.dart';
import 'postad_screen.dart';
import 'account_screen.dart';
import 'myads_screen.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        bottomNavigationBar: menu(),
        body: TabBarView(
          children: [
            screen1(),
            chats_screen(),
            postad_screen(),
            myads_screen(),
            account_screen(),
          ],
        ),
      ),
    );
  }

  Widget menu() {
     return //Material(
    //     elevation: 10,
    //     child:
     Container(
          padding: const EdgeInsets.all(15.0),
          margin: const EdgeInsets.only(bottom: 20.0),
          color: Colors.white,
          child: const TabBar(
            labelStyle: TextStyle(fontSize: 9),
            labelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: Colors.grey,
            indicator: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 230, 236, 240),
            ),
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home_outlined,
                  size: 30,
                ),
                text: "HOME",
              ),
              Tab(
                icon: Icon(Icons.chat, size: 30),
                text: "CHATS",
              ),
              Tab(
                icon: Icon(Icons.photo_camera, size: 35, color: Colors.blue),
                text: "SELL",
              ),
              Tab(
                icon: Icon(Icons.favorite_border, size: 30),
                text: "MY ADS",
              ),
              Tab(
                icon: Icon(Icons.person, size: 28),
                text: "ACCOUNT",
              ),
            ],
          ),
        );
  }
}
screen1() {
    return Center(child: Text('Screen 1'),);
}