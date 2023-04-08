import 'package:flutter/material.dart';
import 'package:vjtisell/common/widgets/custom_button.dart';
import 'package:vjtisell/common/widgets/custom_textfield.dart';
import 'package:vjtisell/constants/global_variables.dart';
import 'package:vjtisell/features/auth/screens/auth_screen_signon.dart';
import 'package:vjtisell/features/auth/services/auth_service.dart';

class AuthScreenLogin extends StatefulWidget {
  static const String routeName = '/auth-screen-login';
  const AuthScreenLogin({super.key});

  @override
  State<AuthScreenLogin> createState() => _AuthScreenLoginState();
}

class _AuthScreenLoginState extends State<AuthScreenLogin> {
  final _signInFormKey = GlobalKey<FormState>();
  final AuthService authService = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void signInUser() {
    authService.signInUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   leading:
      //   IconButton( onPressed: (){
      //     Navigator.pop(context);
      //   },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
      // ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Column(
                  children: [
                    const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Welcome back ! Login with your credentials",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: GlobalVariables.backgroundColor,
                  child: Form(
                    key: _signInFormKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          controller: _emailController,
                          hintText: 'Email',
                        ),
                        const SizedBox(height: 10),
                        CustomTextField(
                          controller: _passwordController,
                          hintText: 'Password',
                        ),
                        const SizedBox(height: 10),
                        CustomButton(
                          text: 'Login',
                          onTap: () {
                            if (_signInFormKey.currentState!.validate()) {
                              signInUser();
                            }
                          },
                        )
                      ],
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 40),
                //   // child: Container(
                //   //   padding: EdgeInsets.only(top: 3,left: 3),
                //   //   decoration: BoxDecoration(
                //   //       borderRadius: BorderRadius.circular(40),
                //   //       border: Border(
                //   //           bottom: BorderSide(color: Colors.black),
                //   //           top: BorderSide(color: Colors.black),
                //   //           right: BorderSide(color: Colors.black),
                //   //           left: BorderSide(color: Colors.black)
                //   //       )
                //   //   ),
                //   child: MaterialButton(
                //     minWidth: double.infinity,
                //     height: 60,
                //     onPressed: () {
                //       Navigator.pushNamed(context, '/home');
                //     },
                //     color: const Color.fromARGB(255, 82, 174, 255),
                //     shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(40)),
                //     child: const Text(
                //       "Login",
                //       style: TextStyle(
                //           fontWeight: FontWeight.w600,
                //           fontSize: 16,
                //           color: Colors.white),
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Dont have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, AuthScreenSignon.routeName);
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
