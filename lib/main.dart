import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vjtisell/features/auth/screens/auth_screen_login.dart';
import 'package:vjtisell/features/auth/screens/auth_screen_signon.dart';
import 'package:vjtisell/features/auth/services/auth_service.dart';
import 'package:vjtisell/features/home/screens/home_screen.dart';
import 'package:vjtisell/providers/user_provider.dart';
import 'package:vjtisell/router.dart';
import 'package:vjtisell/screens/home_screen.dart';
import 'package:vjtisell/database/database.dart';
import 'package:vjtisell/screens/login_screen.dart';
import 'package:vjtisell/screens/signup_screen.dart';

void main() async {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    ), // ChangeNotifier Provider
  ], child: const MyApp())); // MultiProvider
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();
  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'vjtisell',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => generateRoute(settings),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const LoginPage(),
      //   '/home': (context) => const Home(),
      //   '/signup': (context) => const SignupPage(),
      // },
      home: Provider.of<UserProvider>(context).user.token.isNotEmpty
          ? const HomeScreen()
          : const AuthScreenLogin(),
    );
  }
}
