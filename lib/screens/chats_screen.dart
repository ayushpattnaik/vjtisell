import 'package:flutter/material.dart';

// only buyer can initiate a chat
// based on the buyer and seller, we make a room
// room[object_id][buyer_id][seller_id]


class chats_screen extends StatefulWidget {
  const chats_screen({ Key? key }) : super(key: key);
  @override
  _chats_screen_state createState() => _chats_screen_state();
}

class  _chats_screen_state extends State<chats_screen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Screen 2'),);
  }
}
