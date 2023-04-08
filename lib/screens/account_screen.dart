import 'package:flutter/material.dart';

class account_screen extends StatelessWidget {
  const account_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 200),
      child: MaterialButton(
          minWidth: double.infinity,
          height: 60,
          onPressed: () {
            Navigator.pop(context);
          },
          color: const Color.fromARGB(255, 82, 174, 255),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          child: const Text('Log Out')),
    );
  }
}
