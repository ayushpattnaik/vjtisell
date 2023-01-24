import 'package:flutter/material.dart';
import 'package:vjtisell/screens/home_screen.dart';
import 'package:vjtisell/database/database.dart';
import 'package:vjtisell/screens/login_screen.dart';
import 'package:vjtisell/screens/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'vjtisell',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const Home(),
        '/signup': (context) => const SignupPage(),
      },
    );
  }
}
