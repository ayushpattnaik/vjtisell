import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vjtisell/providers/user_provider.dart';
import 'package:vjtisell/screens/account_screen.dart';
import 'package:vjtisell/screens/chats_screen.dart';
import 'package:vjtisell/screens/myads_screen.dart';
import 'package:vjtisell/screens/postad_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
        body: Center(
      child: Text(
        user.toJson(),
      ),
    ));
    // return DefaultTabController(
    //   length: 5,
    //   child: Scaffold(
    //     bottomNavigationBar: menu(),
    //     body: TabBarView(
    //       children: [
    //         screen1(),
    //         chats_screen(),
    //         postad_screen(),
    //         myads_screen(),
    //         account_screen(),
    //         Container(
    //           child: Text(
    //             user.toJson(),
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }

//   Widget menu() {
//     return //Material(
//         //     elevation: 10,
//         //     child:
//         Container(
//       padding: const EdgeInsets.all(5.0),
//       // margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
//       color: Colors.white,
//       child: const TabBar(
//         labelStyle: TextStyle(fontSize: 9),
//         labelColor: Colors.blue,
//         indicatorSize: TabBarIndicatorSize.tab,
//         unselectedLabelColor: Colors.grey,
//         indicator: BoxDecoration(
//           shape: BoxShape.circle,
//           color: Color.fromARGB(255, 230, 236, 240),
//         ),
//         tabs: [
//           Tab(
//             icon: Icon(
//               Icons.home_outlined,
//               size: 30,
//             ),
//             // text: "HOME",
//           ),
//           Tab(
//             icon: Icon(Icons.chat, size: 30),
//             // text: "CHATS",
//           ),
//           Tab(
//             icon: Icon(Icons.photo_camera, size: 35, color: Colors.blue),
//             // text: "SELL",
//           ),
//           Tab(
//             icon: Icon(Icons.favorite_border, size: 30),
//             // text: "MY ADS",
//           ),
//           Tab(
//             icon: Icon(Icons.person, size: 28),
//             // text: "ACCOUNT",
//           ),
//         ],
//       ),
//     );
//   }
// }

// screen1() {
//   return Center(
//     child: Text('Screen 1'),
//   );
// }
}
